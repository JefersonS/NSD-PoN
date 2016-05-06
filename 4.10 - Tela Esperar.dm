mob/var
	objetivo=""

mob
	proc
		Espere()
			var/cont = 0
			while(cont <= 100)
				winset(src,"carregando.barraloading","value = [cont]")
				cont ++
				sleep(1)
			winset(src,"carregando.pronto","is-visible = true")
			sleep(10)
			winset(src,"carregando","is-visible=false")
			winset(src,"quarta","is-visible=false")
			winset(src,"mainwindow","is-visible=true")
			winset(src,"chat","is-visible=true")
			winset(src,"chat2","is-visible=true")
			winset(src,"atalhos1","is-visible=true")
			world <<output("<font color = red>{Server}:<font color=white>[usr.name]([usr.key]) <font color=green>Acaba de Criar um Character!</font>","chat.output1")
			var/infoinicial = {"<html><head><title>Tutorial</title></head>\
			<body bgcolor=black><font color=white>
<h1>Guia do Iniciante:</h1><br> Olá Iniciante no NSD ou Iniciante também no Byond, Esta janela explicará os passos mais básicos do Jogo, e você será submetido (assim como todos foram) a uma pequena introdução de como o jogo funciona.<br><br><br>
Começando pelo básico: Para falar com algum <b><u>NPC</u></b> <i>(Non Players Character)</i>, aperte <b><u>Espaço</u></b> perto dele (alguns você tem que chegar perto, e outros a uns 2 passos, como é o caso de vendedores).<br><br><br>
Você pode andar tanto nas setas normais do seu computador como pelas teclas <b><u>W A S D</u></b>, Para fazer movimentos na diagonal, use as teclas <b><u>HOME</u>, <u>PAGE UP</u>, <u>PAGE DOWN</u> e <u>END</u></b>.<br><br><br>
Vamos botar isto em prática, siga um pouco ao norte (trataremos as direções assim) e encontrá um NPC que explicará o primeiro passo).<br><br><br>
Não esqueça de ler atentamente todas as instruções, isso vai tirar algumas de suas dúvidas iniciais, se mesmo assim sentir que não entendeu algo, pode esclarecer suas dúvidsa com players Experientes, ou com alguem da staff, mas tente não ser muito irritante!
				"}
			usr<<browse(infoinicial,"window=mywindow;size=780x580")
			usr.objetivo="Procurar pelo Primeiro Instrutor ao Norte.\nDica: Se estiver muito Lag, não siga tanto ao Norte."
			winset(usr,"questobjetvo.labelquest1","text=\"[usr.objetivo]\"")