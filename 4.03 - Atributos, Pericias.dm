mob
	verb
		Atributos()
			if(periciasaberta == 0 )
				winset(src,"atributos","size = 362x252")
			if(periciasaberta == 1)
				winset(src,"atributos","size = 737x480")
			if(atributos == 0 )
				winset(src,"atributos","is-visible = true")
				atributos = 1
				return
			if(atributos == 1 )
				winset(src,"atributos","is-visible = false" )
				atributos = 0
				return
		Pericias()
			if(pericias == 1)
				var/contador = 0
				contador = 480
				winset(src,"atributos.periciasbotao","command = ")
				while(contador > 252 )
					winset(src,"atributos","size = 737x[contador]")
					contador = contador - 35
					sleep(1)

				contador = 737
				while(contador >= 352)
					winset(src,"atributos","size = [contador]x252")
					contador = contador - 35
					sleep(1)

				pericias = 0
				periciasaberta = 0
				winset(src,"atributos.periciasbotao","command = Pericias")
				winset(src,"atributos.fundo","is-visible = true")
				winset(src,"atributos.fundo2","is-visible = true")
				return


			if(atributos==1 && pericias == 0)
				var/contador = 364
				winset(src,"atributos.periciasbotao","command = ")
				while(contador <= 737)
					winset(src,"atributos","size = [contador]x252")
					contador = contador + 35
					sleep(1)

				contador = 0
				contador = 252
				while(contador <= 480 )
					winset(src,"atributos","size = 737x[contador]")
					contador = contador + 35
					sleep(1)

				pericias = 1
				periciasaberta = 1
				winset(src,"atributos.periciasbotao","command = Pericias")
				winset(src,"atributos.fundo","is-visible = false")
				winset(src,"atributos.fundo2","is-visible = false")
				return

		InfoArtes()
			src << output("<br><br> Artes Marcias : <br> HURIAAAAA !","atributos.ajudaatributos")
		InfoAgilidade()
			src << output("<br><br> Agilidade : <br> Pensa Rápido !","atributos.ajudaatributos")
		InfoTank()
			src << output("<br><br> Tank : <br> Leva porrada !","atributos.ajudaatributos")
		InfoExpert()
			src << output("<br><br> Expert em Jutsus : <br> Menino Esperto !","atributos.ajudaatributos")
		InfoControle()
			src << output("<br><br> Controle de Chakra : <br> Concentre-se !","atributos.ajudaatributos")

		MaisF()
			winset(src,"atributos.maisf","command = ")
			tpontos = 0
			pega1 = winget(src,"atributos.labelf","text")
			pega2 = winget(src,"atributos.pontospericia","text")
			lforca = text2num(pega1)
			tpontos = text2num(pega2)
			if(tpontos == 0)
				winset(src,"atributos.maisf","command = MaisF")
				return
			else
				lforca = lforca+1
				tpontos = tpontos-1
				winset(src,"atributos.labelf","text = [lforca]")
				winset(src,"atributos.pontospericia","text = [tpontos]")
				winset(src,"atributos.maisf","command = MaisF")
		MenosF()
			winset(src,"atributos.menosf","command = ")
			lforca = 0
			pega1 = winget(src,"atributos.labelf","text")
			pega2 = winget(src,"atributos.pontospericia","text")
			lforca = text2num(pega1)
			tpontos = text2num(pega2)
			if(lforca == 0)
				winset(src,"atributos.menosf","command = MenosF")
				return
			else
				lforca = lforca-1
				tpontos = tpontos+1
				winset(src,"atributos.labelf","text = [lforca]")
				winset(src,"atributos.pontospericia","text = [tpontos]")
				winset(src,"atributos.menosf","command = MenosF")
		MaisR()
			winset(src,"atributos.maisr","command = ")
			tpontos = 0
			pega1 = winget(src,"atributos.labelr","text")
			pega2 = winget(src,"atributos.pontospericia","text")
			lresistencia = text2num(pega1)
			tpontos = text2num(pega2)
			if(tpontos == 0)
				winset(src,"atributos.maisr","command = MaisR")
				return
			else
				lresistencia = lresistencia+1
				tpontos = tpontos-1
				winset(src,"atributos.labelr","text = [lresistencia]")
				winset(src,"atributos.pontospericia","text = [tpontos]")
				winset(src,"atributos.maisr","command = MaisR")
		MenosR()
			winset(src,"atributos.menosr","command = ")
			lresistencia = 0
			pega1 = winget(src,"atributos.labelr","text")
			pega2 = winget(src,"atributos.pontospericia","text")
			lresistencia = text2num(pega1)
			tpontos = text2num(pega2)
			if(lresistencia == 0)
				winset(src,"atributos.menosr","command = MenosR")
				return
			else
				lresistencia = lresistencia-1
				tpontos = tpontos+1
				winset(src,"atributos.labelr","text = [lresistencia]")
				winset(src,"atributos.pontospericia","text = [tpontos]")
				winset(src,"atributos.menosr","command = MenosR")
		MaisV()
			winset(src,"atributos.maisv","command = ")
			tpontos = 0
			pega1 = winget(src,"atributos.labelv","text")
			pega2 = winget(src,"atributos.pontospericia","text")
			lvelocidade = text2num(pega1)
			tpontos = text2num(pega2)
			if(tpontos == 0)
				winset(src,"atributos.maisv","command = MaisV")
				return
			else
				lvelocidade = lvelocidade+1
				tpontos = tpontos-1
				winset(src,"atributos.labelv","text = [lvelocidade]")
				winset(src,"atributos.pontospericia","text = [tpontos]")
				winset(src,"atributos.maisv","command = MaisV")
		MenosV()
			winset(src,"atributos.menosv","command = ")
			lvelocidade = 0
			pega1 = winget(src,"atributos.labelv","text")
			pega2 = winget(src,"atributos.pontospericia","text")
			lvelocidade = text2num(pega1)
			tpontos = text2num(pega2)
			if(lvelocidade == 0)
				winset(src,"atributos.menosv","command = MenosV")
				return
			else
				lvelocidade = lvelocidade-1
				tpontos = tpontos+1
				winset(src,"atributos.labelv","text = [lvelocidade]")
				winset(src,"atributos.pontospericia","text = [tpontos]")
				winset(src,"atributos.menosv","command = MenosV")
		MaisI()
			winset(src,"atributos.maisi","command = ")
			tpontos = 0
			pega1 = winget(src,"atributos.labeli","text")
			pega2 = winget(src,"atributos.pontospericia","text")
			linteligencia = text2num(pega1)
			tpontos = text2num(pega2)
			if(tpontos == 0)
				winset(src,"atributos.maisi","command = MaisI")
				return
			else
				linteligencia = linteligencia+1
				tpontos = tpontos-1
				winset(src,"atributos.labeli","text = [linteligencia]")
				winset(src,"atributos.pontospericia","text = [tpontos]")
				winset(src,"atributos.maisi","command = Maisi")
		MenosI()
			winset(src,"atributos.menosi","command = ")
			tpontos = 0
			pega1 = winget(src,"atributos.labeli","text")
			pega2 = winget(src,"atributos.pontospericia","text")
			linteligencia = text2num(pega1)
			tpontos = text2num(pega2)
			if(linteligencia == 0)
				winset(src,"atributos.menosi","command = MenosI")
				return
			else
				linteligencia = linteligencia-1
				tpontos = tpontos+1
				winset(src,"atributos.labeli","text = [linteligencia]")
				winset(src,"atributos.pontospericia","text = [tpontos]")
				winset(src,"atributos.menosi","command = Menosi")
		OKAtributos()
			pega1 = winget(src,"atributos.totalforca","text")
			pega2 = winget(src,"atributos.totalresistencia","text")
			pega3 = winget(src,"atributos.totalvelocidade","text")
			pega4 = winget(src,"atributos.totalinteligencia","text")
			pegam1 = winget(src,"atributos.labelf","text")
			pegam2 = winget(src,"atributos.labelr","text")
			pegam3 = winget(src,"atributos.labelv","text")
			pegam4 = winget(src,"atributos.labeli","text")

			maisforca = text2num(pegam1)
			maisresistencia = text2num(pegam2)
			maisvelocidade = text2num(pegam3)
			maisinteligencia = text2num(pegam4)

			valorforca = text2num(pega1)
			valorresistencia = text2num(pega2)
			valorvelocidade = text2num(pega3)
			valorinteligencia = text2num(pega4)

			valorforca = valorforca + maisforca
			valorresistencia = valorresistencia + maisresistencia
			valorvelocidade = valorvelocidade + maisvelocidade
			valorinteligencia = valorinteligencia + maisinteligencia


			winset(src,"atributos.totalforca","text = [valorforca]")
			winset(src,"atributos.totalresistencia","text = [valorresistencia]")
			winset(src,"atributos.totalvelocidade","text = [valorvelocidade]")
			winset(src,"atributos.totalinteligencia","text = [valorinteligencia]")
			winset(src,"atributos.labelf","text = 0")
			winset(src,"atributos.labelr","text = 0")
			winset(src,"atributos.labelv","text = 0")
			winset(src,"atributos.labeli","text = 0")



		MaisArtes()
			winset(src,"atributos.maisartes","command = ")
			tpontos = 0
			pega1 = winget(src,"atributos.labelartes","text")
			pega2 = winget(src,"atributos.pontospericias","text")
			lartes = text2num(pega1)
			tpontos = text2num(pega2)
			if(tpontos == 0)
				winset(src,"atributos.maisartes","command = MaisArtes")
				return
			else
				lartes = lartes+1
				tpontos = tpontos-1
				winset(src,"atributos.labelartes","text = [lartes]")
				winset(src,"atributos.pontospericias","text = [tpontos]")
				winset(src,"atributos.maisartes","command = MaisArtes")
		MenosArtes()
			winset(src,"atributos.menosartes","command = ")
			tpontos = 0
			pega1 = winget(src,"atributos.labelartes","text")
			pega2 = winget(src,"atributos.pontospericias","text")
			lartes = text2num(pega1)
			tpontos = text2num(pega2)
			if(lartes == 0)
				winset(src,"atributos.menosartes","command = MenosArtes")
				return
			else
				lartes = lartes-1
				tpontos = tpontos+1
				winset(src,"atributos.labelartes","text = [lartes]")
				winset(src,"atributos.pontospericias","text = [tpontos]")
				winset(src,"atributos.menosartes","command = MenosArtes")
		MaisAgilidade()
			winset(src,"atributos.maisagilidade","command = ")
			tpontos = 0
			pega1 = winget(src,"atributos.labelagilidade","text")
			pega2 = winget(src,"atributos.pontospericias","text")
			lagilidade = text2num(pega1)
			tpontos = text2num(pega2)
			if(tpontos == 0)
				winset(src,"atributos.maisagilidade","command = MaisAgilidade")
				return
			else
				lagilidade = lagilidade+1
				tpontos = tpontos-1
				winset(src,"atributos.labelagilidade","text = [lagilidade]")
				winset(src,"atributos.pontospericias","text = [tpontos]")
				winset(src,"atributos.maisagilidade","command = MaisAgilidade")
		MenosAgilidade()
			winset(src,"atributos.menosagilidade","command = ")
			tpontos = 0
			pega1 = winget(src,"atributos.labelagilidade","text")
			pega2 = winget(src,"atributos.pontospericias","text")
			lagilidade = text2num(pega1)
			tpontos = text2num(pega2)
			if(lagilidade == 0)
				winset(src,"atributos.menosagilidade","command = MenosAgilidade")
				return
			else
				lagilidade = lagilidade-1
				tpontos = tpontos+1
				winset(src,"atributos.labelagilidade","text = [lagilidade]")
				winset(src,"atributos.pontospericias","text = [tpontos]")
				winset(src,"atributos.menosagilidade","command = MenosAgilidade")
		MaisTank()
			winset(src,"atributos.maistank","command = ")
			tpontos = 0
			pega1 = winget(src,"atributos.labeltank","text")
			pega2 = winget(src,"atributos.pontospericias","text")
			ltank = text2num(pega1)
			tpontos = text2num(pega2)
			if(tpontos == 0)
				winset(src,"atributos.maistank","command = MaisTank")
				return
			else
				ltank = ltank+1
				tpontos = tpontos-1
				winset(src,"atributos.labeltank","text = [ltank]")
				winset(src,"atributos.pontospericias","text = [tpontos]")
				winset(src,"atributos.maistank","command = MaisTank")
		MenosTank()
			winset(src,"atributos.menostank","command = ")
			tpontos = 0
			pega1 = winget(src,"atributos.labeltank","text")
			pega2 = winget(src,"atributos.pontospericias","text")
			ltank = text2num(pega1)
			tpontos = text2num(pega2)
			if(ltank == 0)
				winset(src,"atributos.menostank","command = MenosTank")
				return
			else
				ltank = ltank-1
				tpontos = tpontos+1
				winset(src,"atributos.labeltank","text = [ltank]")
				winset(src,"atributos.pontospericias","text = [tpontos]")
				winset(src,"atributos.menostank","command = MenosTank")
		MaisExpert()
			winset(src,"atributos.maisexpert","command = ")
			tpontos = 0
			pega1 = winget(src,"atributos.labelexpert","text")
			pega2 = winget(src,"atributos.pontospericias","text")
			lexpert = text2num(pega1)
			tpontos = text2num(pega2)
			if(tpontos == 0)
				winset(src,"atributos.maisexpert","command = MaisExpert")
				return
			else
				lexpert = lexpert+1
				tpontos = tpontos-1
				winset(src,"atributos.labelexpert","text = [lexpert]")
				winset(src,"atributos.pontospericias","text = [tpontos]")
				winset(src,"atributos.maisexpert","command = MaisExpert")
		MenosExpert()
			winset(src,"atributos.menosexpert","command = ")
			tpontos = 0
			pega1 = winget(src,"atributos.labelexpert","text")
			pega2 = winget(src,"atributos.pontospericias","text")
			lexpert = text2num(pega1)
			tpontos = text2num(pega2)
			if(lexpert == 0)
				winset(src,"atributos.menosexpert","command = MenosExpert")
				return
			else
				lexpert = lexpert-1
				tpontos = tpontos+1
				winset(src,"atributos.labelexpert","text = [lexpert]")
				winset(src,"atributos.pontospericias","text = [tpontos]")
				winset(src,"atributos.menosexpert","command = MenosExpert")
		MaisControle()
			winset(src,"atributos.maiscontrole","command = ")
			tpontos = 0
			pega1 = winget(src,"atributos.labelcontrole","text")
			pega2 = winget(src,"atributos.pontospericias","text")
			lcontrole = text2num(pega1)
			tpontos = text2num(pega2)
			if(tpontos == 0)
				winset(src,"atributos.maiscontrole","command = MaisControle")
				return
			else
				lcontrole = lcontrole+1
				tpontos = tpontos-1
				winset(src,"atributos.labelcontrole","text = [lcontrole]")
				winset(src,"atributos.pontospericias","text = [tpontos]")
				winset(src,"atributos.maiscontrole","command = MaisControle")
		MenosControle()
			winset(src,"atributos.menoscontrole","command = ")
			tpontos = 0
			pega1 = winget(src,"atributos.labelcontrole","text")
			pega2 = winget(src,"atributos.pontospericias","text")
			lcontrole = text2num(pega1)
			tpontos = text2num(pega2)
			if(lcontrole == 0)
				winset(src,"atributos.menoscontrole","command = MenosControle")
				return
			else
				lcontrole = lcontrole-1
				tpontos = tpontos+1
				winset(src,"atributos.labelcontrole","text = [lcontrole]")
				winset(src,"atributos.pontospericias","text = [tpontos]")
				winset(src,"atributos.menoscontrole","command = MenosControle")
		OKPericia()
			pega1 = winget(src,"atributos.totalartes","text")
			pega2 = winget(src,"atributos.totalagilidade","text")
			pega3 = winget(src,"atributos.totaltank","text")
			pega4 = winget(src,"atributos.totalexpert","text")
			pega5 = winget(src,"atributos.totalcontrole","text")
			pegam1 = winget(src,"atributos.labelartes","text")
			pegam2 = winget(src,"atributos.labelagilidade","text")
			pegam3 = winget(src,"atributos.labeltank","text")
			pegam4 = winget(src,"atributos.labelexpert","text")
			pegam5 = winget(src,"atributos.labelcontrole","text")

			maisartes = text2num(pegam1)
			maisagilidade = text2num(pegam2)
			maistank = text2num(pegam3)
			maisexpert = text2num(pegam4)
			maiscontrole = text2num(pegam5)

			valorartes = text2num(pega1)
			valoragilidade = text2num(pega2)
			valortank = text2num(pega3)
			valorexpert = text2num(pega4)
			valorcontrole = text2num(pega5)

			valorartes = valorartes + maisartes
			valoragilidade = valoragilidade + maisagilidade
			valortank = valortank + maistank
			valorexpert = valorexpert + maisexpert
			valorcontrole = valorcontrole + maiscontrole


			winset(src,"atributos.totalartes","text = [valorartes]")
			winset(src,"atributos.totalagilidade","text = [valoragilidade]")
			winset(src,"atributos.totaltank","text = [valortank]")
			winset(src,"atributos.totalexpert","text = [valorexpert]")
			winset(src,"atributos.totalcontrole","text = [valorcontrole]")
			winset(src,"atributos.labelartes","text = 0")
			winset(src,"atributos.labelagilidade","text = 0")
			winset(src,"atributos.labeltank","text = 0")
			winset(src,"atributos.labelexpert","text = 0")
			winset(src,"atributos.labelcontrole","text = 0")