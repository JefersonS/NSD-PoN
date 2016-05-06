proc
	sd_OverlayText(Text as text, Loc, Layer = FLY_LAYER, line = 0, offset = 0, charset = 'charset.dmi')
		if(!Loc || !Text) return
		if(offset > 3)
			world.log << "Invalid offset in MapText:\n\t\
				Text:[Text]   Loc:[Loc]\n\t\
				line:[line]   offset:[offset]"
			return
		var
			len = lentext(Text)
			list/Locs
			obj/O = new()
			atom/current_loc
			loc_index = 1
		if(istype(Loc,/list))
			Locs = Loc
		else if(istype(Loc,/turf))
			var/turf/Turf = Loc
			Locs = block(Turf,locate(world.maxx,Turf.y,Turf.z))
		else
			Locs = list(Loc)
		if(!Locs.len) return
		current_loc = Locs[1]
		if(len > (Locs.len * 4 - offset)) len = Locs.len * 4 - offset
		O.layer = Layer
		for(var/position = 1, position <= len,)
		// no increment here because I do it in the copytext line
			O.icon = charset
			O.pixel_x = offset * 8
			O.pixel_y = line * 16
			O.icon_state = copytext(Text, position, ++position)
			// increment position here to avoid redundant math operations
			current_loc.overlays += O
			if(++offset > 3)
				offset = 0
				if(++loc_index <= Locs.len) current_loc = Locs[loc_index]
		return 1

	sd_MapFrame(To,Left,Right,Top,Bottom,Z, Layer = FLY_LAYER, frame = 'balloon50.dmi')
		var
			obj/O = new()
			Image
			list/Images = list()

		O.icon = frame
		O.layer = Layer
		O.icon_state = "tl"
		Image = image(O,locate(Left,Top,Z))
		To << Image
		Images += Image

		O.icon_state = "tr"
		Image = image(O,locate(Right,Top,Z))
		To << Image
		Images += Image

		O.icon_state = "bl"
		Image = image(O,locate(Left,Bottom,Z))
		To << Image
		Images += Image

		O.icon_state = "br"
		Image = image(O,locate(Right,Bottom,Z))
		To << Image
		Images += Image

		for(var/X = Left + 1, X < Right, ++X)
			O.icon_state = "tm"
			Image = image(O,locate(X,Top,Z))
			To << Image
			Images += Image

			O.icon_state = "bm"
			Image = image(O,locate(X,Bottom,Z))
			To << Image
			Images += Image

			for(var/Y = Bottom+1, Y < Top, ++Y)
				O.icon_state = "cl"
				Image = image(O,locate(Left,Y,Z))
				To << Image
				Images += Image

				O.icon_state = "cr"
				Image = image(O,locate(Right,Y,Z))
				To << Image
				Images += Image

				O.icon_state = "cm"
				Image = image(O,locate(X, Y, Z))
				To << Image
				Images += Image

		return Images



	sd_ImprovedWordBalloon(Text as text, atom/Owner = usr, layer = FLY_LAYER, delay = 50, charset = 'charset.dmi', balloon = 'balloon50.dmi')
		if(!Owner || !Text) return
		var
			Len = lentext(Text)
			width = 5
			textwidth
			height = 2
			obj/O
			atom/movable/Tail = new(Owner.loc)

		// find height and width
		textwidth = width * 4 - 2

		for(var/lineend = 0, lineend < Len)
			var/beginline = lineend
			lineend += textwidth
			if(lineend > Len) break

			// check the char at the end of this line.
			var/char = lowertext(copytext(Text,lineend,lineend+1))
			if(((char>="a")&&(char<="z"))||((char>="0")&&(char<="9")))
				// check the next character
				char = lowertext(copytext(Text,lineend+1,lineend+2))
				if(((char>="a")&&(char<="z"))||((char>="0")&&(char<="9")))
					for(var/position = lineend, position>beginline, --position)
						char = lowertext(copytext(Text,position,position+1))
						if(((char>="a")&&(char<="z"))||((char>="0")&&(char<="9")))
							continue	// position loop

						// found a word break
						var/spaces = ""
						for(var/loop in position+1 to lineend)
							spaces += " "
						Text = copytext(Text,1, position+1) + spaces + copytext(Text,position+1)
						Len = lentext(Text)
						break	// position loop

		if(Len > textwidth * (height * 2 - 2))
			Len = textwidth * (height * 2 - 2)
			Text = copytext(Text,1,Len-2) + "..."
		textwidth = 4 * width - 2	// width in characters

		for(var/Y in 1 to height)
			//draw part of the balloon
			var/list/DrawList = new()	// blank the DrawList
			for(var/X in 1 to width)
				O = new()
				O.icon = balloon
				O.layer = layer

				if(Y == 1)
					O.icon_state = "t"
				else if(Y == height)
					O.icon_state = "b"
				else
					O.icon_state = "c"
				if(X == 1)
					O.icon_state += "l"
				else if(X == width)
					O.icon_state += "r"
				else
					O.icon_state += "m"

				O.pixel_x = (X-3) * 32
				O.pixel_y = (2 - Y) * 32

				DrawList += O	// add WB to the draw List

			// draw the text on DrawList
			sd_OverlayText(copytext(Text,(Y-1)*2*textwidth+1,((Y-1)*2+1)*textwidth+1),DrawList,layer,0,1,charset)
			sd_OverlayText(copytext(Text,((Y-1)*2-1)*textwidth+1,(Y-1)*2*textwidth+1),DrawList,layer,1,1,charset)

			/* Add this line of sd_WordBallons to the Tail's Balloon list
			   so the Tail can keep track of them all. */
			for(var/atom/movable/A in DrawList)
				Tail.overlays += A


		// draw the tail
		Tail.icon = balloon
		Tail.animate_movement = SYNC_STEPS
		Tail.icon_state = "dtail"
		Tail.layer = layer + 0.1
		Tail.pixel_y = 32

		if(!Owner.sd_BalloonTails) Owner.sd_BalloonTails = list()
		Owner.sd_BalloonTails += Tail

		if(delay > 0)
			spawn(delay)
				del(Tail)
				if(!Owner.sd_BalloonTails.len) del(Owner.sd_BalloonTails)

			spawn()
				while(Tail)
					Tail.loc = Owner.loc
					sleep(1)

		return Tail




atom
	// list of BalloonTails linked to this atom
	var/tmp/list/sd_BalloonTails

atom/movable
	Move()
		/* add code to atom/movable/Move() so that if the atom has
		   Word Balloons attached to it, they each move as well. */
		. = ..()
		if(.)
			for(var/atom/movable/sd_BalloonTail/Tail in sd_BalloonTails)
				Tail.sd_OwnerMoved(src)

	sd_WordBalloon	// componant of a word balloon
		density = 0
	sd_BalloonTail
	/* tail of a word balloon, used to track a word balloon and keep
	   it linked to the owning mob */
		density = 0
		var
			list/Balloon[] 	// list of sd_WordBalloons in this balloon
			above = 1	// is the tail above or below the Owner?
			height	// height (in tiles) of the balloon
			width	// width (in tiles) of the balloon
			rigid = 0	/* If 0, the tail will slide along the edge of
						   the balloon, only moving the balloon if the
						   tail moves beyond the edge.
						   If 1, the balloon moves each time the Owner
						   moves. */
			image/Image	// image on the tail

		Del()
			for(var/A in Balloon)
				del(A)
			..()

		proc/sd_OwnerMoved(atom/movable/Owner)
			var/atom/left = Balloon[1]
			// left is used to check the horizontal boundries of the balloon
			var/redraw = rigid // if redraw = 1, the balloon must be redrawn
			var/dx = Owner.x - x			// change in x position
			var/dy = (Owner.y+above) - y	// change in y position

			// check if the balloon bumped the left or right edge of the map
			if(((left.x + dx) < 1) || ((left.x + width + dx - 1) > world.maxx))
				dx = 0

			/* if the tail is not rigid and the owner is in the horizontal
			   boundries, don't change the balloon horiontally */
			if(!rigid && (Owner.x >= left.x) && (Owner.x <= (left.x + width - 1)))
				dx = 0

			// check if the balloon bumped the top or bottom of the map
			var/edge = Owner.y + (height * above)
			if((edge > world.maxy) || (edge < 1))
				above = -above
				dy += above * (height + 1) // move the balloon
				redraw = 1
				if(above == 1)
					Image.icon_state = "dtail"
				else
					Image.icon_state = "utail"

			// redraw if Owner changed coordinates
			else if((Owner.z != z) || dy || dx)
				redraw = 1

			if(redraw)
				// move every atom in the Balloon
				for(var/atom/movable/sd_WordBalloon/WB in Balloon)
					WB.loc = locate(WB.x + dx,WB.y + dy, z)

			// move the tail
			loc = locate(Owner.x,Owner.y + above, Owner.z)



