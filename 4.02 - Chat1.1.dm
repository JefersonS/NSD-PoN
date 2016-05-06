var
	redcharset
	list/moblist = list()
mob
	var
		list/Images = list()
		sd_TextWindow/Window

mob
	verb
		Falartela(T as text)
			// show it as text
			if(!T || T == " " || T == "  " || T == "   ") return
			view(10) << "<font color = white>[usr] falou:</font><font color = gray> [T]</font>"

			// delete old wordballoons to avoid overlap
			if(sd_BalloonTails && sd_BalloonTails.len)
				for(var/Tail in sd_BalloonTails)
					del(Tail)

			// show it in a ballon that will be cleared in 15 seconds
			sd_ImprovedWordBalloon(T, src)

		/*	// show the text in everyone's text window
			for(var/mob/M in moblist)
				if(M.Window)
					M.Window.Append("[src]: [T]") */