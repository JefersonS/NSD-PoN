
var
	posicao1
	posicao2
mob
	var
		aaltura
		llargura
		altura
		largura
		calculoa
		calculol
		volta
mob
	proc
		AlturaLargura()
			if((lentext(tamanhotela)) == 7)

				llargura = copytext(tamanhotela,1,4)
				aaltura = copytext(tamanhotela,6,8)

				altura = text2num(aaltura)
				largura = text2num(llargura)
				calculoa = (round(altura/52)+1)
				calculol = (round(largura/52)+1)
				posicao1 = (calculoa-1)
				posicao2 = (calculol-1)

				src.client.view = "[calculol]x[calculoa]"


			if((lentext(tamanhotela)) == 8)

				llargura = copytext(tamanhotela,1,5)
				aaltura = copytext(tamanhotela,6,9)

				altura = text2num(aaltura)
				largura = text2num(llargura)
				calculoa = (round(altura/52)+1)
				calculol = (round(largura/52)+1)
				posicao1 = (calculoa-1)
				posicao2 = (calculol-1)

				src.client.view = "[calculol]x[calculoa]"

			if((lentext(tamanhotela)) == 9)

				llargura = copytext(tamanhotela,1,6)
				aaltura = copytext(tamanhotela,6,10)

				altura = text2num(aaltura)
				largura = text2num(llargura)
				calculoa = (round(altura/52)+1)
				calculol = (round(largura/52)+1)
				posicao1 = (calculoa-1)
				posicao2 = (calculol-1)

				src.client.view = "[calculol]x[calculoa]"