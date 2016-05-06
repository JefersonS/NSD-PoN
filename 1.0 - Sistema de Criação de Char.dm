mob/var
	escolheunome
	escolheubase
	escolheuvila
	escolheuclan
	informacao = ""
	informacao2 = ""

	infoKonoha = {"<font color = "red"><b>Konohagakure</b></font><br>É a Vila Oculta da Folha, tradicional vila ninja e uma das cinco grandes vilas. Fundada por Senjuu Hashirama e seu irmão, teve grande poder e influência no inicio do Sistema de Vilas Ninja por País.\
	É mais um dos vilarejos escondidos com ninjas, só que existe uma grande diferença: é o maior, mais forte e mais rico que seus vizinhos, em sua maioria vilarejos menores. Por causa dessa fama os pedidos que vêm até eles são enormes, mesmo assim o pagamento é bom. Eles fazem qualquer tipo de missão, desde que se pague antes, de resgate de gatos a assassinatos de Senhores Feudais.\
	É controlado por um Hokage. Até agora já vieram cinco Hokages, sendo a última Senjuu Tsunade. A vila é cercada de floresta (de acordo com o seu nome), e pelo o que se pode notar ela está situada em uma lugar com o clima quente (talvez por isso pode-se chamar o país de país do fogo)"}

	infoAreia = {"<font color = "#A69C57"><b>Sunagakure</b></font><br>A Vila Oculta da Areia (Sunagakure no Sato) é situada no País do Vento, e uma das cinco grande vilas ocultas ninja existentes no mundo.\
	Situada no deserto (como grande parte do País do Vento), sofre um pouco com mantimentos e contato com outros países e vilas, porém, os ninjas do deserto, por não serem tão numerosos, são em individual, muito fortes.\
	É tradicional também nesta vila a desgraça no poder, Todos os Kages de Suna sofreram uma desgraça, a começar pelo Sandaime, que foi sequestrado por um fugitivo de Suna, e Depois o Yondaime, enganado por um Nuke-nin Rank S."}

	infoNevoa = {"<font color = "blue"><b>Kirigakure</b></font><br>Kiri Gakure no Sato  ou pela forma mais conhecida, Vila Oculta da Névoa situa-se no País da Agua, e é uma das cinco grandes vilas ninjas existentes no mundo. Se situa em uma ilha e de em grande parte do dia sempre há um denso nevoeiro, origem do nome da vila.\
	Na vila Oculta da Névoa também neva muito, graças a situação da Ilha, isolada do continente, em um lugar frio. O País da Água é um conjunto de ilhas interligadas por pontes, e por isto o país é pequeno, porém, bem protegido. Kirigakure também conhecida como 'Névoa de sangue' devido ao seu passado sangrento. Os Shinobis dessa vila têm a reputação de nunca desistirem e sempre continuarem a lutar mesmo que a morte seja certa."}

	infoNuvem = {"<font color = "gray"><b>Kumogakure</b></font><br>A vila Oculta da Nuvem, conhecida como Kumo, situa-se no País do Trovão, e é uma das cinco grandes vilas ninjas existentes no mundo. Acredita-se que o nome venha de uma coisa literal: Vila oculta NAS Nuvens, pois o vilarejo se encontra montanhas a cima.\
						O País do Trovão é um monte de picos e montanhas, com desfiladeiros, rios e cachoeiras. Kumogakure é conhecida pela ótima organização, e seriedade com qual trata os ninjas da própria vila. União, companherismo, auto-confiança e exigência são uma das qualidade dos ninjas de Kumogakure\
						Durante muitos anos aproveitou a paz, e ao invés de gerar Nukenins de Rank S como outras vilas, cresceu por si própria e juntou técnicas e armas, atingindo o posto de uma das maiores vilas do mundo\
						Os ninjas de Kumogakure também são conhecidos por um forte Taijutsu, boas técnicas com espada e um Raiton bem ofensivo."}

	infoPedra = {"<font color = "#752E0B"><b>Iwagakure</b></font><br>A Vila Oculta da Pedra, chamada de Iwa, situa-se no País da Terra e é uma das cinco grandes vilas ninja.\
					Acredita-se que o nome venha das grandes pedreiras que estão na vila e ao seu redor, e por ela ficar perto de montanhas e planices rochosas, assim como o País da Terrra.\
					Os ninjas de Iwa são conhecidos pela força, esperteza, um bom Doton e também pela Corrupção, pelo lado negativo é claro. Porém são também um grupo Unido e fechado, mas que evolui cada vez mais."}
	infoUchiha = {"<font color = "red"><br><b>Uchiha</b></font><br>Clan do Sasuke e do Itachi"}
	infoAburame = {"<font color = "#265801"><br><b>Aburame</b></font><br>UMA BARATA!!!"}
	infoHyuuga = {"<font color = "gray"><br><b>Hyuuga</b></font><br>Clan da Hinata e do Neji"}
	infoNara = {"<font color = "#008C00"><br><b>Nara</b></font><br>Clan do Shikamaru"}
	infoInuzuka = {"<font color = "#1B396D"><br><b>Inuzuka</b></font><br>Clan do Kiba"}
	infoAkimichi = {"<font color = "#996600"><br><b>Akimichi</b></font><br>Clan do Chouji"}
	infoKaguya = {"<font color = "gray"><br><b>Kaguya</b></font><br>Clan do Kimimaro"}
	infoSabaku = {"<font color = "#A69C57"><br><b>Sabaku</b></font><br>Gaara...areia...lembra?"}
	infoAkasuna = {"<font color = "#9A6601"><br><b>Akasuna</b></font><br>Marionetes te lembra algo?"}
	infoKoori = {"<font color = "#00CACA"><br><b>Koori</b></font><br>Ta frio!"}
	infoArgila  = {"<font color = "#6C3F1E"><br><b>Argila</b></font><br>KATSU!"}
	infoUzumaki = {"<font color = "orange"><br><b>Uzumaki</b></font><br>Se não soubér este desista de jogar este jogo..."}
	infoSemclan = {"<font color = "gray"><br><b>Sem clan</b></font><br>Sem sal......."}


mob/verb
	Nome()
		var/n = winget(src,"terceira.escrevenome","text")

		if((findtext(n,"(NPC)")) || (findtext(n,"NPC")) || (findtext(n,"\"")) || (findtext(n,"@")) || (findtext(n,".")) || (findtext(n,"\\")) || (findtext(n,"/")) || (findtext(n,"!")) || (findtext(n,"#")) || (findtext(n,"$")) || (findtext(n,"%")) || (findtext(n,"^")) || (findtext(n,"&")) || (findtext(n,"*")) || (findtext(n,"(")) || (findtext(n,")")) || (findtext(n,"-")) || (findtext(n,"+")) || (findtext(n,"=")) || (findtext(n,"|")) || (findtext(n,"{")) || (findtext(n,"}")) || (findtext(n,";")) || (findtext(n,":")) || (findtext(n,"?")) || (findtext(n,"0")) || (findtext(n,"1")) || (findtext(n,"2")) || (findtext(n,"3")) || (findtext(n,"4")) || (findtext(n,"5")) || (findtext(n,"6")) || (findtext(n,"7")) || (findtext(n,"8")) || (findtext(n,"9")) || (findtext(n,"®")) || (findtext(n,"©")) || (lentext(n) > 20) || (lentext(n) < 2))
			winset(src,"terceira.dicalabel","text-color = red")
			var/erro = "Sinto muito mas foi encontrado um problema no seu nome, por favor, mude-o conforme o necessário."
			winset(src,"terceira.dicalabel","text = \"[erro]\"")
			winset(src,"terceira.escrevenome","text = ")
		else
			winset(src,"terceira.dicalabel","text-color = green")
			var/correto = "Está tudo ok com o seu nome, agora você pode prosseguir com a criação de seu personagem!"
			winset(src,"terceira.dicalabel","text = \"[correto]\"")
			src.name = "[html_encode(n)]"
			escolheunome = 1

	NomeEnter(n as text)
		if((findtext(n,"(NPC)")) || (findtext(n,"NPC")) || (findtext(n,"\"")) || (findtext(n,"@")) || (findtext(n,".")) || (findtext(n,"\\")) || (findtext(n,"/")) || (findtext(n,"!")) || (findtext(n,"#")) || (findtext(n,"$")) || (findtext(n,"%")) || (findtext(n,"^")) || (findtext(n,"&")) || (findtext(n,"*")) || (findtext(n,"(")) || (findtext(n,")")) || (findtext(n,"-")) || (findtext(n,"+")) || (findtext(n,"=")) || (findtext(n,"|")) || (findtext(n,"{")) || (findtext(n,"}")) || (findtext(n,";")) || (findtext(n,":")) || (findtext(n,"?")) || (findtext(n,"0")) || (findtext(n,"1")) || (findtext(n,"2")) || (findtext(n,"3")) || (findtext(n,"4")) || (findtext(n,"5")) || (findtext(n,"6")) || (findtext(n,"7")) || (findtext(n,"8")) || (findtext(n,"9")) || (findtext(n,"®")) || (findtext(n,"©")) || (lentext(n) > 20) || (lentext(n) < 2))
			winset(src,"terceira.dicalabel","text-color = red")
			var/erro = "Sinto muito mas foi encontrado um problema no seu nome, por favor, mude-o conforme o necessário."
			winset(src,"terceira.dicalabel","text = \"[erro]\"")
			winset(src,"terceira.escrevenome","text = ")
		else
			winset(src,"terceira.escrevenome","text = [n]")
			winset(src,"terceira.dicalabel","text-color = green")
			var/correto = "Está tudo ok com o seu nome, agora você pode prosseguir com a criação de seu personagem!"
			winset(src,"terceira.dicalabel","text = \"[correto]\"")
			src.name = "[html_encode(n)]"
			escolheunome = 1


mob/verb
	GenRandom()
		winset(src,"hpchexp.labelnome","text = [usr.name]")
		var/vilas[5]
		vilas[1] = "Folha"
		vilas[2] = "Areia"
		vilas[3] = "Névoa"
		vilas[4] = "Nuvem"
		vilas[5] = "Pedra"
		var/icons[5]
		icons[1] = 'Imagens/pfogo.jpg'
		icons[2] = 'Imagens/pareia.jpg'
		icons[3] = 'Imagens/pnevoa.jpg'
		icons[4] = 'Imagens/pnuvem.jpg'
		icons[5] = 'Imagens/ppedra.jpg'
		var/number = rand(1, 5)

		usr.Vila = vilas[number]
		winset(src,"hpchexp.paisimagem","image = [icons[number]]")

		var/bases[4]
		bases[1] = 'Icons/Bases/Base.dmi'
		bases[2] = 'Icons/Bases/Base Palida.dmi'
		bases[3] = 'Icons/Bases/Base Negra.dmi'
		bases[4] = 'Icons/Bases/Base Hoshigake.dmi'
		number = rand(1, 4)

		usr.icon = bases[number]

		var/cabelos[15]
		cabelos[1] = 'Icons/Cabelos/cabelo Kakashi.dmi'
		cabelos[2] = 'Icons/Cabelos/cabelo Darui.dmi'
		cabelos[3] = 'Icons/Cabelos/cabelo Madara.dmi'
		cabelos[4] = 'Icons/Cabelos/cabelo Ao.dmi'
		cabelos[5] = 'Icons/Cabelos/cabelo Itachi.dmi'
		cabelos[6] = 'Icons/Cabelos/cabelo Lee.dmi'
		cabelos[7] = 'Icons/Cabelos/cabelo Nara.dmi'
		cabelos[8] = 'Icons/Cabelos/cabelo Neji.dmi'
		cabelos[9] = 'Icons/Cabelos/cabelo Orochimaru.dmi'
		cabelos[10] = 'Icons/Cabelos/cabelo Sai.dmi'
		cabelos[11] = 'Icons/Cabelos/cabelo Sasuke.dmi'
		cabelos[12] = 'Icons/Cabelos/cabelo Uzumaki.dmi'
		cabelos[13] = 'Icons/Cabelos/cabelo Minato.dmi'
		cabelos[14] = 'Icons/Cabelos/cabelo Nagato.dmi'
		cabelos[15] = 'Icons/Cabelos/cabelo Haku.dmi'
		number = rand(1, 15)

		usr.overlays=null
		var/icon/A= new(cabelos[number])
		//cor do cabelo
		var/c = rgb(rand(0, 255),rand(0, 255),rand(0, 255))
		A.icon += c
		usr.overlays +=A

	Folha()
		winset(src, "quarta.botaok","is-visible = false")
		winset(src, "quarta.childmc","pos = 162x98")
		winset(src, "quarta.childmc","size = 506x154")
		winset(src, "quarta.labelinfo","pos = 48x279")
		winset(src, "quarta.labelinfo","size = 720x272")
		winset(src,"quarta.childmc","left = qkonoha")
		usr.Vila = "Folha"
		winset(src,"hpchexp.paisimagem","image = ['Imagens/pfogo.jpg']")
		informacao = infoKonoha
		informacao2 = informacao
		usr << output(informacao,"quarta.labelinfo")
		escolheuvila = 1

	Areia()
		winset(src,"quarta.clans","left = qareia")
		usr.Vila = "Areia"
		winset(src,"hpchexp.paisimagem","image = ['Imagens/pareia.jpg']")
		informacao = infoAreia
		informacao2 = informacao
		usr << output(informacao,"quarta.labelinfo")
		escolheuvila = 1

	Nevoa()
		winset(src,"quarta.clans","left = qnevoa")
		usr.Vila = "Névoa"
		winset(src,"hpchexp.paisimagem","image = ['Imagens/pnevoa.jpg']")
		informacao = infoNevoa
		informacao2 = informacao
		usr << output(informacao,"quarta.labelinfo")
		escolheuvila = 1

	Nuvem()
		winset(src,"quarta.clans","left = qnuvem")
		usr.Vila = "Nuvem"
		winset(src,"hpchexp.paisimagem","image = ['Imagens/pnuvem.jpg']")
		informacao = infoNuvem
		informacao2 = informacao
		usr << output(informacao,"quarta.labelinfo")
		escolheuvila = 1

	Pedra()
		winset(src,"quarta.clans","left = qpedra")
		usr.Vila = "Pedra"
		winset(src,"hpchexp.paisimagem","image = ['Imagens/ppedra.jpg']")
		informacao = infoPedra
		informacao2 = informacao
		usr << output(informacao,"quarta.labelinfo")
		escolheuvila = 1


/*
mob/proc/DiscipuloHyuuga()
	usr.random=rand(1,2)
	if(usr.random==1)
		usr.Discipulo="Neji"
		usr.HyuugaFamilia="Secundaria"
		usr<<"Você é discipulo de Hyuuga Neji!"
	else
		usr.Discipulo="Hinata"
		usr.HyuugaFamilia="Principal"
		usr<<"Você é discipulo de Hyuuga Hinata!"

*/

mob
	verb
		Uchiha()
			winset(src,"qkonoha.uz2","is-visible = false")
			winset(src,"qkonoha.na2","is-visible = false")
			winset(src,"qkonoha.hy2","is-visible = false")
			winset(src,"qkonoha.sc2","is-visible = false")
			winset(src,"qkonoha.uc2","is-visible = true")
			usr.Clan = "Uchiha"
	//		usr.uchiha=1
			usr.Elemento1="Katon"
			usr.tecnica="Ninjutsu"
			informacao = informacao2
			informacao = {"[informacao] <br>[infoUchiha]"}
			usr << output(informacao,"quarta.labelinfo")
			escolheuclan = 1

		Aburame()
			usr.Clan = "Aburame"
			usr.escolheuclan = 1
		//	usr.aburame=1
			usr.tecnica="Ninjutsu"
			informacao = informacao2
			informacao = {"[informacao] <br>[infoAburame]"}
			usr << output(informacao,"quarta.labelinfo")
			escolheuclan = 1

		Hyuuga()
			winset(src,"qkonoha.uz2","is-visible = false")
			winset(src,"qkonoha.na2","is-visible = false")
			winset(src,"qkonoha.hy2","is-visible = true")
			winset(src,"qkonoha.sc2","is-visible = false")
			winset(src,"qkonoha.uc2","is-visible = false")
			usr.Clan = "Hyuuga"
		//	usr.DiscipuloHyuuga()
			usr.escolheuclan = 1
		//	usr.hyuuga=1
			usr.tecnica="Ninjutsu"
			informacao = informacao2
			informacao = {"[informacao] <br>[infoHyuuga]"}
			usr << output(informacao,"quarta.labelinfo")
			escolheuclan = 1

		Nara()
			winset(src,"qkonoha.uz2","is-visible = false")
			winset(src,"qkonoha.na2","is-visible = true")
			winset(src,"qkonoha.hy2","is-visible = false")
			winset(src,"qkonoha.sc2","is-visible = false")
			winset(src,"qkonoha.uc2","is-visible = false")
			usr.Clan = "Nara"
			usr.escolheuclan = 1
	//		usr.nara=1
			usr.tecnica="Ninjutsu"
			informacao = informacao2
			informacao = {"[informacao] <br>[infoNara]"}
			usr << output(informacao,"quarta.labelinfo")
			escolheuclan = 1

		Inuzuka()
			usr.Clan = "Inuzuka"
			usr.escolheuclan = 1
	//		usr.inuzuka=1
			usr.tecnica="Ninjutsu"
			informacao = informacao2
			informacao = {"[informacao] <br>[infoInuzuka]"}
			usr << output(informacao,"quarta.labelinfo")
			escolheuclan = 1

		Akimichi()
			usr.Clan = "Akimichi"
			usr.escolheuclan = 1
	//		usr.akimichi=1
			usr.tecnica="Ninjutsu"
			informacao = informacao2
			informacao = {"[informacao] <br>[infoAkimichi]"}
			usr << output(informacao,"quarta.labelinfo")
			escolheuclan = 1

		Kaguya()
			usr.Clan = "Kaguya"
			usr.escolheuclan = 1
	//		usr.kaguya=1
			usr.tecnica="Ninjutsu"
			informacao = informacao2
			informacao = {"[informacao] <br>[infoKaguya]"}
			usr << output(informacao,"quarta.labelinfo")
			escolheuclan = 1

		Sabaku()
			usr.Clan = "Sabaku no"
			usr.escolheuclan = 1
			usr.tecnica="Ninjutsu"
			informacao = informacao2
			informacao = {"[informacao] <br>[infoSabaku]"}
			usr << output(informacao,"quarta.labelinfo")
			escolheuclan = 1

		Akasuna()
			usr.Clan = "Akasuna no"
			usr.escolheuclan = 1
			usr.tecnica="Ninjutsu"
			informacao = informacao2
			informacao = {"[informacao] <br>[infoAkasuna]"}
			usr << output(informacao,"quarta.labelinfo")
			escolheuclan = 1

		Koori()
			usr.Clan = "Koori"
			usr.Elemento1="Suiton"
			usr.Elemento2="Fuuton"
			usr.escolheuclan = 1
			usr.tecnica="Ninjutsu"
			informacao = informacao2
			informacao = {"[informacao] <br>[infoKoori]"}
			usr << output(informacao,"quarta.labelinfo")
			escolheuclan = 1

		Argila()
			usr.Clan = "Argila"
			usr.escolheuclan = 1
			usr.tecnica="Ninjutsu"
			informacao = informacao2
			informacao = {"[informacao] <br>[infoArgila]"}
			usr << output(informacao,"quarta.labelinfo")
			escolheuclan = 1

		Uzumaki()
			winset(src,"qkonoha.uz2","is-visible = true")
			winset(src,"qkonoha.na2","is-visible = false")
			winset(src,"qkonoha.hy2","is-visible = false")
			winset(src,"qkonoha.sc2","is-visible = false")
			winset(src,"qkonoha.uc2","is-visible = false")
			usr.Clan = "Uzumaki"
			usr.escolheuclan = 1
			usr.tecnica="Ninjutsu"
			informacao = informacao2
			informacao = {"[informacao] <br>[infoUzumaki]"}
			usr << output(informacao,"quarta.labelinfo")
			escolheuclan = 1

		Semclan()
			winset(src,"qkonoha.uz2","is-visible = false")
			winset(src,"qkonoha.na2","is-visible = false")
			winset(src,"qkonoha.hy2","is-visible = false")
			winset(src,"qkonoha.sc2","is-visible = true")
			winset(src,"qkonoha.uc2","is-visible = false")
			usr.Clan = ""
			usr.escolheuclan = 1
	//		usr.nonclan=1
			informacao = informacao2
			informacao = {"[informacao] <br>[infoSemclan]"}
			usr << output(informacao,"quarta.labelinfo")
			escolheuclan = 1



mob/var/obj/Base = new()
mob/var/base
mob/var/obj/Cabelo = new()
mob/var/cabelo
mob/var/obj/Olho = new()
mob/var/olho
mob/var/tamanhotela
mob/verb

	Normal()
		usr.icon='Icons/Bases/Base.dmi'
		escolheubase=1
		winset(src, "quarta.base", "current-cell=[-1]")
		Base.icon='VejaComoFica/base.dmi'
		Base.icon_state = "bfrente"
		src << output(Base, "quarta.base")
		base = "b"
		winset(src, "terceira.base", "cells=[1]")
	Palida()
		usr.icon='Icons/Bases/Base Palida.dmi'
		escolheubase=1
		winset(src, "terceira.base", "current-cell=[-1]")
		Base.icon='VejaComoFica/base.dmi'
		Base.icon_state = "pfrente"
		src << output(Base, "terceira.base")
		base = "p"
		winset(src, "terceira.base", "cells=[1]")
	AfroDescendente()
		usr.icon='Icons/Bases/Base Negra.dmi'
		escolheubase=1
		winset(src, "terceira.base", "current-cell=[-1]")
		Base.icon='VejaComoFica/base.dmi'
		Base.icon_state = "nfrente"
		src << output(Base, "terceira.base")
		base = "n"
		winset(src, "terceira.base", "cells=[1]")
	Azul()
		usr.icon='Icons/Bases/Base Hoshigake.dmi'
		escolheubase=1
		winset(src, "terceira.base", "current-cell=[-1]")
		Base.icon='VejaComoFica/base.dmi'
		Base.icon_state = "afrente"
		src << output(Base, "terceira.base")
		base = "a"
		winset(src, "terceira.base", "cells=[1]")
	Olhos()
		var/icon/A= new('Icons/Outros/Olho normal.dmi')
		var/c = input("","Cor do Olho") as color
		Olho.icon = 'VejaComoFica/olhos.dmi'
		Olho.icon_state = "olhofrente"
		Base.overlays = null
		Olho.icon += c
		Base.overlays +=Cabelo
		Base.overlays +=Olho
		A.icon += c
		usr.overlays +=A
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")

		//usr.overlays+='Icons/Olho normal.dmi'
	CabeloKakashi()
		usr.overlays=null
		usr.escolheuCabelo=0
		var/icon/A= new('Icons/Cabelos/cabelo Kakashi.dmi')
		var/c = input("","Cor do Cabelo") as color
		Cabelo.icon = 'VejaComoFica/cabelos.dmi'
		Cabelo.icon_state = "kakashifrente"
		cabelo = "kakashi"
		Base.overlays = null
		A.icon += c
		Cabelo.icon += c
		usr.overlays +=A
		Base.overlays +=Olho
		Base.overlays +=Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")

	CabeloDarui()
		usr.overlays=null
		usr.escolheuCabelo=0
		var/icon/A= new('Icons/Cabelos/cabelo Darui.dmi')
		var/c = input("","Cor do Cabelo") as color
		Cabelo.icon = 'VejaComoFica/cabelos.dmi'
		Cabelo.icon_state = "daruifrente"
		cabelo = "darui"
		Base.overlays = null
		Cabelo.icon += c
		Base.overlays +=Olho
		Base.overlays +=Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")
		A.icon += c
		usr.overlays +=A

	CabeloMadara()
		usr.overlays=null
		usr.escolheuCabelo=0
		var/icon/A= new('Icons/Cabelos/cabelo Madara.dmi')
		var/c = input("","Cor do Cabelo") as color
		Cabelo.icon = 'VejaComoFica/cabelos.dmi'
		Cabelo.icon_state = "madarafrente"
		cabelo = "madara"
		Base.overlays = null
		Cabelo.icon += c
		Base.overlays +=Olho
		Base.overlays +=Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")
		A.icon += c
		usr.overlays +=A

	CabeloAo()
		usr.overlays=null
		usr.escolheuCabelo=0
		var/icon/A= new('Icons/Cabelos/cabelo Ao.dmi')
		var/c = input("","Cor do Cabelo") as color
		Cabelo.icon = 'VejaComoFica/cabelos.dmi'
		Cabelo.icon_state = "aofrente"
		cabelo = "ao"
		Base.overlays = null
		Cabelo.icon += c
		Base.overlays +=Olho
		Base.overlays +=Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")
		A.icon += c
		usr.overlays +=A

	CabeloItachi()
		usr.overlays=null
		usr.escolheuCabelo=0
		var/icon/A= new('Icons/Cabelos/cabelo Itachi.dmi')
		var/c = input("","Cor do Cabelo") as color
		Cabelo.icon = 'VejaComoFica/cabelos.dmi'
		Cabelo.icon_state = "itachifrente"
		cabelo = "itachi"
		Base.overlays = null
		Cabelo.icon += c
		Base.overlays +=Olho
		Base.overlays +=Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")
		A.icon += c
		usr.overlays +=A
	CabeloLee()
		usr.overlays=null
		usr.escolheuCabelo=0
		var/icon/A= new('Icons/Cabelos/cabelo Lee.dmi')
		var/c = input("","Cor do Cabelo") as color
		Cabelo.icon = 'VejaComoFica/cabelos.dmi'
		Cabelo.icon_state = "leefrente"
		cabelo = "lee"
		Base.overlays = null
		Cabelo.icon += c
		Base.overlays +=Olho
		Base.overlays +=Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")
		A.icon += c
		usr.overlays +=A

	CabeloNara()
		usr.overlays=null
		usr.escolheuCabelo=0
		var/icon/A= new('Icons/Cabelos/cabelo Nara.dmi')
		var/c = input("","Cor do Cabelo") as color
		Cabelo.icon = 'VejaComoFica/cabelos.dmi'
		Cabelo.icon_state = "shikamarufrente"
		cabelo = "shikamaru"
		Base.overlays = null
		Cabelo.icon += c
		Base.overlays +=Olho
		Base.overlays +=Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")
		A.icon += c
		usr.overlays +=A

	CabeloNeji()
		usr.overlays=null
		usr.escolheuCabelo=0
		var/icon/A= new('Icons/Cabelos/cabelo Neji.dmi')
		var/c = input("","Cor do Cabelo") as color
		Cabelo.icon = 'VejaComoFica/cabelos.dmi'
		Cabelo.icon_state = "nejifrente"
		cabelo = "neji"
		Base.overlays = null
		Cabelo.icon += c
		Base.overlays +=Olho
		Base.overlays +=Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")
		A.icon += c
		usr.overlays +=A

	CabeloOrochimaru()
		usr.overlays=null
		usr.escolheuCabelo=0
		var/icon/A= new('Icons/Cabelos/cabelo Orochimaru.dmi')
		var/c = input("","Cor do Cabelo") as color
		Cabelo.icon = 'VejaComoFica/cabelos.dmi'
		Cabelo.icon_state = "orochimarufrente"
		cabelo = "orochimaru"
		Base.overlays = null
		Cabelo.icon += c
		Base.overlays +=Olho
		Base.overlays +=Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")
		A.icon += c
		usr.overlays +=A

	CabeloSai()
		usr.overlays=null
		usr.escolheuCabelo=0
		var/icon/A= new('Icons/Cabelos/cabelo Sai.dmi')
		var/c = input("","Cor do Cabelo") as color
		Cabelo.icon = 'VejaComoFica/cabelos.dmi'
		Cabelo.icon_state = "saifrente"
		cabelo = "sai"
		Base.overlays = null
		Cabelo.icon += c
		Base.overlays +=Olho
		Base.overlays +=Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")
		A.icon += c
		usr.overlays +=A

	CabeloSasuke()
		usr.overlays=null
		usr.escolheuCabelo=0
		var/icon/A= new('Icons/Cabelos/cabelo Sasuke.dmi')
		var/c = input("","Cor do Cabelo") as color
		Cabelo.icon = 'VejaComoFica/cabelos.dmi'
		Cabelo.icon_state = "sasukefrente"
		cabelo = "sasuke"
		Base.overlays = null
		Cabelo.icon += c
		Base.overlays +=Olho
		Base.overlays +=Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")
		A.icon += c
		usr.overlays +=A

	CabeloNaruto()
		usr.overlays=null
		usr.escolheuCabelo=0
		var/icon/A= new('Icons/Cabelos/cabelo Uzumaki.dmi')
		var/c = input("","Cor do Cabelo") as color
		Cabelo.icon = 'VejaComoFica/cabelos.dmi'
		Cabelo.icon_state = "narutofrente"
		cabelo = "naruto"
		Base.overlays = null
		Cabelo.icon += c
		Base.overlays +=Olho
		Base.overlays +=Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")
		A.icon += c
		usr.overlays +=A

	CabeloMinato()
		usr.overlays=null
		usr.escolheuCabelo=0
		var/icon/A= new('Icons/Cabelos/cabelo Minato.dmi')
		var/c = input("","Cor do Cabelo") as color
		Cabelo.icon = 'VejaComoFica/cabelos.dmi'
		Cabelo.icon_state = "minatofrente"
		cabelo = "minato"
		Base.overlays = null
		Cabelo.icon += c
		Base.overlays +=Olho
		Base.overlays +=Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")
		A.icon += c
		usr.overlays +=A

	CabeloNagato()
		usr.overlays=null
		usr.escolheuCabelo=0
		var/icon/A= new('Icons/Cabelos/cabelo Nagato.dmi')
		var/c = input("","Cor do Cabelo") as color
		Cabelo.icon = 'VejaComoFica/cabelos.dmi'
		Cabelo.icon_state = "narutofrente"
		cabelo = "naruto"
		Base.overlays = null
		Cabelo.icon += c
		Base.overlays +=Olho
		Base.overlays +=Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")
		A.icon += c
		usr.overlays +=A

	CabeloHaku()
		usr.overlays=null
		usr.escolheuCabelo=0
		var/icon/A= new('Icons/Cabelos/cabelo Haku.dmi')
		var/c = input("","Cor do Cabelo") as color
		Cabelo.icon = 'VejaComoFica/cabelos.dmi'
		Cabelo.icon_state = "hakufrente"
		cabelo = "haku"
		Base.overlays = null
		Cabelo.icon += c
		Base.overlays +=Olho
		Base.overlays +=Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")
		A.icon += c
		A.icon += c
		usr.overlays +=A
	Direita()
		Base.icon_state = "[base]direita"
		Cabelo.icon_state = "[cabelo]direita"
		Olho.icon_state = "olhodireita"
		Base.overlays = null
		Base.overlays += Olho
		Base.overlays += Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")
	Esquerda()
		Base.icon_state = "[base]esquerda"
		Cabelo.icon_state = "[cabelo]esquerda"
		Olho.icon_state = "olhoesquerda"
		Base.overlays = null
		Base.overlays +=Olho
		Base.overlays += Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")
	Cima()
		Base.icon_state = "[base]costas"
		Cabelo.icon_state = "[cabelo]costas"
		Olho.icon_state = "olhocostas"
		Base.overlays = null
		Base.overlays +=Olho
		Base.overlays += Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")
	Baixo()
		Base.icon_state = "[base]frente"
		Cabelo.icon_state = "[cabelo]frente"
		Olho.icon_state = "olhofrente"
		Base.overlays = null
		Base.overlays += Olho
		Base.overlays += Cabelo
		winset(src, "terceira.base", "current-cell=[-1]")
		src << output(Base, "terceira.base")
		winset(src, "terceira.base", "cells=[1]")


mob/verb
	Pronto1()
		var/soma = escolheunome + escolheubase
		if(soma == 2)
			winset(src,"terceira","is-visible = false")
			winset(src,"quarta","is-visible = true")
		else
			var/erro = "Ou você não escolheu a base ou ainda não escolheu o seu nome, por favor, corrija isto e então finalize."
			winset(src,"terceira.dicalabel","text = \"[erro]\"")

	Pronto2()
		var/soma = escolheuvila + escolheuclan
		if(soma != 2)
			return
		if(soma == 2)
			winset(src,"carregando","pos = 300x180")
			winset(src,"carregando","is-visible=true")
			winset(src,"hpchexp.labelnome","text = [usr.name]")
			tamanhotela = winget(src,"mainwindow.map1","size")
			usr.podesalvar=1
			usr.invisibility=10
			usr.see_invisible=10
			usr.nadando=0
			usr.finalizado=1
			usr.loc = locate(1,1,1)
			usr.paralisado=0
			if(usr.Vila=="Konoha")
				usr.faceicon='Pngs/KonohaIcone.png'
			if(usr.Vila=="Suna")
				usr.faceicon='Pngs/SunaIcone.png'
			if(usr.Vila=="Kiri")
				usr.faceicon='Pngs/KiriIcone.png'
			if(usr.Vila=="Kumo")
				usr.faceicon='Pngs/KumoIcone.png'
			if(usr.Vila=="Iwa")
				usr.faceicon='Pngs/IwaIcone.png'
			AlturaLargura()
			Atalhos()
			Espere()

mob/proc/Browser(bg,cor,texto)
	var/html="<html><head><title>Naruto Shippuuden Dattebayo</title></head>\
		<body bgcolor=[bg]><font color=[cor]>[texto]"
	src<<browse(html,"window=Naruto Shippuuden Dattebayo")

