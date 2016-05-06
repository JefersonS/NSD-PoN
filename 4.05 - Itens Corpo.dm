mob
	verb
		CorpoItensa()
			if(corpoitens == 0)
				winset(src,"inventario.botaoc","command =")
				winset(src,"inventario.fundoic","is-visible = true")
				var/cont = 204
				while(cont <= 880)
					winset(src,"inventario","size = [cont]x370")
					cont += 56
					sleep(1)
				winset(src,"inventario","size = 900x370")

				cont = 370
				while(cont <= 650 )
					winset(src,"inventario","size = 900x[cont]")
					cont += 56
					sleep(1)
				corpoitens = 1
				winset(src,"inventario","alpha = 255")
				winset(src,"inventario.botaoc","command =CorpoItensa")
				return

			if(corpoitens == 1)
				winset(src,"inventario.botaoc","command =")
				var/cont = 650
				while(cont>=370)
					winset(src,"inventario","size = 900x[cont]")
					cont -= 56
					sleep(1)

				cont = 936
				while(cont>=204)
					cont -= 56
					winset(src,"inventario","size = [cont]x370")
					sleep(1)
				winset(src,"inventario","size = 204x370")

				corpoitens = 0
				winset(src,"inventario.fundoic","is-visible = false")
				winset(src,"inventario","alpha = 170")
				corpoitens = 0
				winset(src,"inventario.botaoc","command =CorpoItensa")
				return

//--------------------- Equipamentos Corpo

var
	descricao1 = ""
	descricao2 = ""
	descricao3 = ""
	descricao4 = ""
	descricao5 = ""
	descricao6 = ""
	descricao7 = ""
	descricao8 = ""
	descricao9 = ""
	descricao10 = ""


var/obj/icones/testa/Te = new/obj/icones/testa
var/obj/icones/rosto/Ro = new/obj/icones/rosto
var/obj/icones/ombro/Om = new/obj/icones/ombro
var/obj/icones/peito/Po = new/obj/icones/peito
var/obj/icones/costas/Co = new/obj/icones/costas
var/obj/icones/pulsos/Pu = new/obj/icones/pulsos
var/obj/icones/maoe/Me = new/obj/icones/maoe
var/obj/icones/maod/Md = new/obj/icones/maod
var/obj/icones/pernas/Pe = new/obj/icones/pernas
var/obj/icones/pes/Ps = new/obj/icones/pes

var/obj/itens/roupas/testa/Testa = new/obj/itens/roupas/testa
var/obj/itens/roupas/rosto/Rosto = new/obj/itens/roupas/rosto
var/obj/itens/roupas/ombro/Ombro = new/obj/itens/roupas/ombro
var/obj/itens/roupas/peito/Peito = new/obj/itens/roupas/peito
var/obj/itens/roupas/costas/Costas = new/obj/itens/roupas/costas
var/obj/itens/roupas/pulsos/Pulsos = new/obj/itens/roupas/pulsos
var/obj/itens/armas/Maoe = new/obj/itens/armas
var/obj/itens/armas/Maod = new/obj/itens/armas
var/obj/itens/roupas/pernas/Pernas = new/obj/itens/roupas/pernas
var/obj/itens/roupas/pes/Pes = new/obj/itens/roupas/pes


mob
	proc/Atualiza()
		var/i = 1
		for(var/obj/itens/roupas/O in src)
			winset(src, "inventario.inventario", "current-cell=[i]")
			src << output(O, "inventario.inventario")
			usr << "A"
			winset(src, "inventario.inventario", "cells=[i]")
			i++

obj/itens/roupas
	MouseDrag()
		if(src in usr.contents)
			var/icon/I = new(src.icon,src.icon_state)
			mouse_drag_pointer = I

	MouseDrop(src_location)
		if(istype(src_location,Te))
			if(istype(src,Testa))
				Vestir()
				descricao1 = src.desc

		if(istype(src_location,Ro))
			if(istype(src,Rosto))
				Vestir()
				descricao2 = src.desc

		if(istype(src_location,Om))
			if(istype(src,Ombro))
				Vestir()
				descricao3 = src.desc

		if(istype(src_location,Po))
			if(istype(src,Peito))
				Vestir()
				descricao4 = src.desc

		if(istype(src_location,Co))
			if(istype(src,Costas))
				Vestir()
				descricao5 = src.desc

		if(istype(src_location,Pu))
			if(istype(src,Pulsos))
				Vestir()
				descricao6 = src.desc

		if(istype(src_location,Me))
			if(istype(src,Maoe))
				Vestir()
				descricao7 = src.desc

		if(istype(src_location,Md))
			if(istype(src,Maod))
				Vestir()
				descricao8 = src.desc

		if(istype(src_location,Pe))
			if(istype(src,Pernas))
				Vestir()
				descricao9 = src.desc

		if(istype(src_location,Ps))
			if(istype(src,Pes))
				Vestir()
				descricao10 = src.desc

obj
	icones
		testa
			icon = 'Imagens/Itenscorpo/testa.dmi'
		rosto
			icon = 'Imagens/Itenscorpo/rosto.dmi'
		ombro
			icon = 'Imagens/Itenscorpo/ombro.dmi'
		peito
			icon = 'Imagens/Itenscorpo/peito.dmi'
		costas
			icon = 'Imagens/Itenscorpo/costas.dmi'
		pulsos
			icon = 'Imagens/Itenscorpo/pulsos.dmi'
		maoe
			icon = 'Imagens/Itenscorpo/maoe.dmi'
		maod
			icon = 'Imagens/Itenscorpo/maod.dmi'
		pernas
			icon = 'Imagens/Itenscorpo/perna.dmi'
		pes
			icon = 'Imagens/Itenscorpo/pe.dmi'



mob
	var/list/equip

mob/proc/Corpo()

	var/obj/icones/testa/Te = new/obj/icones/testa
	var/obj/icones/rosto/Ro = new/obj/icones/rosto
	var/obj/icones/ombro/Om = new/obj/icones/ombro
	var/obj/icones/peito/Po = new/obj/icones/peito
	var/obj/icones/costas/Co = new/obj/icones/costas
	var/obj/icones/pulsos/Pu = new/obj/icones/pulsos
	var/obj/icones/maoe/Me = new/obj/icones/maoe
	var/obj/icones/maod/Md = new/obj/icones/maod
	var/obj/icones/pernas/Pe = new/obj/icones/pernas
	var/obj/icones/pes/Ps = new/obj/icones/pes

	Te.loc = usr
	Ro.loc = usr
	Om.loc = usr
	Po.loc = usr
	Co.loc = usr
	Pu.loc = usr
	Me.loc = usr
	Md.loc = usr
	Pe.loc = usr
	Ps.loc = usr

	for(var/obj/icones/testa/O in src)
		if(equip)
			continue
		winset(src, "inventario.testa", "current-cell=[1]")
		src << output(O, "inventario.testa")
		winset(src, "inventario.testa", "cells=[1]")

	for(var/obj/icones/rosto/O in src)
		if(equip)
			continue
		winset(src, "inventario.rosto", "current-cell=[1]")
		src << output(O, "inventario.rosto")
		winset(src, "inventario.rosto", "cells=[1]")

	for(var/obj/icones/ombro/O in src)
		if(equip)
			continue
		winset(src, "inventario.ombro", "current-cell=[1]")
		src << output(O, "inventario.ombro")
		winset(src, "inventario.ombro", "cells=[1]")

	for(var/obj/icones/peito/O in src)
		if(equip)
			continue
		winset(src, "inventario.peito", "current-cell=[1]")
		src << output(O, "inventario.peito")
		winset(src, "inventario.peito", "cells=[1]")

	for(var/obj/icones/pulsos/O in src)
		if(equip)
			continue
		winset(src, "inventario.pulsos", "current-cell=[1]")
		src << output(O, "inventario.pulsos")
		winset(src, "inventario.pulsos", "cells=[1]")

	for(var/obj/icones/costas/O in src)
		if(equip)
			continue
		winset(src, "inventario.costas", "current-cell=[1]")
		src << output(O, "inventario.costas")
		winset(src, "inventario.costas", "cells=[1]")

	for(var/obj/icones/maod/O in src)
		if(equip)
			continue
		winset(src, "inventario.maod", "current-cell=[1]")
		src << output(O, "inventario.maod")
		winset(src, "inventario.maod", "cells=[1]")

	for(var/obj/icones/maoe/O in src)
		if(equip)
			continue
		winset(src, "inventario.maoe", "current-cell=[1]")
		src << output(O, "inventario.maoe")
		winset(src, "inventario.maoe", "cells=[1]")

	for(var/obj/icones/pernas/O in src)
		if(equip)
			continue
		winset(src, "inventario.perna", "current-cell=[1]")
		src << output(O, "inventario.perna")
		winset(src, "inventario.perna", "cells=[1]")

	for(var/obj/icones/pes/O in src)
		if(equip)
			continue
		winset(src, "inventario.pes", "current-cell=[1]")
		src << output(O, "inventario.pes")
		winset(src, "inventario.pes", "cells=[1]")



mob
	verb
		Dtesta()
			winset(src,"inventario.labeld","text = \"[descricao1]\"")

		Drosto()
			winset(src,"inventario.labeld","text = \"[descricao2]\"")

		Dombro()
			winset(src,"inventario.labeld","text = \"[descricao3]\"")

		Dpeito()
			winset(src,"inventario.labeld","text = \"[descricao4]\"")

		Dcostas()
			winset(src,"inventario.labeld","text = \"[descricao5]\"")

		Dpulsos()
			winset(src,"inventario.labeld","text = \"[descricao6]\"")

		Dmaoe()
			winset(src,"inventario.labeld","text = \"[descricao7]\"")

		Dmaod()
			winset(src,"inventario.labeld","text = \"[descricao8]\"")

		Dperna()
			winset(src,"inventario.labeld","text = \"[descricao9]\"")

		Dpe()
			winset(src,"inventario.labeld","text = \"[descricao10]\"")