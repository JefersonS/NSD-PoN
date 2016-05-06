//mob
//	locate = (1,1,1)

world
	icon_size = "52x52"
mob
	var
		verificap = 0		// Verifica se o cara mudou a posição do Primeiro Chat
		verificap2 = 0		// Verifica se o cara mudou a posição do Segundo Chat
		posicao = 0			// Futura Posição do Primeiro Chat
		posicao2 = 0		// Futura Posição do Segundo Chat
		perfil = 0
		inventario = 0
		jutsus = 0
		atributos = 0
		pericias = 0
		periciasaberta = 0
		pega1 = 0
		pega2 = 0
		pega3 = 0
		pega4 = 0
		pega5 = 0
		pegam1 = 0
		pegam2 = 0
		pegam3 = 0
		pegam4 = 0
		pegam5 = 0
		lforca = 0
		lresistencia = 0
		lvelocidade = 0
		linteligencia = 0
		tpontos = 0
		valorforca = 0
		valorresistencia = 0
		valorvelocidade = 0
		valorinteligencia = 0
		maisforca = 0
		maisresistencia = 0
		maisvelocidade = 0
		maisinteligencia = 0
		lartes = 0
		lagilidade = 0
		ltank = 0
		lexpert = 0
		lcontrole = 0
		maisartes = 0
		valorartes = 0
		valoragilidade = 0
		valortank = 0
		valorexpert = 0
		valorcontrole = 0
		maisagilidade = 0
		maistank = 0
		maisexpert = 0
		maiscontrole = 0
		objetvoligado = 0
		corpoitens = 0


//  	--- Posições de Janelas, Botões e tals



	Login()
		..()
		winset(src,"primeira","is-visible=false")
		winset(src,"primeira", "pos = 100x2")
		winset(src,"segunda", "pos = 100x2")
		winset(src,"quarta", "pos = 203x2")
		winset(src,"terceira", "pos = 100x2")

		// Alterar código, apenas para testes
		winset(src,"mainwindow", "is-visible=true")
		winset(src,"mainwindow", "is-maximized=true")
		usr.podesalvar=1
		usr.invisibility=10
		usr.see_invisible=10
		usr.nadando=0
		usr.finalizado=1
		usr.icon='Icons/Bases/Base.dmi'
		usr.loc = locate(20,10,1)
		usr.paralisado=0
		tamanhotela = winget(src,"mainwindow.map1","size")
		winset(src,"chat","is-visible=true")
		winset(src,"chat2","is-visible=true")
		AlturaLargura()
		Atalhos()
		Corpo()
		GiveJutsus()
		GenRandom()
		// ---

		winset(src,"perfil", "pos = 100x120")
		winset(src,"inventario", "pos = 300x120")
		winset(src,"jutsus", "pos = 500x120")
		winset(src,"bolsae", "pos = 538x120")
		winset(src,"atributos", "pos = 300x120")
		winset(src,"atalhos1", "is-visible=true")
		winset(src,"mainwindow.fundoo", "size =44x394")



		// Processo pras posições dos Chats

		// Chat 1
		if(usr.verificap == 1)
			winset(src,"chat","pos = [posicao]")
		if(usr.verificap == 0)
			winset(src,"chat","pos = 100,504")

		// Chat 2
		if(usr.verificap2 == 1)
			winset(src,"chat2","pos = [posicao2]")
		if(usr.verificap2 == 0)
			winset(src,"chat2", "pos = 700x504")


// ---- Efeito Alpha


mob
	var
		contador = 0
	verb
		novo()
			winset(src,"segunda","is-visible=false")
			winset(src,"terceira.escrevenome","text= ")
			winset(src,"terceira","is-visible=true")
		vai()
			var
				contador = 0
				alpha = 240
				alpha2 = 30
				alpha3 = (alpha - alpha2)

			winset(src,"primeira","alpha = 240")

			while ( contador < 12 )
				sleep(1)
				winset(src,"primeira","alpha = [alpha3]")
				alpha = alpha3
				alpha3 = alpha - alpha2
				contador ++
			winset(src,"primeira","is-visible = false")
			winset(src,"segunda","is-visible = true ")
