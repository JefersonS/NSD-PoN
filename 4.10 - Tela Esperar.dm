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
<h1>Guia do Iniciante:</h1><br> Ol� Iniciante no NSD ou Iniciante tamb�m no Byond, Esta janela explicar� os passos mais b�sicos do Jogo, e voc� ser� submetido (assim como todos foram) a uma pequena introdu��o de como o jogo funciona.<br><br><br>
Come�ando pelo b�sico: Para falar com algum <b><u>NPC</u></b> <i>(Non Players Character)</i>, aperte <b><u>Espa�o</u></b> perto dele (alguns voc� tem que chegar perto, e outros a uns 2 passos, como � o caso de vendedores).<br><br><br>
Voc� pode andar tanto nas setas normais do seu computador como pelas teclas <b><u>W A S D</u></b>, Para fazer movimentos na diagonal, use as teclas <b><u>HOME</u>, <u>PAGE UP</u>, <u>PAGE DOWN</u> e <u>END</u></b>.<br><br><br>
Vamos botar isto em pr�tica, siga um pouco ao norte (trataremos as dire��es assim) e encontr� um NPC que explicar� o primeiro passo).<br><br><br>
N�o esque�a de ler atentamente todas as instru��es, isso vai tirar algumas de suas d�vidas iniciais, se mesmo assim sentir que n�o entendeu algo, pode esclarecer suas d�vidsa com players Experientes, ou com alguem da staff, mas tente n�o ser muito irritante!
				"}
			usr<<browse(infoinicial,"window=mywindow;size=780x580")
			usr.objetivo="Procurar pelo Primeiro Instrutor ao Norte.\nDica: Se estiver muito Lag, n�o siga tanto ao Norte."
			winset(usr,"questobjetvo.labelquest1","text=\"[usr.objetivo]\"")