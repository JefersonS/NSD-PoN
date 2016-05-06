obj/itens/roupas
	var
		equipado
		srcType

	verb
		Pegar()
			set src in oview(1)
			if(src in oview(1))
				loc = usr
				//usr.AtualizarInventario()
				usr.Atualiza()
				usr.AtualizarArmas()

		Soltar()
			set src in usr
			if(src in usr)
				loc = usr.loc
				usr.Atualiza()
				usr.AtualizarArmas()

		Vestir()
			// Toda vez que a roupa for vestida ou removida, ele checa da onde essa roupa veio (peito, ombro, perna, etc) para remover também da tela do corpo.
			var/textFound = 0
			var/count = 0
			srcType = "[src.type]"
			var/barraFinal = 4
			var/text
			do
				textFound = findtextEx(srcType, "/", textFound+1, length(srcType))
				count ++
				if(count == barraFinal)
					var/incicio = textFound + 1
					var/fim = findtextEx(srcType, "/", textFound+1, length(srcType))
					text = copytext(srcType, incicio, fim)
			while(textFound != 0)

			//itens corpo
			if(equipado == 1)
				for(var/obj/icones/I in usr)
					if(istype(I,text2path("/obj/icones/"+text)))
						I.overlays = null
			else
				for(var/obj/icones/I in usr)
					if(istype(I,text2path("/obj/icones/"+text)))
						I.overlays += src

			//overlays
			if(equipado==1)
				usr.overlays -= src.icon
				equipado=0
			else
				usr.overlays += src.icon
				equipado=1

drag
obj/itens/roupas/testa
	Bandanas
		Bandananormal
			name = "Bandana"
			desc = "Bandana Normal"
			icon = 'Icons/Roupas/Testa/Bandana.dmi'
			icon_state = ""

obj/itens/roupas/rosto
	Mascaras
		Mascarakakashi
			name = "Máscara Kakashi"
			desc = "Máscara do Kakashi"
			icon = 'Icons/Roupas/Rosto/Mascara kakashi.dmi'
			icon_state = ""

obj/itens/roupas/ombro

obj/itens/roupas/peito
	Camisas
		Camisanormal
			name = "Camisa"
			desc = "Camisa Normal"
			icon = 'Icons/Roupas/Peito/Camisa.dmi'
			icon_state = ""
		Camisacomgola
			name = "Camisa com gola"
			desc = "Camisa com gola"
			icon = 'Icons/Roupas/Peito/Camisa com gola.dmi'
			icon_state = ""
		Camisamangalonga
			name = "Camisa manga longa"
			desc = "Camisa com manga longa"
			icon = 'Icons/Roupas/Peito/camisa manga longa.dmi'
			icon_state = ""
		Camisalongacomgola
			name = "Camisa longa e gola"
			desc = "Camisa manga longa com gola"
			icon = 'Icons/Roupas/Peito/camisa manga longa com gola.dmi'
			icon_state = ""
		Camisalonga
			name = "Camisa longa"
			desc = "Camisa longa"
			icon = 'Icons/Roupas/Peito/camisa longa.dmi'
			icon_state = ""
		Camisaregata
			name = "Camisa regata"
			desc = "Camisa regata"
			icon = 'Icons/Roupas/Peito/camisa regata.dmi'
			icon_state = ""
		Camisaregataaberta
			name = "Camisa aberta"
			desc = "Camsia regata aberta"
			icon = 'Icons/Roupas/Peito/camisa regata aberta.dmi'
			icon_state = ""

obj/itens/roupas/costas
	Coletes
		Coletechuuninkonoha
			name = "Colete Chuunin"
			desc = "Colete Chuunin de Konoha"
			icon = 'Icons/Roupas/Costas/colete chuunin konoha.dmi'
			icon_state = ""
		Coletechuuninkumo
			name = "Colete Chuunin"
			desc = "Colete Chuunin de Kumo"
			icon = 'Icons/Roupas/Costas/colete chuunin kumo.dmi'
			icon_state = ""
		Coletechuuniniwa
			name = "Colete Chuunin"
			desc = "Colete Chuunin de Iwa"
			icon = 'Icons/Roupas/Costas/colete chuunin iwa.dmi'
			icon_state = ""
		Coletechuuninkiri
			name = "Colete Chuunin"
			desc = "Colete Chuunin de Kiri"
			icon = 'Icons/Roupas/Costas/colete chuunin kiri.dmi'
			icon_state = ""
		Coletechuuninsuna
			name = "Colete Chuunin"
			desc = "Colete Chuunin de Suna"
			icon = 'Icons/Roupas/Costas/colete chuunin suna.dmi'
			icon_state = ""
	Capas
		Capacustom
			name = "Capa"
			desc = "Capa Normal"
			icon = 'Icons/Roupas/Costas/capa-custom.dmi'
			icon_state = ""
	Jaquetas
		Jaquetacurta
			name = "Jaqueta curta"
			desc = "Jaqueta curta"
			icon = 'Icons/Roupas/Costas/jacketa curta.dmi'
			icon_state = ""

obj/itens/roupas/pulsos
	Luva
		name = "Luva"
		desc = "Luva Normal"
		icon = 'Icons/Roupas/Pulsos/luva.dmi'
	Munhequeira
		name = "Munhequeira"
		desc = "Munhequeira Normal"
		icon = 'Icons/Roupas/Pulsos/munhequeira custom.dmi'
		icon_state = ""

obj/itens/roupas/pernas
	Calca
		name = "Calça"
		desc = "Calça Normal"
		icon = 'Icons/Roupas/Pernas/Calça.dmi'
		icon_state = ""

obj/itens/roupas/pes
	Botas
		Botanormal
			name = "Bota"
			desc = "Bota normal"
			icon = 'Icons/Roupas/Pes/bota-custom.dmi'
			icon_state = ""
		Botamist
			name = "Bota"
			desc = "Bota de Kiri"
			icon = 'Icons/Roupas/Pes/bota mist.dmi'
			icon_state = ""
	Sandalias
		Sandalianormal
			name = "Sandalia"
			desc = "Sandalia normal"
			icon = 'Icons/Roupas/Pes/sandalia custom.dmi'
			icon_state = ""





obj/itens/armas
	verb
		Pegar()
			set src in oview(1)
			if(src in oview(1))
				loc = usr
				//usr.AtualizarInventario()
				usr.AtualizarArmas()

		Soltar()
			set src in usr
			if(src in usr)
				loc = usr.loc
				//usr.AtualizarInventario()
				usr.AtualizarArmas()




obj/itens/armas
	Bombas
		Bombaexplosiva
			name = "Bomba"
			desc = "Bomba que explode x)"
			icon = 'Icons/Armas/Bomba explosiva.dmi'
			icon_state = ""
		Bombaespinhos
			name = "Bomba de Espinhos"
			desc = "Bomba que atira espinhos em todas as direções."
			icon = 'Icons/Armas/Bomba espinhos.dmi'
			icon_state = ""
	Kunais
		Kunainormal
			name = "Kunai"
			desc = "Kunai normal"
			icon = 'Icons/Armas/Kunai.dmi'
			icon_state = ""
		Kunaicurvada
			name = "Kunai Curvada"
			desc = "Kunai com uma curva ^^"
			icon = 'Icons/Armas/Kunai curvada.dmi'
			icon_state = ""
		Trikunai
			name = "Trikunai"
			desc = "Kunai de três pontas."
			icon = 'Icons/Armas/Trikunai.dmi'
			icon_state = ""
	Shurikens
		Shuriken
			name = "Shuriken"
			desc = "Shuriken"
			icon = 'Icons/Armas/Shuriken.dmi'
			icon_state = ""
		Fuumashuriken
			name = "Fuuma Shuriken"
			desc = "Fuuma Shuriken"
			icon = 'Icons/Armas/fuuma shuriken.dmi'
			icon_state = ""
	Tarjas
		Seloexplosivo
			name = "Selo Explosivo"
			desc = "Coloque-o em algum lugar e após algum tempo ele explodirá"
			icon = 'Icons/armas/selo explosivo.dmi'
			icon_state = ""




obj/itens/objetos
	verb
		Pegar()
			set src in oview(1)
			if(src in oview(1))
				loc = usr
				//usr.AtualizarInventario()
				usr.AtualizarArmas()

		Soltar()
			set src in usr
			if(src in usr)
				loc = usr.loc
				//usr.AtualizarInventario()
				usr.AtualizarArmas()



obj/itens/objetos
	Veneno
		name = "Veneno"
		desc = "Veneno"
		icon = 'Icons/Outros/icons iten.dmi'
		icon_state = "veneno"
	Lamen
		name = "Lamen"
		desc = "Lamen"
		icon = 'Icons/Outros/icons iten.dmi'
		icon_state = "Lamen"
	Dinheiro
		name = "Dinheiro"
		desc = "Dinheiro"
		icon = 'Icons/Outros/icons iten.dmi'
		icon_state = "Grana"


















/*obj
	itens
		armas
			Click(inventario,inventario)
				if(usr.equipado==1)
							usr.equipado=0
				else
							usr<<"Você equipou a kunai!"
							usr.equipado=1

			Kunai
				icon='Icons/Armas/Kunai.dmi'
				icon_state=""
				verb
					Equipar()
						if(usr.equipado==1)
							usr.equipado=0
						else
							usr<<"Você equipou a kunai!"
							usr.equipado=1

					Tirar()
						if(usr.equipoukunai==1)
							usr.equipoukunai=0
						else
							usr<<"Você equipou a kunai!"
							src.suffix = "Equipado"
							usr.equipoukunai=1




		DblClick()
			set category=null
			if(usr.equipoukunai==1)
				usr.equipoukunai=0
				src.suffix = ""
				for(var/obj/Itens/Kunai/W in usr.contents)
					del(W)
				goto lol
			else
				goto lol
			lol
				if(usr.KunaiEnvenenada)
					var/obj/KunaiEnvenenada/D = new /obj/KunaiEnvenenada(get_step(usr,usr.dir))
					D.loc=usr.loc
					D.dir=usr.dir
					D.dono = usr
					usr.KunaiEnvenenada-=1
					walk(D,usr.dir)
					sleep(30)
					del(D)
				if(usr.KunaiSelo)
					var/obj/KunaiSelo/D = new /obj/KunaiSelo(get_step(usr,usr.dir))
					D.loc=usr.loc
					D.dir=usr.dir
					D.dono = usr
					usr.KunaiSelo-=1
					walk(D,usr.dir)
					sleep(30)
					del(D)
				else
					var/obj/Kunai/D = new /obj/Kunai(get_step(usr,usr.dir))
					D.loc=usr.loc
					D.dir=usr.dir
					D.dono = usr
					walk(D,usr.dir)
					sleep(30)
					del(D)
	Shuriken
		icon='Icons/Armas/Shuriken.dmi'
		icon_state=""
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	/*	DblClick()
			set category=null
			var/obj/Shuriken/D = new /obj/Shuriken(get_step(usr,usr.dir))
			D.loc=usr.loc
			D.dir=usr.dir
			D.dono = usr
			walk(D,usr.dir)
			sleep(30)
			del(D) */
	Senbon
		icon='Icons/Armas/Senbon.dmi'
		icon_state=""
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
/*		DblClick()
			set category=null
			var/obj/Senbon/D = new /obj/Senbon(get_step(usr,usr.dir))
			D.loc=usr.loc
			D.dir=usr.dir
			D.dono = usr
			walk(D,usr.dir)
			sleep(30)
			del(D) */
	KunaiCurvada
		icon='Icons/Armas/Kunai Curvada.dmi'
		icon_state=""
		Click()
			if(usr.equipoukunai==1)
				usr.equipoukunai=0
				src.suffix = ""
			else
				usr<<"Você equipou a kunai!"
				src.suffix = "Equipado"
				usr.equipoukunai=1
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	/*	DblClick()
			set category=null
			var/obj/KunaiCurvada/D = new /obj/KunaiCurvada(get_step(usr,usr.dir))
			D.loc=usr.loc
			D.dir=usr.dir
			D.dono = usr
			walk(D,usr.dir)
			sleep(30)
			del(D) */
	TriKunai
		icon='Icons/Armas/Trikunai.dmi'
		icon_state=""
		Click()
			if(usr.equipoukunai==1)
				usr.equipoukunai=0
				src.suffix = ""
			else
				usr<<"Você equipou a kunai!"
				src.suffix = "Equipado"
				usr.equipoukunai=1
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
		DblClick()
			set category=null
			var/obj/Trikunai/D = new /obj/Trikunai(get_step(usr,usr.dir))
			D.loc=usr.loc
			D.dir=usr.dir
			D.dono = usr
			walk(D,usr.dir)
			sleep(30)
			del(D)
	Foice
		icon='Icons/Armas/Foice.dmi'
		icon_state=""
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
		DblClick()
			set category=null
			var/obj/Foice/D = new /obj/Foice(get_step(usr,usr.dir))
			D.loc=usr.loc
			D.dir=usr.dir
			D.dono = usr
			walk(D,usr.dir)
			sleep(30)
			del(D)
	Garfo
		icon='Icons/Armas/Garfo.dmi'
		icon_state=""
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
		DblClick()
			set category=null
			var/obj/Garfo/D = new /obj/Garfo(get_step(usr,usr.dir))
			D.loc=usr.loc
			D.dir=usr.dir
			D.dono = usr
			walk(D,usr.dir)
			sleep(30)
			del(D)
	FuumaShuriken
		icon='Icons/Armas/fuuma shuriken.dmi'
		icon_state=""
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
		DblClick()
			set category=null
			var/obj/FuumaShuriken/D = new /obj/FuumaShuriken(get_step(usr,usr.dir))
			D.loc=usr.loc
			D.dir=usr.dir
			D.dono = usr
			walk(D,usr.dir)
			sleep(30)
			del(D)
	Espada
		name="Katana"
		icon='Icons/Armas/Katana.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.equipouespada=0
				usr.overlays -= 'Icons/Armas/Katana.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.equipouespada=1
				usr.bonusespada=50
				usr.overlays += 'Icons/Armas/Katana.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a Katana!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	Chicote
		name="Chicote de Ossos"
		icon='Jutsus/Kaguya/chicote ossos.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.equipouespada=0
				usr.overlays -= 'Jutsus/Kaguya/chicote ossos.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.equipouespada=1
				usr.bonusespada=50
				usr.overlays += 'Jutsus/Kaguya/chicote ossos.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou o chicote de Ossos!"
	KatanaKumo
		name="Katana de Kumo"
		icon='Icons/Armas/katana- omoi.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.equipouespada=0
				usr.overlays -= 'Icons/Armas/katana- omoi.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.equipouespada=1
				usr.bonusespada=50
				usr.overlays += 'Icons/Armas/katana- omoi.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a Katana!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	KatanaKumogakure
		name="Katana de Kumogakure"
		icon='Icons/Armas/Kumogakure Katana.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.equipouespada=0
				usr.overlays -= 'Icons/Armas/Kumogakure Katana.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.equipouespada=1
				usr.bonusespada=50
				usr.overlays += 'Icons/Armas/Kumogakure Katana.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a Katana!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	Garra
		name="Garra"
		icon='Icons/Armas/Garra.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Icons/Armas/Garra.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.equipouespada=1
				usr.bonusespada=50
				usr.overlays += 'Icons/Armas/Garra.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a Garra!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	Samehada
		name="Samehada"
		icon='Icons/Armas/sameada.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Icons/Armas/sameada.dmi'
				src.suffix = ""
				usr.equipouespada=0
			else
				src:equipado = 1
				usr.equipouespada=1
				usr.bonusespada=50
				usr.overlays += 'Icons/Armas/sameada.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a Samehada!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	Kubikirihoucho
		name="Kubikiri Houcho"
		icon='Icons/Armas/kubikiri houcho.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Icons/Armas/kubikiri houcho.dmi'
				src.suffix = ""
				usr.equipouespada=0
			else
				src:equipado = 1
				usr.equipouespada=1
				usr.bonusespada=50
				usr.overlays += 'Icons/Armas/kubikiri houcho.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a Kubikiri Houcho!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	BastaoHokage
		name="Bastão do Sandaime"
		icon='Icons/Armas/bastão sandaime.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Icons/Armas/bastão sandaime.dmi'
				src.suffix = ""
				usr.equipouespada=0
			else
				src:equipado = 1
				usr.equipouespada=1
				usr.bonusespada=30
				usr.overlays += 'Icons/Armas/bastão sandaime.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou o Bastão do sandaime!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	BandanaSandaime
		name="Bandana do Sandaime"
		icon='Icons/roupas/bandanas/bandana 3 hokage.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou o Bastão do sandaime!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	Bandana
		icon='Icons/Roupas/Bandana.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Icons/Roupas/Bandana.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana preta.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana branca.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana vermelha.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana marrom.dmi'
				usr.overlays -= 'Icons/Roupas/Mascaras/Bandana estilo kakashi.dmi'
				usr.overlays -= 'Icons/Roupas/Mascaras/Bandana estlilo Yamato.dmi'
				usr.overlays -= 'Icons/Roupas/Mascaras/Bandana estilo zabuza.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana estilo kakashi branca.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana estlilo Yamato branca.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana estilo zabuza branca.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana estilo kakashi Preta.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana estlilo Yamato Preta.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana estilo zabuza Preta.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana estilo kakashi Vermelha.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana estlilo Yamato Vermelha.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana estilo zabuza Vermelha.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana estilo kakashi Marrom.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana estlilo Yamato Marrom.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana estilo zabuza Marrom.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana estilo lee vermelha.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana estilo lee branca.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana estilo lee marrom.dmi'
				usr.overlays -= 'Icons/Roupas/Bandanas/Bandana estilo lee preta.dmi'
				usr.overlays -= 'Icons/Roupas/bandanas/Bandana estilo lee.dmi'
				src.suffix = ""
			else
				switch(input("Que cor você quer equipar?")in list("Branca","Marrom","Preta","Vermelha","Azul"))
					if("Vermelha")
						usr.cordabandana=1
					if("Branca")
						usr.cordabandana=2
					if("Marrom")
						usr.cordabandana=3
					if("Preta")
						usr.cordabandana=4
					if("Azul")
						usr.cordabandana=5
				switch(input("Em que estilo você quer equipar?")in list("Normal","Kakashi","Yamato","Zabuza","Rock Lee"))
					if("Normal")
						if(usr.cordabandana==5)
							usr.overlays += 'Icons/Roupas/Bandana.dmi'
						if(usr.cordabandana==1)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana vermelha.dmi'
						if(usr.cordabandana==2)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana branca.dmi'
						if(usr.cordabandana==3)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana marrom.dmi'
						if(usr.cordabandana==4)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana preta.dmi'
						src:equipado = 1
						src.suffix = "Equipado"
						usr<<"Você equipou a bandana!"
					if("Kakashi")
						if(usr.cordabandana==1)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana estilo kakashi vermelha.dmi'
						if(usr.cordabandana==2)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana estilo kakashi branca.dmi'
						if(usr.cordabandana==3)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana estilo kakashi marrom.dmi'
						if(usr.cordabandana==4)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana estilo kakashi preta.dmi'
						if(usr.cordabandana==5)
							usr.overlays += 'Icons/Roupas/Mascaras/Bandana estilo kakashi.dmi'
						src:equipado = 1
						src.suffix = "Equipado"
						usr<<"Você equipou a bandana!"
					if("Yamato")
						if(usr.cordabandana==1)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana estlilo Yamato vermelha.dmi'
						if(usr.cordabandana==2)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana estlilo Yamato branca.dmi'
						if(usr.cordabandana==3)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana estlilo Yamato marrom.dmi'
						if(usr.cordabandana==4)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana estlilo Yamato preta.dmi'
						if(usr.cordabandana==5)
							usr.overlays += 'Icons/Roupas/Mascaras/Bandana estlilo Yamato.dmi'
						src:equipado = 1
						src.suffix = "Equipado"
						usr<<"Você equipou a bandana!"
					if("Zabuza")
						if(usr.cordabandana==1)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana estilo zabuza vermelha.dmi'
						if(usr.cordabandana==2)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana estilo zabuza branca.dmi'
						if(usr.cordabandana==3)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana estilo zabuza marrom.dmi'
						if(usr.cordabandana==4)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana estilo zabuza preta.dmi'
						if(usr.cordabandana==5)
							usr.overlays += 'Icons/Roupas/Mascaras/Bandana estilo zabuza.dmi'
						src:equipado = 1
						src.suffix = "Equipado"
						usr<<"Você equipou a bandana!"
					if("Rock Lee")
						if(usr.cordabandana==1)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana estilo lee vermelha.dmi'
						if(usr.cordabandana==2)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana estilo lee branca.dmi'
						if(usr.cordabandana==3)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana estilo lee marrom.dmi'
						if(usr.cordabandana==4)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana estilo lee preta.dmi'
						if(usr.cordabandana==5)
							usr.overlays += 'Icons/Roupas/Bandanas/Bandana estilo lee.dmi'
						src:equipado = 1
						src.suffix = "Equipado"
						usr<<"Você equipou a bandana!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"




	Pergaminho_Tshaku
		name = "Pergaminho"
		icon = 'Item.dmi'
		icon_state="Pergaminho"

	PergaminhoKbunshin
		name = "Pergaminho Kage Bushin"
		icon = 'Item.dmi'
		icon_state="Pergaminho"
		Click()
			var/lol = rand(1,100)
			if(lol>=99)
				if(usr.aprendeuKbunshin==0)
					usr<<"Você aprendeu o Kage Bunshin!"
					var/obj/gui/jutsus/KageBushin/B = new/obj/gui/jutsus/KageBushin
					B.loc=usr
					usr.aprendeuKbunshin=1
				else
					usr<<"Você já aprendeu o Kage Bunshin!"
			else
				usr<<"Você não conseguiu entender o pergaminho inteiro"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	CamisaRegata
		name="Camisa Regata"
		icon='Icons/Roupas/Camisa regata.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	Camisa
		name="Camisa"
		icon='Icons/Roupas/Camisa.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	AtaduraCara
		name="Ataduras de Rosto"
		icon='Icons/Roupas/atadura danzou.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	Ataduraperna
		name="Ataduras de Perna"
		icon='Icons/Roupas/atadura tornozelo.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	AtaduraPunho
		name="Ataduras de Punho"
		icon='Icons/Roupas/atadura munhequeira.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	Munhequeira
		name="Munhequeira"
		icon='Icons/Roupas/munhequeira sasuke.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	BolsaEquipe
		name="Bolsa de Equipamentos Basicos"
		icon='Icons/Roupas/bolsinha.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"

	Calca
		name="Calca"
		icon='Icons/Roupas/calça.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	RoupaNaruto
		name="Roupa do Naruto"
		icon='Icons/Roupas/Naruto.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Naruto.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Naruto.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	RoupaHyuuga
		name="Kimono Hyuuga"
		icon='Icons/Roupas/Personagens/ropa hyuuga.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Icons/Roupas/Personagens/ropa hyuuga.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Icons/Roupas/Personagens/ropa hyuuga.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"

	RoupaSasuke
		name="Roupa do Sasuke"
		icon='Icons/Roupas/Personagens/ropa sasuke.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Personagens/ropa sasuke.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Personagens/ropa sasuke.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"

	RoupaLee
		name="Roupa do Lee"
		icon='Icons/Roupas/Personagens/ropa rock lee.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Personagens/ropa rock lee.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Personagens/ropa rock lee.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"

	RoupaAnbu
		name="Roupa de Anbu"
		icon='Icons/Roupas/Rank/ropa anbu.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/ropa anbu.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/ropa anbu.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	RoupaJounninKumo
		name="Roupa de Jounnin"
		icon='Icons/Roupas/Rank/ropa jounin kumo.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/ropa jounin kumo.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/ropa jounin kumo.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	RoupaJounninIwa
		name="Roupa de Jounnin"
		icon='Icons/Roupas/Rank/roupa jounin iwa.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/roupa jounin iwa.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/roupa jounin iwa.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	RoupaJounninKiri
		name="Roupa de Jounnin"
		icon='Icons/Roupas/Rank/roupa jounin kiri.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/roupa jounin kiri.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/roupa jounin kiri.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	RoupaJounninKonoha
		name="Roupa de Jounnin"
		icon='Icons/Roupas/Rank/roupa jounin konoha.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/roupa jounin konoha.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/roupa jounin konoha.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	RoupaJounninSuna
		name="Roupa de Jounnin"
		icon='Icons/Roupas/Rank/roupa jounin suna.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/roupa jounin suna.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/roupa jounin suna.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	RoupaChuuninKumo
		name="Roupa de Chuunin"
		icon='Icons/Roupas/Rank/colete chuunin kumo.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/colete chuunin kumo.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/colete chuunin kumo.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	RoupaChuuninIwa
		name="Roupa de Chuunin"
		icon='Roupas/Rank/colete Chuunin iwa.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/colete Chuunin iwa.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/colete Chuunin iwa.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	RoupaChuuninKiri
		name="Roupa de Chuunin"
		icon='Roupas/Rank/colete Chuunin kiri.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/colete Chuunin kiri.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/colete Chuunin kiri.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	RoupaChuuninKonoha
		name="Roupa de Chuunin"
		icon='Icons/Roupas/Rank/colete chuunin  konoha.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/colete chuunin  konoha.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/colete chuunin  konoha.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	RoupaChuuninSuna
		name="Roupa de Chuunin"
		icon='Icons/Roupas/Rank/colete Chuunin suna.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/colete Chuunin suna.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/colete Chuunin suna.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a roupa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	RoupaAkatsuki
		name="Sobretudo da Akatsuki"
		icon='Icons/Roupas/Rank/roupa akatsuki.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/roupa akatsuki.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/roupa akatsuki.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou o sobretudo!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	MascaraAnbu
		name="Mascara Anbu"
		icon='Icons/Roupas/Mascaras/Mascara anbu 1.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Mascaras/Mascara anbu 1.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Mascaras/Mascara anbu 1.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a mascara!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	MascaraAnbu2
		name="Mascara Anbu 2"
		icon='Icons/Roupas/Mascaras/Mascara anbu 2.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Mascaras/Mascara anbu 2.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Mascaras/Mascara anbu 2.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a mascara!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	MascaraAnbu3
		name="Mascara Anbu"
		icon='Icons/Roupas/Mascaras/Mascara anbu 3.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Mascaras/Mascara anbu 3.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Mascaras/Mascara anbu 3.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a mascara!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	MascaraAnbu4
		name="Mascara Anbu"
		icon='Icons/Roupas/Mascaras/Mascara anbu 4.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Mascaras/Mascara anbu 4.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Mascaras/Mascara anbu 4.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a mascara!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	MascaraAnbu5
		name="Mascara Anbu"
		icon='Icons/Roupas/Mascaras/Mascara anbu 5.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Mascaras/Mascara anbu 5.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Mascaras/Mascara anbu 5.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a mascara!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	MascaraAnbu6
		name="Mascara Anbu"
		icon='Icons/Roupas/Mascaras/Mascara anbu 6.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Mascaras/Mascara anbu 6.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Mascaras/Mascara anbu 6.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a mascara!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	MascaraHaku
		name="Mascara Haku"
		icon='Icons/Roupas/Mascaras/Mascara haku.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Mascaras/Mascara haku.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Mascaras/Mascara haku.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a mascara!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	MascaraMadara
		name="Mascara Madara"
		icon='Icons/Roupas/mascara madara.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/mascara madara.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/mascara madara.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a mascara!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	Bracelete
		name="Bracelete"
		icon='Icons/Roupas/bracelete raikage.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/bracelete raikage.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/bracelete raikage.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a mascara!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	MascaraHanzou
		name="Mascara Hanzou"
		icon='Icons/Roupas/bandanas/mascara hanzou Ultimate kkkk.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Icons/Roupas/bandanas/mascara hanzou Ultimate kkkk.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Icons/Roupas/bandanas/mascara hanzou Ultimate kkkk.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a mascara!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	MascaraKakashi
		name="Mascara do Kakashi"
		icon='Icons/Roupas/Mascaras/Mascara kakashi.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Mascaras/Mascara kakashi.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Mascaras/Mascara kakashi.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a mascara!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	MascaraZabuza
		name="Mascara do Zabuza"
		icon='Icons/Roupas/Mascaras/Mascara zabuza Ultimate.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Icons/Roupas/Mascaras/Mascara zabuza Ultimate.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Icons/Roupas/Mascaras/Mascara zabuza Ultimate.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a mascara!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	SobretudoNinjaforagido
		name="Sobretudo de Ninja Foragido"
		icon='Icons/Roupas/Capa Ninja forajido.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Capa Ninja forajido.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Capa Ninja forajido.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou o sobretudo!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	Sobretudo
		name="Sobretudo"
		icon='Icons/Roupas/capa.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou o sobretudo!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	ChapeuAkatsuki
		name="Chapéu da Akatsuki"
		icon='Icons/Roupas/chapeu akatsuki.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/chapeu akatsuki.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/chapeu akatsuki.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou o chapéu!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	Conjunto
		name="Conjunto"
		icon='Icons/Roupas/conjunto.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou o conjunto!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	JacketaCurta
		name="Jacketa Curta"
		icon='Icons/Roupas/jacketa curta.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a jacketa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	Luva
		name="Luva"
		icon='Icons/Roupas/luva.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a Luva!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	Capakage
		name="Capa Kage"
		icon='Roupas/Rank/capa kage.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/capa kage.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/capa kage.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a Capa de Kage!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	ChapeuRaikage
		name="Chapeu Raikage"
		icon='Roupas/Rank/chapeu raikage.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/chapeu raikage.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/chapeu raikage.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou o Chapeu de Raikage!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	ChapeuMizukage
		name="Chapeu Mizukage"
		icon='Roupas/Rank/chapeu mizukage.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/chapeu mizukage.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/chapeu mizukage.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou o Chapeu de Mizukage!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	ChapeuHokage
		name="Chapeu Raikage"
		icon='Roupas/Rank/chapeu hokage.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/chapeu hokage.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/chapeu hokage.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou o Chapeu de Hokage!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	ChapeuKazekage
		name="Chapeu Raikage"
		icon='Roupas/Rank/chapeu raikage.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/chapeu kazekage.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/chapeu kazekage.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou o Chapeu de Kazekage!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	ChapeuTsuchikage
		name="Chapeu Raikage"
		icon='Roupas/Rank/chapeu tsuchikage.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/chapeu tsuchikage.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/chapeu tsuchikage.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou o Chapeu de Tsuchikage!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	CapaAnbu
		name="Capa Anbu"
		icon='Roupas/Rank/capa sobretudo anbu.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Roupas/Rank/capa sobretudo anbu.dmi'
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += 'Roupas/Rank/capa sobretudo anbu.dmi'
				src.suffix = "Equipado"
				usr<<"Você equipou a Capa Anbu!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	Hiruko
		name="Hiruko"
		icon='Jutsus/Kugutsu/hiruko.dmi'
		layer = MOB_LAYER + 25
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Jutsus/Kugutsu/hiruko.dmi'
				src.suffix = ""
				usr.Res=usr.realres2
			else
				src:equipado = 1
				usr.overlays += 'Jutsus/Kugutsu/hiruko.dmi'
				src.suffix = "Equipado"
				usr<<"Você entrou na Marionete!"
				usr.realres2=usr.Res
				usr.Res=usr.Res + rand(350,500)
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	Pesos1
		name="Peso de Braco"
		icon='Icons/peso braco.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Icons/peso braco.dmi'
				src.suffix = ""
				usr.equipoupesos1=0
		//		usr.verbs -= new/mob/verb/Pesos()
			else
				src:equipado = 1
				usr.overlays += 'Icons/peso braco.dmi'
				src.suffix = "Equipado"
				usr.equipoupesos1=1
		//		usr.verbs += new/mob/verb/Pesos()
				usr<<"Você equipou os Pesos!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	Pesos2
		name="Peso de Perna"
		icon='Icons/peso braco.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= 'Icons/peso perna.dmi'
				src.suffix = ""
				usr.equipoupesos2=0
		//		usr.verbs -= new/mob/verb/Pesos()
			else
				src:equipado = 1
				usr.overlays += 'Icons/peso perna.dmi'
				src.suffix = "Equipado"
				usr.equipoupesos2=1
		//		usr.verbs += new/mob/verb/Pesos()
				usr<<"Você equipou os Pesos!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	BraceleteTerceiroHokage
		name="Bracelete Terceiro Holage"
		icon='Roupas/bracelete 3 hokage.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou o Bracelete do Terceiro Hokage!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	CamisaUmaManga
		name="Camisa com 1 manga"
		icon='Roupas/camisa 1 manga.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a camisa de uma manga!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	CamisaComGola
		name="Camisa com Gola"
		icon='Roupas/Camisa com gola.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a camisa com gola!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	CamisaComGolaManga
		name="Camisa com Gola e Manga"
		icon='Roupas/Camisa manga longa com gola.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a camisa com gola!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	CamisaComGolaeManga
		name="Camisa com Gola e Manga"
		icon='Roupas/Camisa manga longa.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a camisa com gola!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	CamisaRegataComGola
		name="Camisa Regata com Gola"
		icon='Roupas/camisa regata gola aberta.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a camisa regata com gola!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	CamisaComprida
		name="Camisa Comprida"
		icon='Roupas/cumprida.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a camisa comprida!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	EstampaKaguya
		name="Estampa Kaguya"
		icon='Roupas/estampa clan kaguya.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a estampa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	EstampaNara
		name="Estampa Nara"
		icon='Roupas/estampa clan nara.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a estampa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	EstampaUchiha
		name="Estampa Uchiha"
		icon='Roupas/estampa clan uchiha.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a estampa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	EstampaKonoha
		name="Estampa Konoha"
		icon='Roupas/estampa konoha.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a estampa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	EstampaKiri
		name="Estampa Kiri"
		icon='Roupas/estampa-Kiri-costas.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a estampa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
	MunhequeiraSasukeShippuuden
		name="Munhequeira Sasuke"
		icon='Roupas/Munhequeira sasuke Shipuuden.dmi'
		Click()
			if(src.equipado == 1)
				src:equipado = 0
				usr.overlays -= src.icon
				src.suffix = ""
			else
				src:equipado = 1
				usr.overlays += src.icon
				src.suffix = "Equipado"
				usr<<"Você equipou a estampa!"
		verb
			Dropar()
				set category=null
				if(src.equipado)
					usr << "Você não pode Dropar, pois está equipado"
				if(!src.equipado)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.Salvar()
			Pegar()
				set category=null
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"

//var dos Projectil
mob/var
	Nvenenos=0
	Nselos=0
	KunaiEnvenenada=0
	KunaiSelo

/* Projectil e etc... */
obj
	KunaiEnvenenada
		icon='Icons/Armas/Kunai.dmi'
		density=1
		Bump(obstaculo)
			if(ismob(obstaculo))
				var/mob/alvo = obstaculo
				var/mob/O = src.dono
				var/lol=rand(1,2)
				if(lol==1)
					usr<<"Você errou o ataque!"
					del(src)
				else
					var/dano = 30 + O.Forca
					if(dano<=0)
						view()<<"[alvo] não tomou dano...!"
					else
						view(alvo) <<"[alvo] foi acertado pela Kunai Envenenada de [dono]!"
						view(alvo) <<"[dano] de dano!"
						alvo.hp -= dano
						alvo.Morte(0)
						sleep(20)
						del(src)
			if(istype(obstaculo,/turf/))
				var/turf/T = obstaculo
				if(T.density)
					del(src)
			if(istype(obstaculo,/obj/))
				del(src)
	Kunai
		icon='Icons/Armas/Kunai.dmi'
		density=1
		Bump(obstaculo)
			if(ismob(obstaculo))
				var/mob/alvo = obstaculo
				var/mob/O = src.dono
				var/lol=rand(1,2)
				if(lol==1)
					usr<<"Você errou o ataque!"
					del(src)
				else
					var/dano = 10 + O.Forca
					if(dano<=0)
						view()<<"[alvo] não tomou dano...!"
					else
						view(alvo) <<"[alvo] foi acertado pela Kunai de [dono]!"
						view(alvo) <<"[dano] de dano!"
						alvo.hp -= dano
						alvo.Morte(0)
						sleep(20)
						del(src)
			if(istype(obstaculo,/turf/))
				var/turf/T = obstaculo
				if(T.density)
					del(src)
			if(istype(obstaculo,/obj/))
				del(src)
	KunaiSelo
		icon='Icons/Armas/Kunai.dmi'
		icon_state="kunai  + selo"
		density=1
		Bump(obstaculo)
			if(ismob(obstaculo))
				var/mob/alvo = obstaculo
				var/mob/O = src.dono
				var/lol=rand(1,2)
				if(lol==1)
					usr<<"Você errou o ataque!"
					del(src)
				else
					var/dano = 50 + O.Forca
					if(dano<=0)
						view()<<"[alvo] não tomou dano...!"
					else
						view(alvo) <<"[alvo] foi acertado pela Kunai de [dono]!"
						view(alvo) <<"[dano] de dano!"
						alvo.hp -= dano
						alvo.Morte(0)
						sleep(20)
						del(src)
			if(istype(obstaculo,/turf/))
				var/turf/T = obstaculo
				if(T.density)
					del(src)
			if(istype(obstaculo,/obj/))
				del(src)
	Shuriken
		icon='Icons/Armas/Shuriken.dmi'
		density=1
		Bump(obstaculo)
			if(ismob(obstaculo))
				var/mob/alvo = obstaculo
				var/mob/O = src.dono
				var/lol=rand(1,2)
				if(lol==1)
					usr<<"Você errou o ataque!"
					del(src)
				else
					var/dano = 15 + O.Forca
					if(dano<=0)
						view()<<"[alvo] não tomou dano...!"
					else
						view(alvo) <<"[alvo] foi acertado pela Kunai de [dono]!"
						view(alvo) <<"[dano] de dano!"
						alvo.hp -= dano
						alvo.Morte(0)
						sleep(20)
						del(src)
			if(istype(obstaculo,/turf/))
				var/turf/T = obstaculo
				if(T.density)
					del(src)
			if(istype(obstaculo,/obj/))
				del(src)
	Senbon
		icon='Icons/Armas/Senbon.dmi'
		density=1
		Bump(obstaculo)
			if(ismob(obstaculo))
				var/mob/alvo = obstaculo
				var/mob/O = src.dono
				var/lol=rand(1,2)
				if(lol==1)
					usr<<"Você errou o ataque!"
					del(src)
				else
					var/dano = 20 + O.Forca
					if(dano<=0)
						view()<<"[alvo] não tomou dano...!"
					else
						view(alvo) <<"[alvo] foi acertado pela Kunai de [dono]!"
						view(alvo) <<"[dano] de dano!"
						alvo.hp -= dano
						alvo.Morte(0)
						sleep(20)
						del(src)
			if(istype(obstaculo,/turf/))
				var/turf/T = obstaculo
				if(T.density)
					del(src)
			if(istype(obstaculo,/obj/))
				del(src)
	KunaiCurvada
		icon='Icons/Armas/Kunai Curvada.dmi'
		density=1
		Bump(obstaculo)
			if(ismob(obstaculo))
				var/mob/alvo = obstaculo
				var/mob/O = src.dono
				var/lol=rand(1,2)
				if(lol==1)
					usr<<"Você errou o ataque!"
					del(src)
				else
					var/dano = 30 + O.Forca
					if(dano<=0)
						view()<<"[alvo] não tomou dano...!"
					else
						view(alvo) <<"[alvo] foi acertado pela Kunai de [dono]!"
						view(alvo) <<"[dano] de dano!"
						alvo.hp -= dano
						alvo.Morte(0)
						sleep(20)
						del(src)
			if(istype(obstaculo,/turf/))
				var/turf/T = obstaculo
				if(T.density)
					del(src)
			if(istype(obstaculo,/obj/))
				del(src)
	Trikunai
		icon='Icons/Armas/Trikunai.dmi'
		density=1
		Bump(obstaculo)
			if(ismob(obstaculo))
				var/mob/alvo = obstaculo
				var/mob/O = src.dono
				var/lol=rand(1,2)
				if(lol==1)
					usr<<"Você errou o ataque!"
					del(src)
				else
					var/dano = 30 + O.Forca
					if(dano<=0)
						view()<<"[alvo] não tomou dano...!"
					else
						view(alvo) <<"[alvo] foi acertado pela Trikunai de [dono]!"
						view(alvo) <<"[dano] de dano!"
						alvo.hp -= dano
						alvo.Morte(0)
						sleep(20)
						del(src)
			if(istype(obstaculo,/turf/))
				var/turf/T = obstaculo
				if(T.density)
					del(src)
			if(istype(obstaculo,/obj/))
				del(src)
	Foice
		icon='Icons/Armas/Foice.dmi'
		density=1
		Bump(obstaculo)
			if(ismob(obstaculo))
				var/mob/alvo = obstaculo
				var/mob/O = src.dono
				var/lol=rand(1,2)
				if(lol==1)
					usr<<"Você errou o ataque!"
					del(src)
				else
					var/dano = 50 + O.Forca
					if(dano<=0)
						view()<<"[alvo] não tomou dano...!"
					else
						view(alvo) <<"[alvo] foi acertado pela Foice de [dono]!"
						view(alvo) <<"[dano] de dano!"
						alvo.hp -= dano
						alvo.Morte(0)
						sleep(20)
						del(src)
			if(istype(obstaculo,/turf/))
				var/turf/T = obstaculo
				if(T.density)
					del(src)
			if(istype(obstaculo,/obj/))
				del(src)
	Garfo
		icon='Icons/Armas/Garfo.dmi'
		density=1
		Bump(obstaculo)
			if(ismob(obstaculo))
				var/mob/alvo = obstaculo
				var/mob/O = src.dono
				var/lol=rand(1,2)
				if(lol==1)
					usr<<"Você errou o ataque!"
					del(src)
				else
					var/dano = 40 + O.Forca
					if(dano<=0)
						view()<<"[alvo] não tomou dano...!"
					else
						view(alvo) <<"[alvo] foi acertado pelo Garfo de [dono]!"
						view(alvo) <<"[dano] de dano!"
						alvo.hp -= dano
						alvo.Morte(0)
						sleep(20)
						del(src)
			if(istype(obstaculo,/turf/))
				var/turf/T = obstaculo
				if(T.density)
					del(src)
			if(istype(obstaculo,/obj/))
				del(src)
	FuumaShuriken
		icon='Icons/Armas/fuuma shuriken.dmi'
		density=1
		Bump(obstaculo)
			if(ismob(obstaculo))
				var/mob/alvo = obstaculo
				var/mob/O = src.dono
				var/lol=rand(1,2)
				if(lol==1)
					usr<<"Você errou o ataque!"
					del(src)
				else
					var/dano = 100 + O.Forca
					if(dano<=0)
						view()<<"[alvo] não tomou dano...!"
					else
						view(alvo) <<"[alvo] foi acertado pela Fuuma Shuriken de [dono]!"
						view(alvo) <<"[dano] de dano!"
						alvo.hp -= dano
						alvo.Morte(0)
						sleep(20)
						del(src)
			if(istype(obstaculo,/turf/))
				var/turf/T = obstaculo
				if(T.density)
					del(src)
			if(istype(obstaculo,/obj/))
				del(src)

*/