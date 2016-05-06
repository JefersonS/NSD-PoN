mob
	var/list/arma

mob/proc/AtualizarArmas()

  var/armas = 0
  for(var/obj/armas/O in src)
    if(arma)
      continue
    winset(src, "bolsae.gridbolsae", "current-cell=[++armas]")
    src << output(O, "bolsae.gridbolsae")
  winset(src, "bolsae.gridbolsae", "cells=[armas]")


obj
	itens
		bolsa
			name = "Bolsa"
			icon = 'Icons/Outros/equipe itens.dmi'
			verb
				AbrirBolsa()
					winset(usr,"bolsae","is-visible = true")

mob
	verb
		Fecharbolsa()
			winset(src,"bolsae","is-visible = false")

obj
	armas
		var
			valor
		kunai
			icon='Icons/Armas/Kunai.dmi'
			icon_state=""
		layer = FLOAT_LAYER-1
		valor = "Clicar kunai"

		verb/Clicar()
			var/obj/armas/kunai/D = new /obj/armas/kunai(get_step(usr,usr.dir))
			D.loc=usr.loc
			D.dir=usr.dir
			//D.dono = usr
			walk(D,usr.dir)

		MouseDrag()
			if(src in usr.contents)
				var/icon/I = new(src.icon,src.icon_state)
				mouse_drag_pointer = I

		MouseDrop(over_object)
			if(istype(over_object,/obj/macros))
				var/obj/macros/s
				s=over_object
				s.overlays = null
				s.overlays += /obj/armas/kunai
				var/a=s.hotkey
				var/comando=src.valor
				winset(usr,"h[a]","command=\"[comando]\"")