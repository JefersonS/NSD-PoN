obj/var
	hotkey = 0
	largura
	altura
obj
	macros
		icon='Icons/Outros/atalho.dmi'
		mouse_drop_zone = 1
		layer = MOB_LAYER + 500000
		density = 1

		At1
			icon_state="at1"
			screen_loc = "NORTH-1,EAST-2"
			layer = 20
			layer = MOB_LAYER + 500000
		At2
			icon_state="at2"
			screen_loc = "NORTH-1,EAST-1"
			layer = 20
			layer = MOB_LAYER + 500000

		//--
		Atalhos1

			A1
				icon
				largura = 1
				altura = 1
				icon_state="a1"
				hotkey = 1
			A2
				icon_state="a2"
				hotkey = 2
			A3
				icon_state="a3"
				hotkey = 3
			A4
				icon_state="a4"
				hotkey = 4
			A5
				icon_state="a5"
				hotkey = 5
			A6
				icon_state="a6"
				hotkey = 6
			A7
				icon_state="a7"
				hotkey = 7
			A8
				icon_state="a8"
				hotkey = 8
			A9
				icon_state="a9"
				hotkey = 9
			A0
				icon_state="a0"
				hotkey = 0

			//--
		Atalhos2

			AA1
				icon_state="aa1"
				hotkey = "a1"
			AA2
				icon_state="aa2"
				hotkey = "a2"
			AA3
				icon_state="aa3"
				hotkey = "a3"
			AA4
				icon_state="aa4"
				hotkey = "a4"
			AA5
				icon_state="aa5"
				hotkey = "a5"
			AA6
				icon_state="aa6"
				hotkey = "a6"
			AA7
				icon_state="aa7"
				hotkey = "a7"
			AA8
				icon_state="aa8"
				hotkey = "a8"
			AA9
				icon_state="aa9"
				hotkey = "a9"
			AA0
				icon_state="aa0"
				hotkey = "a0"

mob
	var/list/atalho

mob/proc/Atalhos()

	var/obj/macros/Atalhos1/A1/At1 = new/obj/macros/Atalhos1/A1
	var/obj/macros/Atalhos1/A2/At2 = new/obj/macros/Atalhos1/A2
	var/obj/macros/Atalhos1/A3/At3 = new/obj/macros/Atalhos1/A3
	var/obj/macros/Atalhos1/A4/At4 = new/obj/macros/Atalhos1/A4
	var/obj/macros/Atalhos1/A5/At5 = new/obj/macros/Atalhos1/A5
	var/obj/macros/Atalhos1/A6/At6 = new/obj/macros/Atalhos1/A6
	var/obj/macros/Atalhos1/A7/At7 = new/obj/macros/Atalhos1/A7
	var/obj/macros/Atalhos1/A8/At8 = new/obj/macros/Atalhos1/A8
	var/obj/macros/Atalhos1/A9/At9 = new/obj/macros/Atalhos1/A9
	var/obj/macros/Atalhos1/A0/At0 = new/obj/macros/Atalhos1/A0

	At1.loc = usr
	At2.loc = usr
	At3.loc = usr
	At4.loc = usr
	At5.loc = usr
	At6.loc = usr
	At7.loc = usr
	At8.loc = usr
	At9.loc = usr
	At0.loc = usr


	var/obj/macros/Atalhos2/AA1/AAt1 = new/obj/macros/Atalhos2/AA1
	var/obj/macros/Atalhos2/AA2/AAt2 = new/obj/macros/Atalhos2/AA2
	var/obj/macros/Atalhos2/AA3/AAt3 = new/obj/macros/Atalhos2/AA3
	var/obj/macros/Atalhos2/AA4/AAt4 = new/obj/macros/Atalhos2/AA4
	var/obj/macros/Atalhos2/AA5/AAt5 = new/obj/macros/Atalhos2/AA5
	var/obj/macros/Atalhos2/AA6/AAt6 = new/obj/macros/Atalhos2/AA6
	var/obj/macros/Atalhos2/AA7/AAt7 = new/obj/macros/Atalhos2/AA7
	var/obj/macros/Atalhos2/AA8/AAt8 = new/obj/macros/Atalhos2/AA8
	var/obj/macros/Atalhos2/AA9/AAt9 = new/obj/macros/Atalhos2/AA9
	var/obj/macros/Atalhos2/AA0/AAt0 = new/obj/macros/Atalhos2/AA0

	AAt1.loc = usr
	AAt2.loc = usr
	AAt3.loc = usr
	AAt4.loc = usr
	AAt5.loc = usr
	AAt6.loc = usr
	AAt7.loc = usr
	AAt8.loc = usr
	AAt9.loc = usr
	AAt0.loc = usr

	var/c = 1
	for(var/obj/macros/Atalhos1/O in src)
		if(atalho)
			continue
		winset(src, "atalhos1.at[c]", "current-cell=[1]")
		src << output(O, "atalhos1.at[c]")
		winset(src, "atalhos1.at[c]", "cells=[1]")
		c++


	var/c2 = 1
	for(var/obj/macros/Atalhos2/O in src)
		if(atalho)
			continue
		winset(src, "atalhos2.at[c2]", "current-cell=[1]")
		src << output(O, "atalhos2.at[c2]")
		winset(src, "atalhos2.at[c2]", "cells=[1]")
		c2++

mob
	var
		girado
		girado1 = 0
		girado2 = 0
		adicionar = 0
		desligar1 = 0
		desligar2 = 0
		contadorat
		contadorat1 = 5
		contadorat2 = 5
		pegapos
		contadorpos = 0
		foco
	verb
		Girar1()
			foco = winget(src,null,"focus")
			if(findtext(foco,"1",))
				foco = 1
				contadorat = contadorat1
				girado = girado1
			if(findtext(foco,"2",))
				foco = 2
				contadorat = contadorat2
				girado = girado2

			if(girado == 0 )
				var/numero
				var/posicao = 36
				winset(src,"atalhos[foco].at1","pos = 0,4")

				for(numero = 2,numero<=10,numero++)
					winset(src,"atalhos[foco].at[numero]","pos = [posicao],4")
					posicao = posicao+36

				if(foco == 1)
					girado1 = 1
				if(foco == 2)
					girado2 = 1

				var/posicao2 = 181
				var/posicao3 = 200
				var/tamanho = 218
				var/cont = 5
				while( contadorpos <= 6 )
					if(foco == 1)
						if(contadorat == cont)
							winset(src,"atalhos[foco].maisat2","pos = [posicao2]x0")
							winset(src,"atalhos[foco].menosat2","pos = [posicao2]x20")
							winset(src,"atalhos[foco].girar2","pos = [posicao3]x0")
							winset(src,"atalhos[foco].desligar2","pos = [posicao3]x20")
							winset(src,"atalhos[foco]","size = [tamanho]x41")
							return
						posicao2 = posicao2 + 36
						posicao3 = posicao3 + 36
						tamanho = tamanho + 36
						cont++
					if(foco == 2)
						if(contadorat2 == cont)
							winset(src,"atalhos[foco].maisat2","pos = [posicao2]x0")
							winset(src,"atalhos[foco].menosat2","pos = [posicao2]x20")
							winset(src,"atalhos[foco].girar2","pos = [posicao3]x0")
							winset(src,"atalhos[foco].desligar2","pos = [posicao3]x20")
							winset(src,"atalhos[foco]","size = [tamanho]x41")
							return
						posicao2 = posicao2 + 36
						posicao3 = posicao3 + 36
						tamanho = tamanho + 36
						cont++
				return

			if(girado == 1 )
				var/numero
				var/posicao = 39
				winset(src,"atalhos[foco].at1","pos = 0,0")

				for(numero = 2,numero<=10,numero++)
					winset(src,"atalhos[foco].at[numero]","pos = 0,[posicao]")
					posicao = posicao+39

				if(foco == 1)
					girado1 = 0
				if(foco == 2)
					girado2 = 0

				var/posicao2 = 190
				var/posicao3 = 209
				var/tamanho = 234
				var/cont = 5
				while( contadorpos <= 6 )
					if(foco == 1)
						if(contadorat == cont)
							winset(src,"atalhos[foco].maisat","pos = 0x[posicao2]")
							winset(src,"atalhos[foco].menosat","pos = 20x[posicao2]")
							winset(src,"atalhos[foco].girar","pos = 0x[posicao3]")
							winset(src,"atalhos[foco].desligar","pos = 20x[posicao3]")
							winset(src,"atalhos[foco]","size = 39x[tamanho]")
							return
						posicao2 = posicao2 + 40
						posicao3 = posicao3 + 40
						tamanho = tamanho + 39
						cont++
					if(foco == 2)
						if(contadorat2 == cont)
							winset(src,"atalhos[foco].maisat","pos = 0x[posicao2]")
							winset(src,"atalhos[foco].menosat","pos = 20x[posicao2]")
							winset(src,"atalhos[foco].girar","pos = 0x[posicao3]")
							winset(src,"atalhos[foco].desligar","pos = 20x[posicao3]")
							winset(src,"atalhos[foco]","size = 39x[tamanho]")
							return
						posicao2 = posicao2 + 40
						posicao3 = posicao3 + 40
						tamanho = tamanho + 39
						cont++
				return

		Maisat1()
			foco = winget(src,null,"focus")
			if(findtext(foco,"1",))
				foco = 1
				contadorat = contadorat1
			if(findtext(foco,"2",))
				foco = 2
				contadorat = contadorat2

			if(contadorat == 5 )
				winset(src,"atalhos[foco].at6","is-visible = true")
				winset(src,"atalhos[foco].maisat","pos = 1x235")
				winset(src,"atalhos[foco].menosat","pos = 20x235")
				winset(src,"atalhos[foco].girar","pos = 1x256")
				winset(src,"atalhos[foco].desligar","pos = 20x256")
				winset(src,"atalhos[foco]","size = 39x278")
				if(foco == 1)
					contadorat1++
					return
				if(foco == 2)
					contadorat2++
					return
				return
			if(contadorat == 6 )
				winset(src,"atalhos[foco].at7","is-visible = true")
				winset(src,"atalhos[foco].maisat","pos = 1x274")
				winset(src,"atalhos[foco].menosat","pos = 20x274")
				winset(src,"atalhos[foco].girar","pos = 1x295")
				winset(src,"atalhos[foco].desligar","pos = 20x295")
				winset(src,"atalhos[foco]","size = 39x318")
				if(foco == 1)
					contadorat1++
					return
				if(foco == 2)
					contadorat2++
					return
				return
			if(contadorat == 7 )
				winset(src,"atalhos[foco].at8","is-visible = true")
				winset(src,"atalhos[foco].maisat","pos = 1x311")
				winset(src,"atalhos[foco].menosat","pos = 20x311")
				winset(src,"atalhos[foco].girar","pos = 1x332")
				winset(src,"atalhos[foco].desligar","pos = 20x332")
				winset(src,"atalhos[foco]","size = 39x355")
				if(foco == 1)
					contadorat1++
					return
				if(foco == 2)
					contadorat2++
					return
				return
			if(contadorat == 8 )
				winset(src,"atalhos[foco].at9","is-visible = true")
				winset(src,"atalhos[foco].maisat","pos = 1x352")
				winset(src,"atalhos[foco].menosat","pos = 20x352")
				winset(src,"atalhos[foco].girar","pos = 1x373")
				winset(src,"atalhos[foco].desligar","pos = 20x373")
				winset(src,"atalhos[foco]","size = 39x395")
				if(foco == 1)
					contadorat1++
					return
				if(foco == 2)
					contadorat2++
					return
				return
			if(contadorat == 9 )
				winset(src,"atalhos[foco].at10","is-visible = true")
				winset(src,"atalhos[foco].maisat","pos = 1x390")
				winset(src,"atalhos[foco].menosat","pos = 20x390")
				winset(src,"atalhos[foco].girar","pos = 1x411")
				winset(src,"atalhos[foco].desligar","pos = 20x411")
				winset(src,"atalhos[foco]","size = 39x434")
				if(foco == 1)
					contadorat1++
					return
				if(foco == 2)
					contadorat2++
					return
				return
			if(contadorat1 == 10 )
				winset(src,"atalhos2","is-visible = true")

		Menosat1()
			foco = winget(src,null,"focus")
			if(findtext(foco,"1",))
				foco = 1
				contadorat = contadorat1
			if(findtext(foco,"2",))
				foco = 2
				contadorat = contadorat2

			if(contadorat2 == 5 )
				winset(src,"atalhos2","is-visible = false")
			if(contadorat == 6 )
				winset(src,"atalhos[foco].at6","is-visible = false")
				winset(src,"atalhos[foco].maisat","pos = 1x196")
				winset(src,"atalhos[foco].menosat","pos = 20x196")
				winset(src,"atalhos[foco].girar","pos = 1x217")
				winset(src,"atalhos[foco].desligar","pos = 20x217")
				winset(src,"atalhos[foco]","size = 39x237")
				if(foco == 1)
					contadorat1--
					return
				if(foco == 2)
					contadorat2--
					return
				return
			if(contadorat == 7 )
				winset(src,"atalhos[foco].at7","is-visible = false")
				winset(src,"atalhos[foco].maisat","pos = 1x235")
				winset(src,"atalhos[foco].menosat","pos = 20x235")
				winset(src,"atalhos[foco].girar","pos = 1x256")
				winset(src,"atalhos[foco].desligar","pos = 20x256")
				winset(src,"atalhos[foco]","size = 39x278")
				if(foco == 1)
					contadorat1--
					return
				if(foco == 2)
					contadorat2--
					return
				return
			if(contadorat == 8 )
				winset(src,"atalhos[foco].at8","is-visible = false")
				winset(src,"atalhos[foco].maisat","pos = 1x274")
				winset(src,"atalhos[foco].menosat","pos = 20x274")
				winset(src,"atalhos[foco].girar","pos = 1x295")
				winset(src,"atalhos[foco].desligar","pos = 20x295")
				winset(src,"atalhos[foco]","size = 39x318")
				if(foco == 1)
					contadorat1--
					return
				if(foco == 2)
					contadorat2--
					return
				return
			if(contadorat == 9 )
				winset(src,"atalhos[foco].at9","is-visible = false")
				winset(src,"atalhos[foco].maisat","pos = 1x311")
				winset(src,"atalhos[foco].menosat","pos = 20x311")
				winset(src,"atalhos[foco].girar","pos = 1x332")
				winset(src,"atalhos[foco].desligar","pos = 20x332")
				winset(src,"atalhos[foco]","size = 39x355")
				if(foco == 1)
					contadorat1--
					return
				if(foco == 2)
					contadorat2--
					return
				return
			if(contadorat == 10 )
				winset(src,"atalhos[foco].at10","is-visible = false")
				winset(src,"atalhos[foco].maisat","pos = 1x352")
				winset(src,"atalhos[foco].menosat","pos = 20x352")
				winset(src,"atalhos[foco].girar","pos = 1x373")
				winset(src,"atalhos[foco].desligar","pos = 20x373")
				winset(src,"atalhos[foco]","size = 39x395")
				if(foco == 1)
					contadorat1--
					return
				if(foco == 2)
					contadorat2--
					return
				return

		Maisat2()
			foco = winget(src,null,"focus")
			if(findtext(foco,"1",))
				foco = 1
				contadorat = contadorat1
			if(findtext(foco,"2",))
				foco = 2
				contadorat = contadorat2

			if(contadorat == 5 )
				winset(src,"atalhos[foco].at6","is-visible = true")
				winset(src,"atalhos[foco].maisat2","pos = 217x0")
				winset(src,"atalhos[foco].menosat2","pos = 217x20")
				winset(src,"atalhos[foco].girar2","pos = 236x0")
				winset(src,"atalhos[foco].desligar2","pos = 236x20")
				winset(src,"atalhos[foco]","size = 254x41")
				if(foco == 1)
					contadorat1++
					return
				if(foco == 2)
					contadorat2++
					return
				return
			if(contadorat == 6 )
				winset(src,"atalhos[foco].at7","is-visible = true")
				winset(src,"atalhos[foco].maisat2","pos = 253x0")
				winset(src,"atalhos[foco].menosat2","pos = 253x20")
				winset(src,"atalhos[foco].girar2","pos = 272x0")
				winset(src,"atalhos[foco].desligar2","pos = 272x20")
				winset(src,"atalhos[foco]","size = 290x41")
				if(foco == 1)
					contadorat1++
					return
				if(foco == 2)
					contadorat2++
					return
				return
			if(contadorat == 7 )
				winset(src,"atalhos[foco].at8","is-visible = true")
				winset(src,"atalhos[foco].maisat2","pos = 289x0")
				winset(src,"atalhos[foco].menosat2","pos = 289x20")
				winset(src,"atalhos[foco].girar2","pos = 308x0")
				winset(src,"atalhos[foco].desligar2","pos = 308x20")
				winset(src,"atalhos[foco]","size = 326x41")
				if(foco == 1)
					contadorat1++
					return
				if(foco == 2)
					contadorat2++
					return
				return
			if(contadorat == 8 )
				winset(src,"atalhos[foco].at9","is-visible = true")
				winset(src,"atalhos[foco].maisat2","pos = 325x0")
				winset(src,"atalhos[foco].menosat2","pos = 325x20")
				winset(src,"atalhos[foco].girar2","pos = 344x0")
				winset(src,"atalhos[foco].desligar2","pos = 344x20")
				winset(src,"atalhos[foco]","size = 362x41")
				if(foco == 1)
					contadorat1++
					return
				if(foco == 2)
					contadorat2++
					return
				return
			if(contadorat == 9 )
				winset(src,"atalhos[foco].at10","is-visible = true")
				winset(src,"atalhos[foco].maisat2","pos = 361x0")
				winset(src,"atalhos[foco].menosat2","pos = 361x20")
				winset(src,"atalhos[foco].girar2","pos = 379x0")
				winset(src,"atalhos[foco].desligar2","pos = 379x20")
				winset(src,"atalhos[foco]","size = 397x41")
				if(foco == 1)
					contadorat1++
					return
				if(foco == 2)
					contadorat2++
					return
				return
			if(contadorat1 == 10 )
				winset(src,"atalhos2","is-visible = true")

		Menosat2()
			foco = winget(src,null,"focus")
			if(findtext(foco,"1",))
				foco = 1
				contadorat = contadorat1
			if(findtext(foco,"2",))
				foco = 2
				contadorat = contadorat2

			if(contadorat2 == 5 )
				winset(src,"atalhos2","is-visible = false")
			if(contadorat == 6 )
				winset(src,"atalhos[foco].at6","is-visible = false")
				winset(src,"atalhos[foco].maisat2","pos = 181x0")
				winset(src,"atalhos[foco].menosat2","pos = 181x20")
				winset(src,"atalhos[foco].girar2","pos = 200x0")
				winset(src,"atalhos[foco].desligar2","pos = 200x20")
				winset(src,"atalhos[foco]","size = 218x41")
				if(foco == 1)
					contadorat1--
					return
				if(foco == 2)
					contadorat2--
					return
				return
			if(contadorat == 7 )
				winset(src,"atalhos[foco].at7","is-visible = false")
				winset(src,"atalhos[foco].maisat2","pos = 217x0")
				winset(src,"atalhos[foco].menosat2","pos = 217x20")
				winset(src,"atalhos[foco].girar2","pos = 236x0")
				winset(src,"atalhos[foco].desligar2","pos = 236x20")
				winset(src,"atalhos[foco]","size = 254x41")
				if(foco == 1)
					contadorat1--
					return
				if(foco == 2)
					contadorat2--
					return
				return
			if(contadorat == 8 )
				winset(src,"atalhos[foco].at8","is-visible = false")
				winset(src,"atalhos[foco].maisat2","pos = 253x0")
				winset(src,"atalhos[foco].menosat2","pos = 253x20")
				winset(src,"atalhos[foco].girar2","pos = 272x0")
				winset(src,"atalhos[foco].desligar2","pos = 272x20")
				winset(src,"atalhos[foco]","size = 290x41")
				if(foco == 1)
					contadorat1--
					return
				if(foco == 2)
					contadorat2--
					return
				return
			if(contadorat == 9 )
				winset(src,"atalhos[foco].at9","is-visible = false")
				winset(src,"atalhos[foco].maisat2","pos = 289x0")
				winset(src,"atalhos[foco].menosat2","pos = 289x20")
				winset(src,"atalhos[foco].girar2","pos = 308x0")
				winset(src,"atalhos[foco].desligar2","pos = 308x20")
				winset(src,"atalhos[foco]","size = 326x41")
				if(foco == 1)
					contadorat1--
					return
				if(foco == 2)
					contadorat2--
					return
				return
			if(contadorat == 10 )
				winset(src,"atalhos[foco].at10","is-visible = false")
				winset(src,"atalhos[foco].maisat2","pos = 325x0")
				winset(src,"atalhos[foco].menosat2","pos = 325x20")
				winset(src,"atalhos[foco].girar2","pos = 344x0")
				winset(src,"atalhos[foco].desligar2","pos = 344x20")
				winset(src,"atalhos[foco]","size = 362x41")
				if(foco == 1)
					contadorat1--
					return
				if(foco == 2)
					contadorat2--
					return
				return





		Desligarat1()
			winset(src,"atalhos1","is-visible = false")
			winset(src,"mainwindow.botaoatalho1","is-visible = true")
		Desligarat2()
			winset(src,"atalhos2","is-visible = false")
			winset(src,"mainwindow.botaoatalho2","is-visible = true")
		Ligarat1()
			winset(src,"atalhos1","is-visible = true")
			winset(src,"mainwindow.botaoatalho1","is-visible = false")
		Ligarat2()
			winset(src,"atalhos2","is-visible = true")
			winset(src,"mainwindow.botaoatalho2","is-visible = false")
