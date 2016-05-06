mob
	verb

		// Botões Perfil Inventário Jutsus

		Perfil()
			if(perfil==0)
				winset(src,"botoes.perfil","is-visible = false")
				winset(src,"botoes.perfil2","is-visible = true")
				winset(src,"perfil","is-visible = true")
				winset(src,"questobjetvo.labelquest","text = A<br> \n A")
				perfil=1
				return
			if(perfil==1)
				winset(src,"botoes.perfil","is-visible = true")
				winset(src,"botoes.perfil2","is-visible = false")
				winset(src,"perfil","is-visible = false")
				perfil=0
				return
		Inventario()
			if(inventario==0)
				winset(src,"botoes.inventario","is-visible = false")
				winset(src,"botoes.inventario2","is-visible = true")
				winset(src,"inventario","is-visible = true")
				inventario=1
				return
			if(inventario==1)
				winset(src,"botoes.inventario","is-visible = true")
				winset(src,"botoes.inventario2","is-visible = false")
				winset(src,"inventario","is-visible = false")
				inventario=0
				return
		Jutsus()
			if(jutsus==0)
				winset(src,"botoes.jutsus","is-visible = false")
				winset(src,"botoes.jutsus2","is-visible = true")
				winset(src,"jutsus","is-visible = true")
				jutsus=1
				return
			if(jutsus==1)
				winset(src,"botoes.jutsus","is-visible = true")
				winset(src,"botoes.jutsus2","is-visible = false")
				winset(src,"jutsus","is-visible = false")
				jutsus=0
				return



//		--- Itens, Jutsus, Perfil




// - Inventario



// - Jutsus






// - Perfil

mob
	Stat()
		statpanel("Perfil")

		stat("<b>Nome: ","<b>[usr.name]</b>")
		stat(" ")
		stat("<b>Clan: </b>","[usr.Clan]")
		/*
		stat("<b>Nome: ","<b>[usr.name]</b>")
		stat(" ")
		stat("<b>Clan: </b>","[usr.Clan]")
		stat("<b>Rank: </b>","[rank]")
		stat("<b>Vila: </b>","[Vila]")
		stat("<b>Ryous: </b>","[dinheiro]$")
		stat(" ")
		stat("<b>Level: </b>","[level]")
		stat("<b>HP: </b>","[hp]/[Mhp]")
		stat("<b>Chakra: </b>","[chakra]/[Mchakra]")
		stat("<b>Experiência: </b>","[exp]/[Mexp]")
		stat(" ")
		stat("<b>Atributos</b>"," ")
		stat("<b>- Forca:","[Forca]")
		stat("<b>- Destreza: </b>","[Vel]")
		stat("<b>- Inteligencia: </b>","[Int]")
		stat("<b>- Resistencia: </b>","[Res]")
		stat(" ")
		stat("<b>Perícias</b>"," ")
		stat("<b>- Artes Marciais: </b>"," ")
		stat("<b>- Tank: </b>"," ")
		stat("<b>- Agilidade: </b>"," ")
		stat("<b>- Controle de Chakra: </b>"," ")
		stat("<b>- Expert em Jutsus: </b>"," ")
		*/