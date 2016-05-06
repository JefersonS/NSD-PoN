turf/density
	density0
		density=0
	density1
		density=1
	moblayer
		layer = MOB_LAYER + 1000
	moblayernormal
		layer = MOB_LAYER + 0


turf/Chao
	Grama
		icon='Novas turfs/turf.dmi'
		icon_state="Grama"
		density=0
	Pedra
		icon='Turfs/chaopedra.dmi'
		icon_state="chao"
		density=0
	teste
		icon='Turfs/turfteste.dmi'
		icon_state="1"
		density=0
	Areia
		icon='Novas turfs/turf.dmi'
		icon_state="Areia"
		density=0
	bordaareia1
		icon='Novas turfs/turf.dmi'
		icon_state="bordaareia1"
		density=0
	bordaareia2
		icon='Novas turfs/turf.dmi'
		icon_state="bordaareia2"
		density=0
	bordaareia3
		icon='Novas turfs/turf.dmi'
		icon_state="bordaareia3"
		density=0
	bordaareia4
		icon='Novas turfs/turf.dmi'
		icon_state="bordaareia4"
		density=0
	terra
		icon='Novas turfs/turf.dmi'
		icon_state="terra"
		density=0
	bordaterra1
		icon='Novas turfs/turf.dmi'
		icon_state="bordaterra1"
		density=0
	bordaterra2
		icon='Novas turfs/turf.dmi'
		icon_state="bordaterra2"
		density=0
	bordaterra3
		icon='Novas turfs/turf.dmi'
		icon_state="bordaterra3"
		density=0
	bordaterra4
		icon='Novas turfs/turf.dmi'
		icon_state="bordaterra4"
		density=0
	Neve
		icon='Turfs/turf.dmi'
		icon_state="neve"
		density=0
	pegadaneve
		icon='Turfs/turf.dmi'
		icon_state="pegada neve"
		density=0
	pegadaneve2
		icon='Turfs/turf.dmi'
		icon_state="pegada neve2"
		density=0
	pegadaneve3
		icon='Turfs/turf.dmi'
		icon_state="pegada neve3"
		density=0
	pegadaneve4
		icon='Turfs/turf.dmi'
		icon_state="pegada neve4"
		density=0
	parederochas
		icon='Turfs/turf.dmi'
		icon_state="parede rochas"
		density=1
	Agua
		icon='Turfs/turf.dmi'
		icon_state="agua"
		density=0
/*		Enter(atom/A)
			if(ismob(A))
				var/mob/M=A
				if(M.paralisado==)
					return 0
				else
					return 1
			else
				return 0 */
/*		Entered(A)
			if(ismob(A))
				var/mob/M=A
				if(M.nadando==1)
					M.icon_state="nadar"
					M.nadando2=1
					M.recuperando=0
					M.Res+=rand(0,0.1)
					M.verificarlimite2(M)
				//	M.respiracao-=rand(5,12)
					M.natacaoxp+=rand(0,0.1)
					M.CheckarHabilidade()
				else
					M.naagua=1
					spawn() M.PerderChakraAuto()
					M.icon_state=""
					M.chakra-=rand(5,7)
					M.Mchakra+=rand(0,0.2)
					if(M.chakra<=0)
						if(M.natacao>=1)
							M.paralisado=0
							M.icon_state="nadar"
							M.nadando = 1
							M.respiracao=M.Res*10
							M.chakra=1
							M.naagua=0
						else
							M.afogando = 1
							M.naagua=0
							M.icon_state="nadar"
							spawn() M.PerderHPAuto(M)
		Exited(mob/M)
			if(ismob(M))
				if(M.nadando==1)
					M.icon_state=""
				//M.nadando=0
				M.icon_state=""
				M.naagua=0
				M.nadando2=0
				M.afogando=0
				return 1
			else if(isobj(M))
				return 1 */
	Agua2
		icon='Turfs/turf.dmi'
		icon_state="agua2"
		density=1
	Agua3
		icon='Turfs/turf.dmi'
		icon_state="agua3"
		density=1
	Agua4
		icon='Turfs/turf.dmi'
		icon_state="agua4"
		density=1
	Agua5
		icon='Turfs/turf.dmi'
		icon_state="agua5"
		density=1
	Agua6
		icon='Turfs/turf.dmi'
		icon_state="agua6"
		density=1
	Agua7
		icon='Turfs/turf.dmi'
		icon_state="agua7"
		density=1
	Agua8
		icon='Turfs/turf.dmi'
		icon_state="agua8"
		density=1
	Agua9
		icon='Turfs/turf.dmi'
		icon_state="agua9"
		density=1
	chaochuva
		icon='Turfs2/turf.dmi'
		icon_state="chaochuva"
		density=0
	mato
		icon='Turfs2/turfsgerais2.dmi'
		icon_state="grama9"
		density=0
	simbolokumo01
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo01"
		density=0
	simbolokumo02
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo02"
		density=0
	simbolokumo03
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo03"
		density=0
	simbolokumo04
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo04"
		density=0
	simbolokumo05
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo05"
		density=0
	simbolokumo06
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo06"
		density=0
	simbolokumo07
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo07"
		density=0
	simbolokumo08
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo08"
		density=0
	simbolokumo09
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo09"
		density=0
	simbolokumo10
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo10"
		density=0
	simbolokumo11
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo11"
		density=0
	simbolokumo12
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo12"
		density=0
	simbolokumo13
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo13"
		density=0
	simbolokumo14
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo14"
		density=0
	simbolokumo15
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo15"
		density=0
	simbolokumo16
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo16"
		density=0
	simbolokumo17
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo17"
		density=0
	simbolokumo18
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo18"
		density=0
	simbolokumo19
		icon='Turfs2/turf.dmi'
		icon_state="simbolokumo19"
		density=0
	nevoa
		icon='Turfs2/kirigakure.dmi'
		density=0
		layer = MOB_LAYER + 1000


turf/montanhas/montanhagrama
	montanhagrama1
		icon='Turfs/turfs.dmi'
		icon_state="montanhagrama1"
		density=1
	montanhagrama2
		icon='Turfs/turfs.dmi'
		icon_state="montanhagrama2"
		density=1
	montanhagrama3
		icon='Turfs/turfs.dmi'
		icon_state="montanhagrama3"
		density=1
	montanhagrama4
		icon='Turfs/turfs.dmi'
		icon_state="montanhagrama4"
		density=1
	montanhagrama5
		icon='Turfs/turfs.dmi'
		icon_state="montanhagrama5"
		density=1
	montanhagrama6
		icon='Turfs/turfs.dmi'
		icon_state="montanhagrama6"
		density=1
	montanhagrama7
		icon='Turfs/turfs.dmi'
		icon_state="montanhagrama7"
		density=1
	montanhagrama8
		icon='Turfs/turfs.dmi'
		icon_state="montanhagrama8"
		density=1
	montanhagrama9
		icon='Turfs/turfs.dmi'
		icon_state="montanhagrama9"
		density=1
	montanhagrama10
		icon='Turfs/turfs.dmi'
		icon_state="montanhagrama10"
		density=1
	montanhagrama11
		icon='Turfs/turfs.dmi'
		icon_state="montanhagrama11"
		density=1
	montanhagrama12
		icon='Turfs/turfs.dmi'
		icon_state="montanhagrama12"
		density=1
	montanhagrama13
		icon='Turfs/turfs.dmi'
		icon_state="montanhagrama13"
		density=1
	montanhagrama14
		icon='Turfs/turfs.dmi'
		icon_state="montanhagrama14"
		density=1
	chaomontanhagrama
		icon='Turfs/turfs.dmi'
		icon_state="chaomontanhagrama"
		density=0


turf/montanhas/montanhasprontas
	montanhapontuda
		icon='Turfs/montanhas.dmi'
		icon_state="1"
		density=0
		layer = MOB_LAYER + 0
	montanhaterra
		icon='Turfs/montanhas.dmi'
		icon_state="2"
		density=1
		layer = MOB_LAYER + 1000
turf/montanhas/montanhasprontas/montanhakumo1
	montanhakumo1
		icon='Turfs2/montanhakumo.dmi'
		icon_state="0,0"
		density=0
		layer = MOB_LAYER + 0
	montanhakumo2
		icon='Turfs2/montanhakumo.dmi'
		icon_state="0,1"
		density=0
		layer = MOB_LAYER + 1000
turf/montanhas/montanhasprontas/montanhakumo2
	montanhakumo1
		icon='Turfs2/montanhakumo.dmi'
		icon_state="b0,0"
		density=0
		layer = MOB_LAYER + 0
	montanhakumo2
		icon='Turfs2/montanhakumo.dmi'
		icon_state="b0,1"
		density=0
		layer = MOB_LAYER + 1000
	montanhakumo3
		icon='Turfs2/montanhakumo.dmi'
		icon_state="b1,0"
		density=0
		layer = MOB_LAYER + 0


turf/montanhas/montanhapedra
	montanhapedra1
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra1"
		density=1
	montanhapedra2
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra2"
		density=1
	montanhapedra3
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra3"
		density=1
	montanhapedra4
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra4"
		density=1
	montanhapedra5
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra5"
		density=1
	montanhapedra6
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra6"
		density=1
	montanhapedra7
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra7"
		density=1
	montanhapedra8
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra8"
		density=1
	montanhapedra9
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra9"
		density=1
	montanhapedra10
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra10"
		density=1
	montanhapedra11
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra11"
		density=1
	montanhapedra12
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra12"
		density=1
	montanhapedra13
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra13"
		density=1
	montanhapedra14
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra14"
		density=1
	montanhapedra15
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra15"
		density=1
	montanhapedra16
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra16"
		density=1
	montanhapedra17
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra17"
		density=1
	montanhapedra18
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra18"
		density=1
	montanhapedra19
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra19"
		density=1
	montanhapedra20
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra20"
		density=1
	montanhapedra21
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra21"
		density=1
	montanhapedra22
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra22"
		density=1
	montanhapedra23
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra23"
		density=1
	montanhapedra24
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra24"
		density=1
	montanhapedra25
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra25"
		density=1
	montanhapedra26
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra26"
		density=1
	montanhapedra27
		icon='Turfs/turfs.dmi'
		icon_state="montanhapedra27"
		density=1
	chaopedra
		icon='Turfs/turfs.dmi'
		icon_state="chaopedra"
		density=0


turf/montanhas/montanhaponta
	montanhaponta1
		icon='Turfs/turfs.dmi'
		icon_state="montanhaponta1"
		density=1
	montanhaponta2
		icon='Turfs/turfs.dmi'
		icon_state="montanhaponta2"
		density=1
	montanhaponta3
		icon='Turfs/turfs.dmi'
		icon_state="montanhaponta3"
		density=1
	montanhaponta4
		icon='Turfs/turfs.dmi'
		icon_state="montanhaponta4"
		density=1
	montanhaponta5
		icon='Turfs/turfs.dmi'
		icon_state="montanhaponta5"
		density=1
	montanhaponta6
		icon='Turfs/turfs.dmi'
		icon_state="montanhaponta6"
		density=1
	montanhaponta7
		icon='Turfs/turfs.dmi'
		icon_state="montanhaponta7"
		density=1
	montanhaponta8
		icon='Turfs/turfs.dmi'
		icon_state="montanhaponta8"
		density=1
	montanhaponta9
		icon='Turfs/turfs.dmi'
		icon_state="montanhaponta9"
		density=1
	montanhaponta10
		icon='Turfs/turfs.dmi'
		icon_state="montanhaponta10"
		density=1
	montanhaponta11
		icon='Turfs/turfs.dmi'
		icon_state="montanhaponta11"
		density=1
	montanhaponta12
		icon='Turfs/turfs.dmi'
		icon_state="montanhaponta12"
		density=1
	montanhaponta13
		icon='Turfs/turfs.dmi'
		icon_state="montanhaponta13"
		density=1
	montanhaponta14
		icon='Turfs/turfs.dmi'
		icon_state="montanhaponta14"
		density=1
	montanhaponta15
		icon='Turfs/turfs.dmi'
		icon_state="montanhaponta15"
		density=1


turf/montanhas/montanharocha
	montanharocha1
		icon='Turfs/turfs.dmi'
		icon_state="montanharocha1"
		density=1
	montanharocha2
		icon='Turfs/turfs.dmi'
		icon_state="montanharocha2"
		density=1
	montanharocha3
		icon='Turfs/turfs.dmi'
		icon_state="montanharocha3"
		density=1
	montanharocha4
		icon='Turfs/turfs.dmi'
		icon_state="montanharocha4"
		density=1
	montanharocha5
		icon='Turfs/turfs.dmi'
		icon_state="montanharocha5"
		density=1
	montanharocha6
		icon='Turfs/turfs.dmi'
		icon_state="montanharocha6"
		density=1
	montanharocha7
		icon='Turfs/turfs.dmi'
		icon_state="montanharocha7"
		density=1
	montanharocha8
		icon='Turfs/turfs.dmi'
		icon_state="montanharocha8"
		density=1


turf/montanhas/montanhanegra
	montanhanegra1
		icon='Turfs/turfs.dmi'
		icon_state="montanhanegra1"
		density=1
	montanhanegra2
		icon='Turfs/turfs.dmi'
		icon_state="montanhanegra2"
		density=1
	montanhanegra3
		icon='Turfs/turfs.dmi'
		icon_state="montanhanegra3"
		density=1
	montanhanegra4
		icon='Turfs/turfs.dmi'
		icon_state="montanhanegra4"
		density=1
	montanhanegra5
		icon='Turfs/turfs.dmi'
		icon_state="montanhanegra5"
		density=1
	montanhanegra6
		icon='Turfs/turfs.dmi'
		icon_state="montanhanegra6"
		density=1
	montanhanegra7
		icon='Turfs/turfs.dmi'
		icon_state="montanhanegra7"
		density=1
	montanhanegra8
		icon='Turfs/turfs.dmi'
		icon_state="montanhanegra8"
		density=1
	pisomontanhanegra
		icon='Turfs/turfs.dmi'
		icon_state="pisomontanhanegra"
		density=0


turf/montanhas/montanhaneve
	montanhaneve1
		icon='Turfs/turfs.dmi'
		icon_state="montanhaneve1"
		density=1
	montanhaneve2
		icon='Turfs/turfs.dmi'
		icon_state="montanhaneve2"
		density=1
	montanhaneve3
		icon='Turfs/turfs.dmi'
		icon_state="montanhaneve3"
		density=1
	montanhaneve4
		icon='Turfs/turfs.dmi'
		icon_state="montanhaneve4"
		density=1
	montanhaneve5
		icon='Turfs/turfs.dmi'
		icon_state="montanhaneve5"
		density=1
	montanhaneve6
		icon='Turfs/turfs.dmi'
		icon_state="montanhaneve6"
		density=1
	montanhaneve7
		icon='Turfs/turfs.dmi'
		icon_state="montanhaneve7"
		density=1
	montanhaneve8
		icon='Turfs/turfs.dmi'
		icon_state="montanhaneve8"
		density=1
	chaomontanhaneve
		icon='Turfs/turfs.dmi'
		icon_state="chaomontanhaneve"
		density=0



turf/montanhas/montanhaneve2
	montanhaneve01
		icon='Turfs2/montanhakiri.dmi'
		icon_state="19"
		density=1
	montanhaneve02
		icon='Turfs2/montanhakiri.dmi'
		icon_state="20"
		density=1
	montanhaneve03
		icon='Turfs2/montanhakiri.dmi'
		icon_state="21"
		density=1
	montanhaneve04
		icon='Turfs2/montanhakiri.dmi'
		icon_state="22"
		density=1
	montanhaneve05
		icon='Turfs2/montanhakiri.dmi'
		icon_state="23"
		density=1
	montanhaneve06
		icon='Turfs2/montanhakiri.dmi'
		icon_state="24"
		density=1
	montanhaneve07
		icon='Turfs2/montanhakiri.dmi'
		icon_state="25"
		density=1
	montanhaneve08
		icon='Turfs2/montanhakiri.dmi'
		icon_state="26"
		density=1
	montanhaneve09
		icon='Turfs2/montanhakiri.dmi'
		icon_state="27"
		density=1
	montanhaneve10
		icon='Turfs2/montanhakiri.dmi'
		icon_state="28"
		density=1
	montanhaneve11
		icon='Turfs2/montanhakiri.dmi'
		icon_state="29"
		density=1
	montanhaneve12
		icon='Turfs2/montanhakiri.dmi'
		icon_state="30"
		density=1
	montanhaneve13
		icon='Turfs2/montanhakiri.dmi'
		icon_state="31"
		density=1
	montanhaneve14
		icon='Turfs2/montanhakiri.dmi'
		icon_state="32"
		density=1
	montanhaneve15
		icon='Turfs2/montanhakiri.dmi'
		icon_state="33"
		density=1
	aguamontanhaneve1
		icon='Turfs2/montanhakiri.dmi'
		icon_state="34"
		density=1
	montanhaneve16
		icon='Turfs2/montanhakiri.dmi'
		icon_state="35"
		density=1
	montanhaneve17
		icon='Turfs2/montanhakiri.dmi'
		icon_state="36"
		density=1
	montanhaneve18
		icon='Turfs2/montanhakiri.dmi'
		icon_state="37"
		density=1
	montanhaneve19
		icon='Turfs2/montanhakiri.dmi'
		icon_state="38"
		density=1
	montanhaneve20
		icon='Turfs2/montanhakiri.dmi'
		icon_state="39"
		density=1
	montanhaneve21
		icon='Turfs2/montanhakiri.dmi'
		icon_state="40"
		density=1

turf/edificios
	academiakonoha
		icon='Turfs/academiakonoha.png'
		layer = MOB_LAYER + 0
		density=0
	academiasuna
		icon='Turfs/academiasuna.png'
		layer = MOB_LAYER + 0
		density=0
	academiakumo1
		icon='Turfs2/academianinja.dmi'
		icon_state="k0,0"
		layer = MOB_LAYER + 0
		density=0
	academiakumo2
		icon='Turfs2/academianinja.dmi'
		icon_state="k1,0"
		layer = MOB_LAYER + 0
		density=0
	academiakiri
		icon='Turfs/academiakiri.png'
		layer = MOB_LAYER + 0
		density=0
	academiaiwa
		icon='Turfs/academiaiwa.png'
		layer = MOB_LAYER + 0
		density=0
	ramen
		icon='Turfs2/ichiraku.dmi'
		layer = MOB_LAYER + 0
		density=0
	casaclan
		icon='Turfs/casaclan.png'
		layer = MOB_LAYER + 0
		density=0
	casahachibi
		icon='Turfs/casahachibi.png'
		layer = MOB_LAYER + 0
		density=0
	casakazekage
		icon='Turfs/casakazekage.png'
		layer = MOB_LAYER + 0
		density=0
	casasuna
		icon='Turfs/casasuna.png'
		layer = MOB_LAYER + 0
		density=0
	casasuna2
		icon='Turfs/casasuna2.png'
		layer = MOB_LAYER + 0
		density=0
	cs
		icon='Turfs/cs.png'
		layer = MOB_LAYER + 0
		density=0
	entradaakatsuki
		icon='Turfs/akatsukienter.png'
		layer = MOB_LAYER + 0
		density=0
	entradaiwa
		icon='Turfs/entradaiwa.png'
		density=1
		layer = MOB_LAYER + 0
	entradakumo
		icon='Turfs/entradakumo.png'
		layer = MOB_LAYER + 0
		density=0
	hospitaliwagakure
		icon='Turfs/hospitaliwagakure.png'
		layer = MOB_LAYER + 0
		density=0
	hospitalkirigakure
		icon='Turfs/hospitalkirigakure.png'
		layer = MOB_LAYER + 0
		density=0
	hospitalkonoha
		icon='Turfs/hospitalkonoha.png'
		layer = MOB_LAYER + 0
		density=0
	hospitalkumogakure
		icon='Turfs/hospitalkumogakure.png'
		layer = MOB_LAYER + 0
		density=0
	hospitalsuna
		icon='Turfs/hospitalsuna.png'
		layer = MOB_LAYER + 0
		density=0
	temploiwa1
		icon='Turfs2/casakage.dmi'
		icon_state="iwa0,0"
		layer = MOB_LAYER + 0
	temploiwa2
		icon='Turfs2/casakage.dmi'
		icon_state="iwa0,1"
		layer = MOB_LAYER + 0
	temploiwa3
		icon='Turfs2/casakage.dmi'
		icon_state="iwa0,2"
		layer = MOB_LAYER + 0
	lojasuna
		icon='Turfs/lojasuna.png'
		layer = MOB_LAYER + 0
		density=0
	ponte
		icon='Turfs/ponte.png'
		layer = MOB_LAYER + 0
		density=0
	pontte
		icon='Turfs/pontte.png'
		layer = MOB_LAYER + 0
		density=0
	rostokages
		icon='Turfs2/rostokages.dmi'
		icon_state="0,0"
		layer = MOB_LAYER + 0
		density=0
	rostokages2
		icon='Turfs2/rostokages.dmi'
		icon_state="1,0"
		layer = MOB_LAYER + 0
		density=0
	tavernasuna
		icon='Turfs/tavernasuna.png'
		layer = MOB_LAYER + 0
		density=0
	valedofim
		icon='Turfs/vale_do_fim.png'
		layer = MOB_LAYER + 1002
		density=0
	arenacs1
		icon='Turfs2/arenachuunin.dmi'
		icon_state="0,0"
		layer = MOB_LAYER + 0
		density=0
	arenacs2
		icon='Turfs2/arenachuunin.dmi'
		icon_state="1,0"
		layer = MOB_LAYER + 0
		density=0
	arenacs3
		icon='Turfs2/arenachuunin.dmi'
		icon_state="0,1"
		layer = MOB_LAYER + 0
		density=0
	arenacs4
		icon='Turfs2/arenachuunin.dmi'
		icon_state="1,1"
		layer = MOB_LAYER + 0
		density=0
	arenacs5
		icon='Turfs2/arenachuunin.dmi'
		icon_state="2,0"
		layer = MOB_LAYER + 0
		density=0
	arenacs6
		icon='Turfs2/arenachuunin.dmi'
		icon_state="2,1"
		layer = MOB_LAYER + 0
		density=0
	statuaakatsuki
		icon='Turfs/statuaakatsuki.jpg'
		layer = MOB_LAYER + 0
		density=0
	taverna1
		icon='Turfs2/taverna.dmi'
		icon_state="1"
		layer = MOB_LAYER + 0
		density=0
	taverna2
		icon='Turfs2/taverna.dmi'
		icon_state="2"
		layer = MOB_LAYER + 0
		density=0
	taverna3
		icon='Turfs2/taverna.dmi'
		icon_state="3"
		layer = MOB_LAYER + 0
		density=0


turf/edificios/prediochuva
	predio1
		icon='Turfs2/Prediosamegakure.dmi'
		icon_state="0,0"
		density=1
		layer = MOB_LAYER + 0
	predio2
		icon='Turfs2/Prediosamegakure.dmi'
		icon_state="0,1"
		density=1
		layer = MOB_LAYER + 1000

turf/edificios/cavernaorochimaru
	caverna1
		icon='Turfs2/cavernaorochimaru.dmi'
		icon_state="0,0"
		density=1
		layer = MOB_LAYER + 0
	caverna2
		icon='Turfs2/cavernaorochimaru.dmi'
		icon_state="1,0"
		density=1
		layer = MOB_LAYER + 1000

turf/edificios/templomizukage
	t1
		icon='Turfs2/templokiri.dmi'
		icon_state="0,0"
		density=1
		layer = MOB_LAYER + 0
	t2
		icon='Turfs2/templokiri.dmi'
		icon_state="0,1"
		density=1
		layer = MOB_LAYER + 1000
	t3
		icon='Turfs2/templokiri.dmi'
		icon_state="1,0"
		density=1
		layer = MOB_LAYER + 0
	t4
		icon='Turfs2/templokiri.dmi'
		icon_state="1,1"
		density=1
		layer = MOB_LAYER + 1000

turf/edificios/temploraikage
	t1
		icon='Turfs2/templokumo.dmi'
		icon_state="0,0"
		density=1
		layer = MOB_LAYER + 0
	t2
		icon='Turfs2/templokumo.dmi'
		icon_state="0,1"
		density=1
		layer = MOB_LAYER + 0
	t3
		icon='Turfs2/templokumo.dmi'
		icon_state="1,0"
		density=1
		layer = MOB_LAYER + 0
	t4
		icon='Turfs2/templokumo.dmi'
		icon_state="1,1"
		density=1
		layer = MOB_LAYER + 0
	t5
		icon='Turfs2/templokumo.dmi'
		icon_state="0,2"
		density=1
		layer = MOB_LAYER + 0
	t6
		icon='Turfs2/templokumo.dmi'
		icon_state="1,2"
		density=1
		layer = MOB_LAYER + 0
	tb1
		icon='Turfs2/templokumo.dmi'
		icon_state="b0,0"
		density=1
		layer = MOB_LAYER + 0
	tb2
		icon='Turfs2/templokumo.dmi'
		icon_state="b0,1"
		density=1
		layer = MOB_LAYER + 0
	tb3
		icon='Turfs2/templokumo.dmi'
		icon_state="b1,0"
		density=1
		layer = MOB_LAYER + 0
	tb4
		icon='Turfs2/templokumo.dmi'
		icon_state="b1,1"
		density=1
		layer = MOB_LAYER + 0
	tb5
		icon='Turfs2/templokumo.dmi'
		icon_state="b0,2"
		density=1
		layer = MOB_LAYER + 0
	tb6
		icon='Turfs2/templokumo.dmi'
		icon_state="b1,2"
		density=1
		layer = MOB_LAYER + 0



turf/arvores/
	arvores1
		icon='Turfs2/arvores.dmi'
		icon_state="1"
		density=0
		layer = MOB_LAYER + 0
	arvores2
		icon='Turfs2/arvores.dmi'
		icon_state="2"
		density=0
		layer = MOB_LAYER + 0
	arvores3
		icon='Turfs2/arvores2.dmi'
		icon_state="3"
		density=0
		layer = MOB_LAYER + 0
	arvores4
		icon='Turfs2/arvores2.dmi'
		icon_state="4"
		density=0
		layer = MOB_LAYER + 0
	arvores5
		icon='Turfs2/arvores3.dmi'
		icon_state="5"
		density=0
		layer = MOB_LAYER + 0



turf/arvores/arvore
	arvore
		icon='Turfs/arvore.dmi'
		icon_state="1"
		density=0
		layer = MOB_LAYER + 1000
	arvore2
		icon='Turfs/arvore.dmi'
		icon_state="2"
		density=0
		layer = MOB_LAYER + 1000
	arvore3
		icon='Turfs/arvore.dmi'
		icon_state="3"
		density=0
		layer = MOB_LAYER + 1000
	arvore4
		icon='Turfs/arvore.dmi'
		icon_state="4"
		density=0
		layer = MOB_LAYER + 1000
	arvore5
		icon='Turfs/arvore.dmi'
		icon_state="5"
		density=0
		layer = MOB_LAYER + 1000
	arvore6
		icon='Turfs/arvore.dmi'
		icon_state="6"
		density=0
		layer = MOB_LAYER + 1000
	arvore7
		icon='Turfs/arvore.dmi'
		icon_state="7"
		density=0
		layer = MOB_LAYER + 1000
	arvore8
		icon='Turfs/arvore.dmi'
		icon_state="8"
		density=0
		layer = MOB_LAYER + 1000
	arvore9
		icon='Turfs/arvore.dmi'
		icon_state="9"
		density=0
		layer = MOB_LAYER + 1000
	arvore10
		icon='Turfs/arvore.dmi'
		icon_state="10"
		density=0
		layer = MOB_LAYER + 1000
	arvore11
		icon='Turfs/arvore.dmi'
		icon_state="11"
		density=0
		layer = MOB_LAYER + 1000
	arvore12
		icon='Turfs/arvore.dmi'
		icon_state="12"
		density=0
		layer = MOB_LAYER + 1000
	arvore13
		icon='Turfs/arvore.dmi'
		icon_state="13"
		density=0
		layer = MOB_LAYER + 1000
	arvore14
		icon='Turfs/arvore.dmi'
		icon_state="14"
		density=1
		layer = MOB_LAYER + 0
	arvore15
		icon='Turfs/arvore.dmi'
		icon_state="15"
		density=1
		layer = MOB_LAYER + 0
	arvore16
		icon='Turfs/arvore.dmi'
		icon_state="16"
		density=0
		layer = MOB_LAYER + 1000
	arvore17
		icon='Turfs/arvore.dmi'
		icon_state="17"
		density=1
		layer = MOB_LAYER + 0
	arvore18
		icon='Turfs/arvore.dmi'
		icon_state="18"
		density=1
		layer = MOB_LAYER + 0
	arvore19
		icon='Turfs/arvore.dmi'
		icon_state="19"
		density=0
		layer = MOB_LAYER + 1000


turf/arvores/arvore2
	arvore
		icon='Turfs/arvore2.dmi'
		icon_state="1"
		density=1
	arvore2
		icon='Turfs/arvore2.dmi'
		icon_state="2"
		density=1
	arvore3
		icon='Turfs/arvore2.dmi'
		icon_state="3"
		density=1
	arvore4
		icon='Turfs/arvore2.dmi'
		icon_state="4"
		density=1
	arvore5
		icon='Turfs/arvore2.dmi'
		icon_state="5"
		density=1
	arvore6
		icon='Turfs/arvore2.dmi'
		icon_state="6"
		density=1
	arvore7
		icon='Turfs/arvore2.dmi'
		icon_state="7"
		density=1
	arvore8
		icon='Turfs/arvore2.dmi'
		icon_state="8"
		density=1
	arvore9
		icon='Turfs/arvore2.dmi'
		icon_state="9"
		density=1
	arvore10
		icon='Turfs/arvore2.dmi'
		icon_state="10"
		density=1
	arvore11
		icon='Turfs/arvore2.dmi'
		icon_state="11"
		density=1
	arvore12
		icon='Turfs/arvore2.dmi'
		icon_state="12"
		density=1


turf/arvores/arvoreneve
	arvoreneve1
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve1"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve2
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve2"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve3
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve3"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve4
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve4"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve5
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve5"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve6
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve6"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve7
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve7"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve8
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve8"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve9
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve9"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve10
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve10"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve11
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve11"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve12
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve12"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve13
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve13"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve14
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve14"
		density=1
	arvoreneve15
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve15"
		density=1
	arvoreneve16
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve16"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve17
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve17"
		density=1
	arvoreneve18
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve18"
		density=1
	arvoreneve19
		icon='Turfs/turfs.dmi'
		icon_state="arvoreneve19"
		density=1

turf/arvores/arvoreneve2
	arvoreneve1
		icon='Turfs2/arvoreneve.dmi'
		icon_state="1"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve2
		icon='Turfs2/arvoreneve.dmi'
		icon_state="2"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve3
		icon='Turfs2/arvoreneve.dmi'
		icon_state="3"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve4
		icon='Turfs2/arvoreneve.dmi'
		icon_state="4"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve5
		icon='Turfs2/arvoreneve.dmi'
		icon_state="5"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve6
		icon='Turfs2/arvoreneve.dmi'
		icon_state="6"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve7
		icon='Turfs2/arvoreneve.dmi'
		icon_state="7"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve8
		icon='Turfs2/arvoreneve.dmi'
		icon_state="8"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve9
		icon='Turfs2/arvoreneve.dmi'
		icon_state="9"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve10
		icon='Turfs2/arvoreneve.dmi'
		icon_state="10"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve11
		icon='Turfs2/arvoreneve.dmi'
		icon_state="11"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve12
		icon='Turfs2/arvoreneve.dmi'
		icon_state="12"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve13
		icon='Turfs2/arvoreneve.dmi'
		icon_state="13"
		density=1
	arvoreneve14
		icon='Turfs2/arvoreneve.dmi'
		icon_state="14"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve15
		icon='Turfs2/arvoreneve.dmi'
		icon_state="15"
		density=0
		layer = MOB_LAYER + 1000
	arvoreneve16
		icon='Turfs2/arvoreneve.dmi'
		icon_state="16"
		density=1
	arvoreneve17
		icon='Turfs2/arvoreneve.dmi'
		icon_state="17"
		density=0
	arvoreneve18
		icon='Turfs2/arvoreneve.dmi'
		icon_state="18"
		density=0



turf/arvores/arvorepequena
	arvore1
		icon='Turfs/turfs.dmi'
		icon_state="arvore1"
		density=1
	arvore2
		icon='Turfs/turfs.dmi'
		icon_state="arvore2"
		density=1
	arvore3
		icon='Turfs/turfs.dmi'
		icon_state="arvore3"
		density=1
	arvore4
		icon='Turfs/turfs.dmi'
		icon_state="arvore4"
		density=1


turf/arvores/arvorepequena2
	arvore1
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena1"
		density=1
	arvore2
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena2"
		density=1
	arvore3
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena3"
		density=1
	arvore4
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena4"
		density=1
	arvore5
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena5"
		density=1
	arvore6
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena6"
		density=1
	arvore7
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena7"
		density=1
	arvore8
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena8"
		density=1
	arvore9
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena9"
		density=1
	arvore10
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena10"
		density=1
	arvore11
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena11"
		density=1
	arvore12
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena12"
		density=1
	arvore13
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena13"
		density=1
	arvore14
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena14"
		density=1
	arvore15
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena15"
		density=1
	arvore16
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena16"
		density=1
	arvore17
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena17"
		density=1
	arvore18
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena18"
		density=1
	arvore19
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena19"
		density=1
	arvore20
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena20"
		density=1
	arvore21
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena21"
		density=1
	arvore22
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena22"
		density=1
	arvore23
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena23"
		density=1
	arvore24
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena24"
		density=1
	arvore25
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena25"
		density=1
	arvore26
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena26"
		density=1
	arvore27
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena27"
		density=1
	arvore28
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena28"
		density=1
	arvore29
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena29"
		density=1
	arvore30
		icon='Turfs/turfs.dmi'
		icon_state="arvorepequena30"
		density=1


turf/arvores/arvoremorta
	arvoremorta1
		icon='Turfs/turfs.dmi'
		icon_state="arvoremorta1"
		density=0
		layer = MOB_LAYER + 1000
	arvoremorta2
		icon='Turfs/turfs.dmi'
		icon_state="arvoremorta2"
		density=0
		layer = MOB_LAYER + 1000
	arvoremorta3
		icon='Turfs/turfs.dmi'
		icon_state="arvoremorta3"
		density=0
		layer = MOB_LAYER + 1000
	arvoremorta4
		icon='Turfs/turfs.dmi'
		icon_state="arvoremorta4"
		density=0
		layer = MOB_LAYER + 1000
	arvoremorta5
		icon='Turfs/turfs.dmi'
		icon_state="arvoremorta5"
		density=0
		layer = MOB_LAYER + 1000
	arvoremorta6
		icon='Turfs/turfs.dmi'
		icon_state="arvoremorta6"
		density=0
		layer = MOB_LAYER + 1000
	arvoremorta7
		icon='Turfs/turfs.dmi'
		icon_state="arvoremorta7"
		density=0
		layer = MOB_LAYER + 1000
	arvoremorta8
		icon='Turfs/turfs.dmi'
		icon_state="arvoremorta8"
		density=0
		layer = MOB_LAYER + 1000
	arvoremorta9
		icon='Turfs/turfs.dmi'
		icon_state="arvoremorta9"
		density=0
		layer = MOB_LAYER + 1000
	arvoremorta10
		icon='Turfs/turfs.dmi'
		icon_state="arvoremorta10"
		density=0
		layer = MOB_LAYER + 1000
	arvoremorta11
		icon='Turfs/turfs.dmi'
		icon_state="arvoremorta11"
		density=0
		layer = MOB_LAYER + 1000
	arvoremorta12
		icon='Turfs/turfs.dmi'
		icon_state="arvoremorta12"
		density=0
		layer = MOB_LAYER + 1000
	arvoremorta13
		icon='Turfs/turfs.dmi'
		icon_state="arvoremorta13"
		density=1
	arvoremorta14
		icon='Turfs/turfs.dmi'
		icon_state="arvoremorta14"
		density=1


turf/nuvens
	nuvem1
		icon='Turfs/nuvem.dmi'
		icon_state="1"
		density=0
		layer = MOB_LAYER + 1001
	nuvem2
		icon='Turfs/nuvem.dmi'
		icon_state="2"
		density=0
		layer = MOB_LAYER + 1001
	nuvem3
		icon='Turfs/nuvem.dmi'
		icon_state="3"
		density=0
		layer = MOB_LAYER + 1001
	nuvem4
		icon='Turfs/nuvem.dmi'
		icon_state="4"
		density=0
		layer = MOB_LAYER + 1001
	nuvem5
		icon='Turfs/nuvem.dmi'
		icon_state="5"
		density=0
		layer = MOB_LAYER + 1001


turf/PontesEscadas/Pontekiri
	ponte1
		icon='Turfs/pontekiri.dmi'
		icon_state="ponte1"
		density=1
	ponte2
		icon='Turfs/pontekiri.dmi'
		icon_state="ponte2"
		density=1
	ponte3
		icon='Turfs/pontekiri.dmi'
		icon_state="ponte3"
		density=1
	ponte4
		icon='Turfs/pontekiri.dmi'
		icon_state="ponte4"
		density=1
	ponte5
		icon='Turfs/pontekiri.dmi'
		icon_state="ponte5"
		density=1
	ponte6
		icon='Turfs/pontekiri.dmi'
		icon_state="ponte6"
		density=1
	ponte7
		icon='Turfs/pontekiri.dmi'
		icon_state="ponte7"
		density=1
	ponte8
		icon='Turfs/pontekiri.dmi'
		icon_state="ponte8"
		density=1
	ponte9
		icon='Turfs/pontekiri.dmi'
		icon_state="ponte9"
		density=1
	ponte10
		icon='Turfs/pontekiri.dmi'
		icon_state="ponte10"
		density=1
	ponte11
		icon='Turfs/pontekiri.dmi'
		icon_state="ponte11"
		density=1
	ponte12
		icon='Turfs/pontekiri.dmi'
		icon_state="ponte12"
		density=0
	ponte13
		icon='Turfs/pontekiri.dmi'
		icon_state="ponte13"
		density=1
	ponte14
		icon='Turfs/pontekiri.dmi'
		icon_state="ponte14"
		density=1
	ponte15
		icon='Turfs/pontekiri.dmi'
		icon_state="ponte15"
		density=0
	ponte16
		icon='Turfs/pontekiri.dmi'
		icon_state="ponte16"
		density=1


turf/PontesEscadas/Pontes
	ponte1
		icon='Turfs/pontesescadas.dmi'
		icon_state="1"
		density=0
	ponte2
		icon='Turfs/pontesescadas.dmi'
		icon_state="2"
		density=0
	ponte3
		icon='Turfs/pontesescadas.dmi'
		icon_state="3"
		density=0
	ponte4
		icon='Turfs/pontesescadas.dmi'
		icon_state="4"
		density=0
	ponte5
		icon='Turfs/pontesescadas.dmi'
		icon_state="5"
		density=0
		layer = MOB_LAYER - 1
	ponte8
		icon='Turfs/pontesescadas.dmi'
		icon_state="8"
		density=0
	ponte7
		icon='Turfs/pontesescadas.dmi'
		icon_state="7"
		density=0


turf/PontesEscadas/PonteClassica
	ponte1
		icon='Turfs2/ponteneve.dmi'
		icon_state="ponte1"
		density=1
	ponte2
		icon='Turfs2/ponteneve.dmi'
		icon_state="ponte2"
		density=1
	ponte3
		icon='Turfs2/ponteneve.dmi'
		icon_state="ponte3"
		density=1
	ponte4
		icon='Turfs2/ponteneve.dmi'
		icon_state="ponte4"
		density=0
	ponte5
		icon='Turfs2/ponteneve.dmi'
		icon_state="ponte5"
		density=0
	ponte6
		icon='Turfs2/ponteneve.dmi'
		icon_state="ponte6"
		density=0
	ponte7
		icon='Turfs2/ponteneve.dmi'
		icon_state="ponte7"
		density=1
	ponte8
		icon='Turfs2/ponteneve.dmi'
		icon_state="ponte8"
		density=1
		layer = MOB_LAYER + 1000
	ponte9
		icon='Turfs2/ponteneve.dmi'
		icon_state="ponte9"
		density=1

turf/rochas
	rochacircular1
		icon='Turfs/turfs.dmi'
		icon_state="rochacircular1"
		density=1
	rochacilindrica1
		icon='Turfs/turfs.dmi'
		icon_state="rochacilindrica1"
		density=0
		layer = MOB_LAYER + 1000
	rochacilindrica2
		icon='Turfs/turfs.dmi'
		icon_state="rochacilindrica2"
		density=1
	rocha1
		icon='Turfs/turfs.dmi'
		icon_state="rocha1"
		density=0
		layer = MOB_LAYER + 1000
	rocha2
		icon='Turfs/turfs.dmi'
		icon_state="rocha2"
		density=0
		layer = MOB_LAYER + 1000
	rocha3
		icon='Turfs/turfs.dmi'
		icon_state="rocha3"
		density=1
	rocha4
		icon='Turfs/turfs.dmi'
		icon_state="rocha4"
		density=1
	pedra
		icon='Turfs/turfs.dmi'
		icon_state="pedra"
		density=1
	pedra2
		icon='Turfs/turfs.dmi'
		icon_state="pedra2"
		density=0


turf/predios/predio1
	predioA1
		icon='Turfs2/casas2.dmi'
		icon_state="predioA0,0"
	predioA2
		icon='Turfs2/casas2.dmi'
		icon_state="predioA1,0"
	predioB1
		icon='Turfs2/casas2.dmi'
		icon_state="predioB0,0"
	predioB2
		icon='Turfs2/casas2.dmi'
		icon_state="predioB1,0"
	predioC1
		icon='Turfs2/casas2.dmi'
		icon_state="predioC0,0"
	predioC2
		icon='Turfs2/casas2.dmi'
		icon_state="predioC1,0"
	predioD1
		icon='Turfs2/casas2.dmi'
		icon_state="predioD0,0"
	predioD2
		icon='Turfs2/casas2.dmi'
		icon_state="predioD1,0"
	predioteto1
		icon='Turfs2/casas2.dmi'
		icon_state="0,1"
	predioteto2
		icon='Turfs2/casas2.dmi'
		icon_state="1,1"


turf/casas
	casa1
		icon='Turfs2/casas.dmi'
		icon_state="casa1"
		density=0
		layer = MOB_LAYER + 0
	shop1
		icon='Turfs2/casas.dmi'
		icon_state="shop1"
		density=0
		layer = MOB_LAYER + 0
	casa2
		icon='Turfs2/casas4.dmi'
		icon_state="casa2"
		density=0
		layer = MOB_LAYER + 0
	casa3
		icon='Turfs2/casas4.dmi'
		icon_state="casa3"
		density=0
		layer = MOB_LAYER + 0
	casa4
		icon='Turfs2/casas5.dmi'
		icon_state="casa4"
		density=0
		layer = MOB_LAYER + 0
	casa5
		icon='Turfs2/casas5.dmi'
		icon_state="casa5"
		density=0
		layer = MOB_LAYER + 0
	casa6
		icon='Turfs2/casas6.dmi'
		icon_state="casa6"
		density=0
		layer = MOB_LAYER + 0
	shop2
		icon='Turfs2/casas6.dmi'
		icon_state="shop2"
		density=0
		layer = MOB_LAYER + 0
	casa7
		icon='Turfs2/casas7.dmi'
		icon_state="casa7"
		density=0
		layer = MOB_LAYER + 0
	casa8
		icon='Turfs2/casas7.dmi'
		icon_state="casa8"
		density=0
		layer = MOB_LAYER + 0
	casa9
		icon='Turfs2/casas8.dmi'
		icon_state="casa9"
		density=0
		layer = MOB_LAYER + 0
	casa10
		icon='Turfs2/casas8.dmi'
		icon_state="casa10"
		density=0
		layer = MOB_LAYER + 0
	casa11
		icon='Turfs2/casas9.dmi'
		icon_state="casa11"
		density=0
		layer = MOB_LAYER + 0
	shop3
		icon='Turfs2/casas9.dmi'
		icon_state="shop3"
		density=0
		layer = MOB_LAYER + 0
	casa12
		icon='Turfs2/casas10.dmi'
		icon_state="casa12"
		density=0
		layer = MOB_LAYER + 0
	casa13
		icon='Turfs2/casas10.dmi'
		icon_state="casa13"
		density=0
		layer = MOB_LAYER + 0
	casa14
		icon='Turfs2/casas11.dmi'
		icon_state="casa14"
		density=0
		layer = MOB_LAYER + 0
	casa15
		icon='Turfs2/casas11.dmi'
		icon_state="casa15"
		density=0
		layer = MOB_LAYER + 0
	shop4
		icon='Turfs2/casas12.dmi'
		icon_state="shop4"
		density=0
		layer = MOB_LAYER + 0
	casa16
		icon='Turfs2/casas12.dmi'
		icon_state="casa16"
		density=0
		layer = MOB_LAYER + 0
	casa17
		icon='Turfs2/casas13.dmi'
		icon_state="casa17"
		density=0
		layer = MOB_LAYER + 0
	casa18
		icon='Turfs2/casas13.dmi'
		icon_state="casa18"
		density=0
		layer = MOB_LAYER + 0
	casakumo
		icon='Turfs2/casakumo.dmi'
		icon_state="casa"
		density=0
		layer = MOB_LAYER + 0
	casakumo2
		icon='Turfs2/casakumo.dmi'
		icon_state="casa2"
		density=0
		layer = MOB_LAYER + 0
	shopkumo
		icon='Turfs2/casakumo.dmi'
		icon_state="shop"
		density=0
		layer = MOB_LAYER + 0
	tavernakumo
		icon='Turfs2/casakumo.dmi'
		icon_state="taverna"
		density=0
		layer = MOB_LAYER + 0
	casakiri
		icon='Turfs2/casakiri.dmi'
		icon_state="casa1"
		density=0
		layer = MOB_LAYER + 0
	casakiri2
		icon='Turfs2/casakiri.dmi'
		icon_state="casa2"
		density=0
		layer = MOB_LAYER + 0
	shopkiri
		icon='Turfs2/casakiri.dmi'
		icon_state="shop"
		density=0
		layer = MOB_LAYER + 0
	tavernakiri
		icon='Turfs2/casakiri.dmi'
		icon_state="taverna"
		density=0
		layer = MOB_LAYER + 0
/*
turf/chuva
	chuva
		icon='Turfs2/chuva.dmi'
		layer = MOB_LAYER + 1001

turf/nevoa
	nevoa
		icon='Turfs2/nevoa2.dmi'
		layer = MOB_LAYER + 1002

turf/neve
	neve
		icon='Turfs2/neve.dmi'
		layer = MOB_LAYER + 100000003

*/
turf/cachoeira
	cachoeira1
		icon='Turfs2/cachoeira.dmi'
		icon_state="cachoeira1"
		density=1
	cachoeira2
		icon='Turfs2/cachoeira.dmi'
		icon_state="cachoeira2"
		density=1
	cachoeira3
		icon='Turfs2/cachoeira.dmi'
		icon_state="cachoeira3"
		density=1
	cachoeira4
		icon='Turfs2/cachoeira.dmi'
		icon_state="cachoeira4"
		density=1
		layer = MOB_LAYER + 1001
	cachoeira5
		icon='Turfs2/cachoeira.dmi'
		icon_state="cachoeira5"
		density=1
		layer = MOB_LAYER + 1001
	cachoeira6
		icon='Turfs2/cachoeira.dmi'
		icon_state="cachoeira6"
		density=1
		layer = MOB_LAYER + 1001
	cachoeira7
		icon='Turfs2/cachoeira.dmi'
		icon_state="cachoeira7"
		density=1
	cachoeira8
		icon='Turfs2/cachoeira.dmi'
		icon_state="cachoeira8"
		density=1
	cachoeira9
		icon='Turfs2/cachoeira.dmi'
		icon_state="cachoeira9"
		density=1


turf/interior
	chaointerior1
		icon='Turfs2/turffinterior0.dmi'
		icon_state="1"
		density=0
	chaointerior2
		icon='Turfs2/turffinterior0.dmi'
		icon_state="2"
		density=0
	chaointerior3
		icon='Turfs2/turffinterior0.dmi'
		icon_state="3"
		density=0
	chaointerior4
		icon='Turfs2/turffinterior0.dmi'
		icon_state="4"
		density=0
	chaointerior5
		icon='Turfs2/turffinterior0.dmi'
		icon_state="5"
		density=0
	chaointerior6
		icon='Turfs2/turffinterior0.dmi'
		icon_state="6"
		density=0
	parede01
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede1"
		density=1
	parede02
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede2"
		density=1
	parede03
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede3"
		density=1
	parede04
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede4"
		density=1
	parede05
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede5"
		density=1
	parede06
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede6"
		density=1
	parede07
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede7"
		density=1
	parede08
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede8"
		density=1
	parede09
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede9"
		density=1
	parede10
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede10"
		density=1
	parede11
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede11"
		density=1
	parede12
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede12"
		density=1
	parede13
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede13"
		density=1
	parede14
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede14"
		density=1
	parede15
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede15"
		density=1
	parede16
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede16"
		density=1
	parede17
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede17"
		density=1
	parede18
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede18"
		density=1
	parede19
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede19"
		density=1
	parede20
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede20"
		density=1
	parede21
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede21"
		density=1
	parede22
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede22"
		density=1
	parede23
		icon='Turfs2/turffinterior2.dmi'
		icon_state="parede23"
		density=1
	mesa1
		icon='Turfs2/turffinterior2.dmi'
		icon_state="mesa"
		density=1
	mesa2
		icon='Turfs2/turffinterior2.dmi'
		icon_state="mesa2"
		density=1
	mesa3
		icon='Turfs2/turffinterior2.dmi'
		icon_state="mesa3"
		density=1
	mesa4
		icon='Turfs2/turffinterior2.dmi'
		icon_state="mesa4"
		density=1
	mesa5
		icon='Turfs2/turffinterior2.dmi'
		icon_state="mesa5"
		density=1
	mesa6
		icon='Turfs2/turffinterior2.dmi'
		icon_state="mesa6"
		density=1
	mesa7
		icon='Turfs2/turffinterior2.dmi'
		icon_state="mesa7"
		density=1
	mesa8
		icon='Turfs2/turffinterior2.dmi'
		icon_state="mesa8"
		density=1
	mesa9
		icon='Turfs2/turffinterior2.dmi'
		icon_state="mesa9"
		density=1
	livro1
		icon='Turfs2/turffinterior2.dmi'
		icon_state="livro"
		density=1
	livro2
		icon='Turfs2/turffinterior2.dmi'
		icon_state="livro2"
		density=1
	livro3
		icon='Turfs2/turffinterior2.dmi'
		icon_state="livro3"
		density=1
	livro4
		icon='Turfs2/turffinterior2.dmi'
		icon_state="livro4"
		density=1
	livro5
		icon='Turfs2/turffinterior2.dmi'
		icon_state="livro5"
		density=1
	livro6
		icon='Turfs2/turffinterior2.dmi'
		icon_state="livro6"
		density=1
	livro7
		icon='Turfs2/turffinterior2.dmi'
		icon_state="livro7"
		density=1
	livro8
		icon='Turfs2/turffinterior2.dmi'
		icon_state="livro8"
		density=1
	estante
		icon='Turfs2/turffinterior2.dmi'
		icon_state="estante"
		density=1
	estante2
		icon='Turfs2/turffinterior2.dmi'
		icon_state="estante2"
		density=1
	espelho
		icon='Turfs2/turffinterior2.dmi'
		icon_state="espelho"
		density=1
	espelho2
		icon='Turfs2/turffinterior2.dmi'
		icon_state="espelho2"
		density=1
	escrivaninha
		icon='Turfs2/turffinterior2.dmi'
		icon_state="escrivaninha"
		density=1
	escrivaninha2
		icon='Turfs2/turffinterior2.dmi'
		icon_state="escrivaninha2"
		density=1
	escada1
		icon='Turfs2/turffinterior2.dmi'
		icon_state="escada"
		density=0
	escada2
		icon='Turfs2/turffinterior2.dmi'
		icon_state="escada2"
		density=0
	escada3
		icon='Turfs2/turffinterior2.dmi'
		icon_state="escada3"
		density=0
	escada4
		icon='Turfs2/turffinterior2.dmi'
		icon_state="escada4"
		density=0
	balcao
		icon='turfs2/turffinterior1.dmi'
		icon_state="balcao"
		density=1
	comoda
		icon='turfs2/turffinterior1.dmi'
		icon_state="comoda"
		density=1
	tapete
		icon='turfs2/turffinterior1.dmi'
		icon_state="tapete"
		density=0
	planta
		icon='turfs2/turffinterior1.dmi'
		icon_state="planta"
		density=1
	mesinha
		icon='turfs2/turffinterior1.dmi'
		icon_state="mesinha"
		density=1
	cadeira1
		icon='turfs2/turffinterior1.dmi'
		icon_state="cadeira1"
		density=0
	cadeira2
		icon='turfs2/turffinterior1.dmi'
		icon_state="cadeira2"
		density=0
	pia
		icon='turfs2/turffinterior1.dmi'
		icon_state="pia"
		density=1
	pia2
		icon='turfs2/turffinterior1.dmi'
		icon_state="pia2"
		density=1
	sofa
		icon='turfs2/turffinterior1.dmi'
		icon_state="sofa"
		density=1
	sofa2
		icon='turfs2/turffinterior1.dmi'
		icon_state="sofa2"
		density=1
	sofa3
		icon='turfs2/turffinterior1.dmi'
		icon_state="sofa3"
		density=1
	sofa4
		icon='turfs2/turffinterior1.dmi'
		icon_state="sofa4"
		density=1
	mesapc
		icon='turfs2/turffinterior1.dmi'
		icon_state="mesapc"
		density=1
	banheira
		icon='turfs2/turffinterior1.dmi'
		icon_state="banheira"
		density=1
	cama1
		icon='turfs2/turffinterior1.dmi'
		icon_state="cama1"
		density=0
	cama2
		icon='turfs2/turffinterior1.dmi'
		icon_state="cama2"
		density=0
	cama3
		icon='turfs2/turffinterior1.dmi'
		icon_state="cama3"
		density=0
	cama4
		icon='turfs2/turffinterior1.dmi'
		icon_state="cama4"
		density=0
	cama5
		icon='turfs2/turffinterior1.dmi'
		icon_state="cama5"
		density=0

turf/casasetc
	pergaminho1
		icon='Turfs2/turfscasas3.dmi'
		icon_state="perga1"
		density=0
	pergaminho2
		icon='Turfs2/turfscasas3.dmi'
		icon_state="perga2"
		density=0
	pergaminho3
		icon='Turfs2/turfscasas3.dmi'
		icon_state="perga3"
		density=0
	estante1
		icon='Turfs2/turfscasas3.dmi'
		icon_state="estante1"
		density=1
	estante2
		icon='Turfs2/turfscasas3.dmi'
		icon_state="estante2"
		density=1
	estante3
		icon='Turfs2/turfscasas3.dmi'
		icon_state="estante3"
		density=1
	estante4
		icon='Turfs2/turfscasas3.dmi'
		icon_state="estante4"
		density=0
	mesa1
		icon='turfs2/turfscasas3.dmi'
		icon_state="mesa1"
		density=1
	mesa2
		icon='turfs2/turfscasas3.dmi'
		icon_state="mesa2"
		density=1
	mesa3
		icon='turfs2/turfscasas3.dmi'
		icon_state="mesa3"
		density=1
	mesa4
		icon='turfs2/turfscasas3.dmi'
		icon_state="mesa4"
		density=1
	cadeira
		icon='turfs2/turfscasas3.dmi'
		icon_state="cadeira"
		density=0
	ramen01
		icon='turfs2/turfscasas.dmi'
		icon_state="Ramen1"
		density=0
	ramen02
		icon='turfs2/turfscasas.dmi'
		icon_state="Ramen2"
		density=0
	ramen03
		icon='turfs2/turfscasas.dmi'
		icon_state="Ramen3"
		density=1
	ramen04
		icon='turfs2/turfscasas.dmi'
		icon_state="Ramen4"
		density=1
	ramen05
		icon='turfs2/turfscasas.dmi'
		icon_state="Ramen5"
		density=0
	ramen06
		icon='turfs2/turfscasas.dmi'
		icon_state="Ramen6"
		density=0
	ramen07
		icon='turfs2/turfscasas.dmi'
		icon_state="Ramen7"
		density=0
	ramen08
		icon='turfs2/turfscasas.dmi'
		icon_state="Ramen8"
		density=0
	ramen09
		icon='turfs2/turfscasas.dmi'
		icon_state="Ramen9"
		density=0
	ramen10
		icon='turfs2/turfscasas.dmi'
		icon_state="Ramen10"
		density=0
	ramen11
		icon='turfs2/turfscasas.dmi'
		icon_state="Ramen11"
		density=0
	ramen12
		icon='turfs2/turfscasas.dmi'
		icon_state="Ramen12"
		density=0
	ramen13
		icon='turfs2/turfscasas.dmi'
		icon_state="Ramen13"
		density=0
	ramen14
		icon='turfs2/turfscasas.dmi'
		icon_state="Ramen14"
		density=0
	ramen15
		icon='turfs2/turfscasas.dmi'
		icon_state="Ramen15"
		density=0
	loja01
		icon='turfs2/turfscasas.dmi'
		icon_state="Loja1"
		density=1
	loja02
		icon='turfs2/turfscasas.dmi'
		icon_state="Loja2"
		density=1
	loja03
		icon='turfs2/turfscasas.dmi'
		icon_state="Loja3"
		density=1
	loja04
		icon='turfs2/turfscasas.dmi'
		icon_state="Loja4"
		density=1
	loja05
		icon='turfs2/turfscasas.dmi'
		icon_state="Loja5"
		density=1
	loja06
		icon='turfs2/turfscasas.dmi'
		icon_state="Loja6"
		density=1
	loja07
		icon='turfs2/turfscasas.dmi'
		icon_state="Loja7"
		density=1
	loja08
		icon='turfs2/turfscasas.dmi'
		icon_state="Loja8"
		density=1
	loja09
		icon='turfs2/turfscasas.dmi'
		icon_state="Loja9"
		density=1
	loja10
		icon='turfs2/turfscasas.dmi'
		icon_state="Loja10"
		density=1
	casa1
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa1"
		density=1
	casa2
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa2"
		density=1
	casa3
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa3"
		density=1
	casa4
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa4"
		density=1
	casa5
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa5"
		density=1
	casa6
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa6"
		density=1
	casa7
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa7"
		density=1
	casa8
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa8"
		density=1
	casa9
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa9"
		density=1
	casa10
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa10"
		density=1
	casa11
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa11"
		density=1
	casa12
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa12"
		density=1
	casa13
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa13"
		density=0
	casa14
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa14"
		density=0
	casa15
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa15"
		density=1
	casa16
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa16"
		density=1
	casa17
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa17"
		density=1
	casa18
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa18"
		density=1
	casa19
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa19"
		density=0
	casa20
		icon='turfs2/turfscasas.dmi'
		icon_state="Casa20"
		density=0
	bar1
		icon='turfs2/turfscasas.dmi'
		icon_state="Bar1"
		density=1
	bar2
		icon='turfs2/turfscasas.dmi'
		icon_state="Bar2"
		density=1
	bar3
		icon='turfs2/turfscasas.dmi'
		icon_state="Bar3"
		density=1
	bar4
		icon='turfs2/turfscasas.dmi'
		icon_state="Bar4"
		density=01
	bar5
		icon='turfs2/turfscasas.dmi'
		icon_state="Bar5"
		density=1
	bar6
		icon='turfs2/turfscasas.dmi'
		icon_state="Bar6"
		density=1
	bar7
		icon='turfs2/turfscasas.dmi'
		icon_state="Bar7"
		density=1
	bar8
		icon='turfs2/turfscasas.dmi'
		icon_state="Bar8"
		density=1
	poste1
		icon='turfs2/turfscasas.dmi'
		icon_state="Poste1"
		density=0
	poste2
		icon='turfs2/turfscasas.dmi'
		icon_state="Poste2"
		density=0
	poste3
		icon='turfs2/turfscasas.dmi'
		icon_state="Poste3"
		density=0
	casaP1
		icon='turfs2/turfscasas.dmi'
		icon_state="CasaP1"
		density=1
	casaP2
		icon='turfs2/turfscasas.dmi'
		icon_state="CasaP2"
		density=1
	casaP3
		icon='turfs2/turfscasas.dmi'
		icon_state="CasaP3"
		density=1
	casaP4
		icon='turfs2/turfscasas.dmi'
		icon_state="CasaP4"
		density=1
	casaA1
		icon='turfs2/turfscasas.dmi'
		icon_state="CasaA1"
		density=1
	casaA2
		icon='turfs2/turfscasas.dmi'
		icon_state="CasaA2"
		density=1
	hokage3
		icon='turfs2/turfscasas.dmi'
		icon_state="Hokage3"
		density=1
	lojaArma1
		icon='turfs2/turfscasas.dmi'
		icon_state="LojaArma1"
		density=1
	lojaArma2
		icon='turfs2/turfscasas.dmi'
		icon_state="LojaArma2"
		density=1
	lojaArma3
		icon='turfs2/turfscasas.dmi'
		icon_state="LojaArma3"
		density=1
	lojaArma4
		icon='turfs2/turfscasas.dmi'
		icon_state="LojaArma4"
		density=1
	lojaArma5
		icon='turfs2/turfscasas.dmi'
		icon_state="LojaArma5"
		density=1
	lojaRoupas1
		icon='turfs2/turfscasas.dmi'
		icon_state="LojaRoupas1"
		density=1
	lojaRoupas2
		icon='turfs2/turfscasas.dmi'
		icon_state="LojaRoupas2"
		density=1
	lojaRoupas3
		icon='turfs2/turfscasas.dmi'
		icon_state="LojaRoupas3"
		density=1
	lojaRoupas4
		icon='turfs2/turfscasas.dmi'
		icon_state="LojaRoupas4"
		density=1
	lojaRoupas5
		icon='turfs2/turfscasas.dmi'
		icon_state="LojaRoupas5"
		density=1
	lojaRoupas6
		icon='turfs2/turfscasas.dmi'
		icon_state="LojaRoupas6"
		density=1
	lojaRoupas7
		icon='turfs2/turfscasas.dmi'
		icon_state="LojaRoupas7"
		density=1
	lojaRoupas8
		icon='turfs2/turfscasas.dmi'
		icon_state="LojaRoupas8"
		density=1
	lojaRoupas9
		icon='turfs2/turfscasas.dmi'
		icon_state="LojaRoupas9"
		density=1
	lojaRoupas10
		icon='turfs2/turfscasas.dmi'
		icon_state="LojaRoupas10"
		density=1
	casaclan8
		icon='turfs2/turfscasas.dmi'
		icon_state="CasaClan8"
		density=1
	casaclan9
		icon='turfs2/turfscasas.dmi'
		icon_state="CasaClan9"
		density=1
	casaclan10
		icon='turfs2/turfscasas.dmi'
		icon_state="CasaClan10"
		density=1
	casaclan11
		icon='turfs2/turfscasas.dmi'
		icon_state="CasaClan11"
		density=1
	casaclan12
		icon='turfs2/turfscasas.dmi'
		icon_state="CasaClan12"
		density=1


turf/cercasuna
	cerca1
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca1"
		density=1
	cerca2
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca2"
		density=1
	cerca3
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca3"
		density=1
	cerca4
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca4"
		density=1
	cerca5
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca5"
		density=1
	cerca6
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca6"
		density=1
	cerca7
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca7"
		density=1
	cerca8
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca8"
		density=1
	cerca9
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca9"
		density=1
	cerca10
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca10"
		density=1
	cerca11
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca11"
		density=1
	cerca12
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca12"
		density=1
	cerca13
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca13"
		density=1
	cerca14
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca14"
		density=0
	cerca15
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca15"
		density=1
	cerca16
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca16"
		density=1
	cerca17
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca17"
		density=1
	cerca18
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca18"
		density=1
	cerca19
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca19"
		density=1
	cerca20
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca20"
		density=1
	cerca21
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca21"
		density=1
	cerca22
		icon='Turfs2/cercasuna.dmi'
		icon_state="cerca22"
		density=1

turf/cerca
	cerca1
		icon='Turfs2/cercas.dmi'
		icon_state="1"
		density=1
	cerca2
		icon='Turfs2/cercas.dmi'
		icon_state="2"
		density=1
	cerca3
		icon='Turfs2/cercas.dmi'
		icon_state="3"
		density=1
	cerca4
		icon='Turfs2/cercas.dmi'
		icon_state="4"
		density=1
	cerca5
		icon='Turfs2/cercas.dmi'
		icon_state="5"
		density=1
	cerca6
		icon='Turfs2/cercas.dmi'
		icon_state="6"
		density=1
	cerca7
		icon='Turfs2/cercas.dmi'
		icon_state="7"
		density=1

turf/estatuachuva
	estatuachuva1
		icon='Turfs2/estatuachuva.dmi'
		icon_state="0,0"
		density=1
		layer = MOB_LAYER + 0
	estatuachuva2
		icon='Turfs2/estatuachuva.dmi'
		icon_state="0,1"
		density=1
		layer = MOB_LAYER + 0
	estatuachuva3
		icon='Turfs2/estatuachuva.dmi'
		icon_state="1,0"
		density=1
		layer = MOB_LAYER + 1000
	estatuachuva4
		icon='Turfs2/estatuachuva.dmi'
		icon_state="1,1"
		density=1
		layer = MOB_LAYER + 1000




turf/turfskonoha
	muralha01
		icon='Turfs2/turfings.dmi'
		icon_state="1"
		density=1
		layer = MOB_LAYER + 1000
	muralha02
		icon='Turfs2/turfings.dmi'
		icon_state="2"
		density=1
		layer = MOB_LAYER + 1000
	muralha03
		icon='Turfs2/turfings.dmi'
		icon_state="3"
		density=1
		layer = MOB_LAYER + 1000
	muralha04
		icon='Turfs2/turfings.dmi'
		icon_state="4"
		density=1
		layer = MOB_LAYER + 1000
	muralha05
		icon='Turfs2/turfings.dmi'
		icon_state="5"
		density=1
		layer = MOB_LAYER + 1000
	muralha06
		icon='Turfs2/turfings.dmi'
		icon_state="6"
		density=1
		layer = MOB_LAYER + 1000
	muralha07
		icon='Turfs2/turfings.dmi'
		icon_state="7"
		density=1
		layer = MOB_LAYER + 1000
	muralha08
		icon='Turfs2/turfings.dmi'
		icon_state="8"
		density=1
		layer = MOB_LAYER + 0
	muralha09
		icon='Turfs2/turfings.dmi'
		icon_state="9"
		density=0
		layer = MOB_LAYER + 1000
	muralha10
		icon='Turfs2/turfings.dmi'
		icon_state="10"
		density=0
		layer = MOB_LAYER + 1000
	muralha11
		icon='Turfs2/turfings.dmi'
		icon_state="11"
		density=0
		layer = MOB_LAYER + 1000
	muralha12
		icon='Turfs2/turfings.dmi'
		icon_state="12"
		density=1
		layer = MOB_LAYER + 0
	muralha13
		icon='Turfs2/turfings.dmi'
		icon_state="13"
		density=1
		layer = MOB_LAYER + 1000
	muralha14
		icon='Turfs2/turfings.dmi'
		icon_state="14"
		density=1
		layer = MOB_LAYER + 1000
	muralha15
		icon='Turfs2/turfings.dmi'
		icon_state="15"
		density=1
		layer = MOB_LAYER + 1000
	muralha16
		icon='Turfs2/turfings.dmi'
		icon_state="16"
		density=1
		layer = MOB_LAYER + 1000
	muralha17
		icon='Turfs2/turfings.dmi'
		icon_state="17"
		density=1
		layer = MOB_LAYER + 1000
	muralha18
		icon='Turfs2/turfings.dmi'
		icon_state="18"
		density=1
		layer = MOB_LAYER + 1000
	muralha19
		icon='Turfs2/turfings.dmi'
		icon_state="19"
		density=1
		layer = MOB_LAYER + 1000
	muralha20
		icon='Turfs2/turfings.dmi'
		icon_state="20"
		density=1
		layer = MOB_LAYER + 1000
	muralha21
		icon='Turfs2/turfings.dmi'
		icon_state="21"
		density=1
		layer = MOB_LAYER + 1000
	muralha22
		icon='Turfs2/turfings.dmi'
		icon_state="22"
		density=1
		layer = MOB_LAYER + 1000
	muralha23
		icon='Turfs2/turfings.dmi'
		icon_state="23"
		density=1
		layer = MOB_LAYER + 1000
	muralha24
		icon='Turfs2/turfings.dmi'
		icon_state="24"
		density=1
		layer = MOB_LAYER + 1000
	muralha25
		icon='Turfs2/turfings.dmi'
		icon_state="25"
		density=1
		layer = MOB_LAYER + 1000
	muralha26
		icon='Turfs2/turfings.dmi'
		icon_state="26"
		density=1
		layer = MOB_LAYER + 1000
	muralha27
		icon='Turfs2/turfings.dmi'
		icon_state="27"
		density=1
		layer = MOB_LAYER + 1000
	muralha28
		icon='Turfs2/turfings.dmi'
		icon_state="28"
		density=1
		layer = MOB_LAYER + 1000
	muralha29
		icon='Turfs2/turfings.dmi'
		icon_state="29"
		density=1
		layer = MOB_LAYER + 1000
	muralha30
		icon='Turfs2/turfings.dmi'
		icon_state="30"
		density=1
		layer = MOB_LAYER + 1000
	muralha31
		icon='Turfs2/turfings.dmi'
		icon_state="31"
		density=1
		layer = MOB_LAYER + 1000
	muralha32
		icon='Turfs2/turfings.dmi'
		icon_state="32"
		density=1
		layer = MOB_LAYER + 1000
	muralha33
		icon='Turfs2/turfings.dmi'
		icon_state="33"
		density=1
		layer = MOB_LAYER + 1000
	muralha34
		icon='Turfs2/turfings.dmi'
		icon_state="34"
		density=1
		layer = MOB_LAYER + 1000
	muralha35
		icon='Turfs2/turfings.dmi'
		icon_state="35"
		density=1
		layer = MOB_LAYER + 1000
	muralha36
		icon='Turfs2/turfings.dmi'
		icon_state="36"
		density=1
		layer = MOB_LAYER + 1000
	muralha37
		icon='Turfs2/turfings.dmi'
		icon_state="37"
		density=1
		layer = MOB_LAYER + 1000
	muralha38
		icon='Turfs2/turfings.dmi'
		icon_state="38"
		density=1
		layer = MOB_LAYER + 1000
	muralha39
		icon='Turfs2/turfings.dmi'
		icon_state="39"
		density=1
		layer = MOB_LAYER + 1000
	muralha40
		icon='Turfs2/turfings.dmi'
		icon_state="40"
		density=1
		layer = MOB_LAYER + 1000
	muralha41
		icon='Turfs2/turfings.dmi'
		icon_state="41"
		density=1
		layer = MOB_LAYER + 1000
	muralha42
		icon='Turfs2/turfings.dmi'
		icon_state="42"
		density=1
		layer = MOB_LAYER + 1000
	muralha43
		icon='Turfs2/turfings.dmi'
		icon_state="43"
		density=1
		layer = MOB_LAYER + 1000
	muralha44
		icon='Turfs2/turfings.dmi'
		icon_state="44"
		density=1
		layer = MOB_LAYER + 1000
	muralha45
		icon='Turfs2/turfings.dmi'
		icon_state="45"
		density=1
		layer = MOB_LAYER + 1000
	muralha46
		icon='Turfs2/turfings.dmi'
		icon_state="46"
		density=1
		layer = MOB_LAYER + 1000
	muralha47
		icon='Turfs2/turfings.dmi'
		icon_state="47"
		density=1
		layer = MOB_LAYER + 1000
	muralha48
		icon='Turfs2/turfings.dmi'
		icon_state="48"
		density=1
		layer = MOB_LAYER + 1000
	muralha49
		icon='Turfs2/turfings.dmi'
		icon_state="49"
		density=1
		layer = MOB_LAYER + 1000
	muralha50
		icon='Turfs2/turfings.dmi'
		icon_state="50"
		density=1
		layer = MOB_LAYER + 1000
	muralha51
		icon='Turfs2/turfings.dmi'
		icon_state="51"
		density=1
		layer = MOB_LAYER + 1000
	muralha52
		icon='Turfs2/turfings.dmi'
		icon_state="52"
		density=1
		layer = MOB_LAYER + 1000
	muralha53
		icon='Turfs2/turfings.dmi'
		icon_state="53"
		density=1
		layer = MOB_LAYER + 1000
	muralha54
		icon='Turfs2/turfings.dmi'
		icon_state="54"
		density=1
		layer = MOB_LAYER + 0
	muralha55
		icon='Turfs2/turfings.dmi'
		icon_state="55"
		density=1
		layer = MOB_LAYER + 0
	muralha56
		icon='Turfs2/turfings.dmi'
		icon_state="56"
		density=1
		layer = MOB_LAYER + 1000
	muralha57
		icon='Turfs2/turfings.dmi'
		icon_state="57"
		density=1
		layer = MOB_LAYER + 1000
	muralha58
		icon='Turfs2/turfings.dmi'
		icon_state="58"
		density=1
		layer = MOB_LAYER + 1000
	muralha59
		icon='Turfs2/turfings.dmi'
		icon_state="59"
		density=1
		layer = MOB_LAYER + 1000
	muralha60
		icon='Turfs2/turfings.dmi'
		icon_state="60"
		density=1
		layer = MOB_LAYER + 1000

	muro01
		icon='Turfs2/turfings.dmi'
		icon_state="70"
		density=1
		layer = MOB_LAYER + 1000
	muro02
		icon='Turfs2/turfings.dmi'
		icon_state="71"
		density=1
		layer = MOB_LAYER + 1000
	muro03
		icon='Turfs2/turfings.dmi'
		icon_state="72"
		density=1
		layer = MOB_LAYER + 1000
	muro04
		icon='Turfs2/turfings.dmi'
		icon_state="73"
		density=1
		layer = MOB_LAYER + 1000
	muro05
		icon='Turfs2/turfings.dmi'
		icon_state="74"
		density=1
		layer = MOB_LAYER + 1000
	muro06
		icon='Turfs2/turfings.dmi'
		icon_state="75"
		density=1
		layer = MOB_LAYER + 1000
	muro07
		icon='Turfs2/turfings.dmi'
		icon_state="76"
		density=1
		layer = MOB_LAYER + 1000
	muro08
		icon='Turfs2/turfings.dmi'
		icon_state="77"
		density=1
		layer = MOB_LAYER + 1000
	muro09
		icon='Turfs2/turfings.dmi'
		icon_state="78"
		density=1
		layer = MOB_LAYER + 1000
	muro10
		icon='Turfs2/turfings.dmi'
		icon_state="79"
		density=1
		layer = MOB_LAYER + 0
	muro11
		icon='Turfs2/turfings.dmi'
		icon_state="80"
		density=1
		layer = MOB_LAYER + 1000
	muro12
		icon='Turfs2/turfings.dmi'
		icon_state="81"
		density=1
		layer = MOB_LAYER + 1000
	muro13
		icon='Turfs2/turfings.dmi'
		icon_state="82"
		density=1
		layer = MOB_LAYER + 1000
	muro14
		icon='Turfs2/turfings.dmi'
		icon_state="83"
		density=1
		layer = MOB_LAYER + 1000
	muro15
		icon='Turfs2/turfings.dmi'
		icon_state="84"
		density=1
		layer = MOB_LAYER + 1000
	muro16
		icon='Turfs2/turfings.dmi'
		icon_state="85"
		density=1
		layer = MOB_LAYER + 1000
	muro17
		icon='Turfs2/turfings.dmi'
		icon_state="86"
		density=1
		layer = MOB_LAYER + 1000
	muro18
		icon='Turfs2/turfings.dmi'
		icon_state="87"
		density=1
		layer = MOB_LAYER + 1000
	cerca01
		icon='Turfs2/turfings.dmi'
		icon_state="Cerca1"
		density=1
		layer = MOB_LAYER + 0
	cerca02
		icon='Turfs2/turfings.dmi'
		icon_state="Cerca2"
		density=1
		layer = MOB_LAYER + 0
	cerca03
		icon='Turfs2/turfings.dmi'
		icon_state="Cerca3"
		density=1
		layer = MOB_LAYER + 1000
	cerca04
		icon='Turfs2/turfings.dmi'
		icon_state="Cerca4"
		density=1
		layer = MOB_LAYER + 1000
	cerca05
		icon='Turfs2/turfings.dmi'
		icon_state="Cerca5"
		density=1
		layer = MOB_LAYER + 1000
	cerca06
		icon='Turfs2/turfings.dmi'
		icon_state="Cerca6"
		density=1
		layer = MOB_LAYER + 1000
	cerca07
		icon='Turfs2/turfings.dmi'
		icon_state="Cerca7"
		density=1
		layer = MOB_LAYER + 1000
	cerca08
		icon='Turfs2/turfings.dmi'
		icon_state="Cerca8"
		density=1
		layer = MOB_LAYER + 1000
	cerca09
		icon='Turfs2/turfings.dmi'
		icon_state="Cerca9"
		density=1
		layer = MOB_LAYER + 1000
	cerca10
		icon='Turfs2/turfings.dmi'
		icon_state="Cerca10"
		density=1
		layer = MOB_LAYER + 1000
	cerca11
		icon='Turfs2/turfings.dmi'
		icon_state="Cerca11"
		density=1
		layer = MOB_LAYER + 1000
	cerca12
		icon='Turfs2/turfings.dmi'
		icon_state="Cerca12"
		density=1
		layer = MOB_LAYER + 1000
	cerca13
		icon='Turfs2/turfings.dmi'
		icon_state="Cerca13"
		density=1
		layer = MOB_LAYER + 0
	cerca14
		icon='Turfs2/turfings.dmi'
		icon_state="Cerca14"
		density=1
		layer = MOB_LAYER + 1000
	cerca15
		icon='Turfs2/turfings.dmi'
		icon_state="Cerca15"
		density=1
		layer = MOB_LAYER + 0
	cerca16
		icon='Turfs2/turfings.dmi'
		icon_state="Cerca16"
		density=1
		layer = MOB_LAYER + 0
	cerquinha01
		icon='Turfs2/turfings.dmi'
		icon_state="cerquinha1"
		density=1
	cerquinha02
		icon='Turfs2/turfings.dmi'
		icon_state="cerquinha2"
		density=1
	cerquinha03
		icon='Turfs2/turfings.dmi'
		icon_state="cerquinha3"
		density=1
	cerquinha04
		icon='Turfs2/turfings.dmi'
		icon_state="cerquinha4"
		density=1
	cerquinha05
		icon='Turfs2/turfings.dmi'
		icon_state="cerquinha5"
		density=1
	cerquinha06
		icon='Turfs2/turfings.dmi'
		icon_state="cerquinha6"
		density=1
	cerquinha07
		icon='Turfs2/turfings.dmi'
		icon_state="cerquinha7"
		density=1
	cerquinha08
		icon='Turfs2/turfings.dmi'
		icon_state="cerquinha8"
		density=1
	cerquinha09
		icon='Turfs2/turfings.dmi'
		icon_state="cerquinha9"
		density=1
	cerquinha10
		icon='Turfs2/turfings.dmi'
		icon_state="cerquinha10"
		density=1
	chao
		icon='Turfs2/turfings.dmi'
		icon_state="chao"
		density=0

turf/Memorial
	Memorial
		icon = 'Turfs2/memorial.dmi'
		icon_state = ""
		density = 1
	Memorial2
		icon = 'Turfs2/memorial.dmi'
		icon_state = "0,0"
		density = 1
	Memorial3
		icon = 'Turfs2/memorial.dmi'
		icon_state = "0,1"
		density = 1
	Memorial4
		icon = 'Turfs2/memorial.dmi'
		icon_state = "0,2"
		density = 1
	Memorial5
		icon = 'Turfs2/memorial.dmi'
		icon_state = "0,3"
		density = 1
	Memorial6
		icon = 'Turfs2/memorial.dmi'
		icon_state = "0,4"
		density = 1
	Memorial7
		icon = 'Turfs2/memorial.dmi'
		icon_state = "0,5"
		density = 1
	Memorial8
		icon = 'Turfs2/memorial.dmi'
		icon_state = "1,0"
		density = 1
	Memorial9
		icon = 'Turfs2/memorial.dmi'
		icon_state = "1,1"
		density = 1
	Memorial10
		icon = 'Turfs2/memorial.dmi'
		icon_state = "1,2"
		density = 1
	Memorial11
		icon = 'Turfs2/memorial.dmi'
		icon_state = "1,3"
		density = 1
	Memorial12
		icon = 'Turfs2/memorial.dmi'
		icon_state = "1,4"
		density = 1
	Memorial13
		icon = 'Turfs2/memorial.dmi'
		icon_state = "1,5"
		density = 1
	Memorial14
		icon = 'Turfs2/memorial.dmi'
		icon_state = "2,0"
		density = 1
	Memorial15
		icon = 'Turfs2/memorial.dmi'
		icon_state = "2,1"
		density = 1
	Memorial16
		icon = 'Turfs2/memorial.dmi'
		icon_state = "2,2"
		density = 1
	Memorial17
		icon = 'Turfs2/memorial.dmi'
		icon_state = "2,3"
		density = 1
	Memorial18
		icon = 'Turfs2/memorial.dmi'
		icon_state = "2,4"
		density = 1
	Memorial19
		icon = 'Turfs2/memorial.dmi'
		icon_state = "2,5"
		density = 1
	Memorial20
		icon = 'Turfs2/memorial.dmi'
		icon_state = "3,0"
		density = 1
	Memorial21
		icon = 'Turfs2/memorial.dmi'
		icon_state = "3,1"
		density = 1
	Memorial22
		icon = 'Turfs2/memorial.dmi'
		icon_state = "3,2"
		density = 1
	Memorial23
		icon = 'Turfs2/memorial.dmi'
		icon_state = "3,3"
		density = 1
	Memorial24
		icon = 'Turfs2/memorial.dmi'
		icon_state = "3,4"
		density = 1
	Memorial25
		icon = 'Turfs2/memorial.dmi'
		icon_state = "3,5"
		density = 1
	Memorial26
		icon = 'Turfs2/memorial.dmi'
		icon_state = "4,0"
		density = 1
	Memorial27
		icon = 'Turfs2/memorial.dmi'
		icon_state = "4,1"
		density = 1
	Memorial28
		icon = 'Turfs2/memorial.dmi'
		icon_state = "4,2"
		density = 1
	Memorial29
		icon = 'Turfs2/memorial.dmi'
		icon_state = "4,3"
		density = 1
	Memorial30
		icon = 'Turfs2/memorial.dmi'
		icon_state = "4,4"
		density = 1
	Memorial31
		icon = 'Turfs2/memorial.dmi'
		icon_state = "4,5"
		density = 1
	Memorial32
		icon = 'Turfs2/memorial.dmi'
		icon_state = "5,0"
		density = 1
	Memorial33
		icon = 'Turfs2/memorial.dmi'
		icon_state = "5,1"
		density = 1
	Memorial34
		icon = 'Turfs2/memorial.dmi'
		icon_state = "5,2"
		density = 1
	Memorial35
		icon = 'Turfs2/memorial.dmi'
		icon_state = "5,3"
		density = 1
	Memorial36
		icon = 'Turfs2/memorial.dmi'
		icon_state = "5,4"
		density = 1
	Memorial37
		icon = 'Turfs2/memorial.dmi'
		icon_state = "5,5"
		density = 1
	Tronco1
		icon = 'Turfs2/placatronco.dmi'
		icon_state = "tronco1"
		density = 0
	Tronco2
		icon = 'Turfs2/placatronco.dmi'
		icon_state = "tronco2"
		density = 1
	memorialcerto
		icon = 'Turfs2/turfs3.dmi'
		icon_state = "memorial"
		density = 1
		layer = MOB_LAYER + 1000


turf/TemploKonoha
	parte1
		icon = 'Turfs2/casakage.dmi'
		icon_state = "konoha0,0"
		density = 0
		layer = MOB_LAYER + 1000
	parte2
		icon = 'Turfs2/casakage.dmi'
		icon_state = "konoha0,1"
		density = 0
		layer = MOB_LAYER + 1000
	parte3
		icon = 'Turfs2/casakage.dmi'
		icon_state = "konoha1,0"
		density = 0
		layer = MOB_LAYER + 1000
	parte4
		icon = 'Turfs2/casakage.dmi'
		icon_state = "konoha1,1"
		density = 0
		layer = MOB_LAYER + 1000


turf/escadapedra
	escada1
		icon = 'Turfs2/escada.dmi'
		icon_state = "escada1"
		density = 0

	escada2
		icon = 'Turfs2/escada.dmi'
		icon_state = "escada2"
		density = 0
	escada3
		icon = 'Turfs2/escada.dmi'
		icon_state = "escada3"
		density = 0
	escada4
		icon = 'Turfs2/escada.dmi'
		icon_state = "escada4"
		density = 0
	escada5
		icon = 'Turfs2/escada.dmi'
		icon_state = "escada5"
		density = 0
	escada6
		icon = 'Turfs2/escada.dmi'
		icon_state = "escada6"
		density = 0

turf/plantas
	florgigante
		icon = 'Turfs/turfs.dmi'
		icon_state = "florgigante"
		density = 0
	cogumelos
		icon = 'Turfs/turfs.dmi'
		icon_state = "cogumelos"
		density = 0
	mudaplanta
		icon = 'Turfs/turfs.dmi'
		icon_state = "mudaplanta"
		density = 0
	florbranca
		icon = 'Turfs/turfs.dmi'
		icon_state = "florbranca"
		density = 0
	victoria
		icon = 'Turfs/turfs.dmi'
		icon_state = "victoria"
		density = 0
	flores
		icon = 'Turfs/turfs.dmi'
		icon_state = "flores"
		density = 0
	victorias
		icon = 'Turfs/turfs.dmi'
		icon_state = "victorias"
		density = 0
	arbustoflores
		icon = 'Turfs/turfs.dmi'
		icon_state = "arbustoflores"
		density = 0
	arbusto
		icon = 'Turfs/turfs.dmi'
		icon_state = "arbusto"
		density = 0

turf/suna
	escada1
		icon = 'Turfs2/suna.dmi'
		icon_state = "1"
		density = 0
	escada2
		icon = 'Turfs2/suna.dmi'
		icon_state = "2"
		density = 0
	cacto
		icon = 'Turfs2/suna.dmi'
		icon_state = "3"
		density = 1


turf/simbolos
	hyuuga
		icon = 'Turfs2/simbolosclans.dmi'
		icon_state = "hyuuga"
		density = 0
	uchiha
		icon = 'Turfs2/simbolosclans.dmi'
		icon_state = "uchiha"
		density = 0
	nara
		icon = 'Turfs2/simbolosclans.dmi'
		icon_state = "nara"
		density = 0
	akimichi
		icon = 'Turfs2/simbolosclans.dmi'
		icon_state = "akimichi"
		density = 0
	kaguya
		icon = 'Turfs2/simbolosclans.dmi'
		icon_state = "kaguya"
		density = 0
	inuzuka
		icon = 'Turfs2/simbolosclans.dmi'
		icon_state = "inuzuka"
		density = 0
	senju
		icon = 'Turfs2/simbolosclans.dmi'
		icon_state = "senju"
		density = 0
	yamanaka
		icon = 'Turfs2/simbolosclans.dmi'
		icon_state = "yamanaka"
		density = 0
	aburame
		icon = 'Turfs2/simbolosclans.dmi'
		icon_state = "aburame"
		density = 0
	uzumaki
		icon = 'Turfs2/simbolosclans.dmi'
		icon_state = "uzumaki"
		density = 0
	anbu
		icon = 'Turfs2/simbolosclans.dmi'
		icon_state = "anbu"
		density = 0



