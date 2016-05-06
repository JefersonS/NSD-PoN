mob
	verb
		QuestBotao()
			if(objetvoligado == 0)
				winset(src,"questobjetvo","pos = 500x120")
				winset(src,"questobjetvo","is-visible = true")
				objetvoligado = 1
				return
			if(objetvoligado == 1)
				winset(src,"questobjetvo","is-visible = false")
				objetvoligado = 0
				return
		Objetivomissao()
			var/a = "Missões:"
			winset(src,"questobjetvo.label","text=\"[a]\"")
			winset(src,"questobjetvo.objetivo1","is-visible = false")
			winset(src,"questobjetvo.objetivo2","is-visible = true")
			winset(src,"labelquest1","is-visible = true")
			winset(src,"labelquest2","is-visible = false")
			return
		Objetivoquests()
			var/b = "Quests:"
			winset(src,"questobjetvo.label","text=\"[b]\"")
			winset(src,"questobjetvo.objetivo2","is-visible = false")
			winset(src,"questobjetvo.objetivo1","is-visible = true")
			winset(src,"labelquest1","is-visible = false")
			winset(src,"labelquest2","is-visible = true")
			return