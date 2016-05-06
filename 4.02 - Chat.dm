mob
	verb

		//-- Global

		Falarglobal(fala as text)
			if(!fala || fala == " " || fala == "  " || fala == "   ") return
			world << "<font color =green><li>|Global| </font><font color = white>[usr]:</font> [fala]"

		//-- Tela

/*		Falartela(fala as text)
			if(!fala || fala == " " || fala == "  " || fala == "   ") return
			view(10) << "<font color = white>[usr] falou:</font><font color = gray> [fala]</font>"
*/

		//-- Falta o da Vila



		// Fixar o Primeiro Chat

		Fixar()
			usr.posicao=winget(src,"chat","pos")
			usr << "[usr.posicao]"
			winset(src,"chat","pos = [usr.posicao]")
			verificap = 1

		// Fixar o Segundo Chat

		Fixar2()
			usr.posicao2=winget(src,"chat2","pos")
			usr << output("[usr.posicao2]","chat2.chat2")
			winset(src,"chat2","pos = [usr.posicao2]")
			verificap2 = 2

		// Botões Primeiro Chat

		Global()
			winset(src,"chat.f","background-color = #400000")
			winset(src,"chat.g","background-color = black")
			winset(src,"chat.input","command = Falarglobal")
			return
		Falar()
			winset(src,"chat.f","background-color = black")
			winset(src,"chat.g","background-color = #400000")
			winset(src,"chat.input","command = Falartela")
			return
		Ligar()
			winset(src,"chat2","is-visible = true")
			winset(src,"mainwindow.botaochat","is-visible = false")
			return
		Desligar()
			winset(src,"chat2","is-visible = false")
			winset(src,"mainwindow.botaochat","size = 100x20")
			winset(src,"mainwindow.botaochat","is-visible = true")
			return

		// Botões Segundo Chat

		Ligar2()
			winset(src,"chat","is-visible = true")
			winset(src,"mainwindow.botaochat2","is-visible = false")
			return
		Desligar2()
			winset(src,"chat","is-visible = false")
			winset(src,"mainwindow.botaochat2","is-visible = true")
			winset(src,"mainwindow.botaochat2","size = 98x20")
			return
		Vila()
			winset(src,"chat2.v","background-color = black")
			return