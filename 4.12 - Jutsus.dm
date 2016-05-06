// vars needed in this scope
mob/var
	clicking = ""
	uNORTH = 0
	uSOUTH = 0
	uEAST = 0
	uWEST = 0
	KATON_AJUST_STEP_1 = 40
	KATON_AJUST_STEP_2 = 45
	KATON_AJUST_STEP_3 = 80

// Click proc for every jutsu usging click
client/Click(atom/o)
    ..()
    if(o.x && o.y && o.z && usr.clicking != "")
        var/obj/jutsus/projeteis/obj = "/obj/jutsus/projeteis/[usr.clicking]"
        var/obj/jutsus/projeteis/p = new obj
        p.loc = o
        if(istype(o, /mob))	p.loc = o.loc
        spawn(5)
        del p

// Updates the list of jutsus in the Jutsus tab
mob
	proc/AtualizaJutsus()
		var/i = 1
		for(var/obj/jutsus/O in src)
			winset(src, "jutsus.jutsus", "current-cell=[i]")
			src << output(O, "jutsus.jutsus")
			winset(src, "jutsus.jutsus", "cells=[i]")
			i++

// Activate verb + every different kind of verb for each kind of jutsu
obj/jutsus/icones
	verb/Ativar()
		var/obj = "/obj/jutsus/projeteis/[src.name]"
		var/obj/jutsus/projeteis/p = new obj
		//p.loc = usr.loc
		if(p.abilityType == "spear")
			Spear(usr.dir, 0, p.range, src.name, usr.x, usr.y, usr.step_x, usr.step_y)
		if(p.abilityType == "projectile")
			Projectile(0, p.range, src.name)
		if(p.abilityType == "clickable")
			Clickable(src.name)
		if(p.abilityType == "static")
			Static(src.name)
		if(p.abilityType == "self-heal")
			Heal(src.name)
		if(p.abilityType == "self-shield")
			Shield(src.name)
		//walk(p,usr.dir,0,usr.step_size + 5)
		//spawn(p.travelDistance)
		//del(p)
		usr << p.desc

// Spear works as a projectile that has a tail
	proc/Spear(direction, distance, maximumDistance, name, X, Y, stepX, stepY)
		var/i = distance
		var/obj/jutsus/projeteis/p2
		if(i <= maximumDistance)
			//for(i=0, i<distance, i++)
			var/obj = "/obj/jutsus/projeteis/[src.name]"
			var/obj/jutsus/projeteis/p = new obj
			if(p.hasTail == 1)
				var/obj2 = "/obj/jutsus/projeteis/[src.name]Tail"
				p2 = new obj2
			p.dir = direction

			switch (direction)
				if(1)
					p.x = X
					p.y = Y+i
				if(4)
					p.x = X+i
					p.y = Y
				if(8)
					p.x = X-i
					p.y = Y
				if(2)
					p.x = X
					p.y = Y-i

			p.z = usr.z
			p.step_y = stepY
			p.step_x = stepX
			usr << "[direction]"
			sleep(p.speedOfCreation)
			spawn(p.speedOfCreation*maximumDistance) del(p)
			p.overlays += p2
			Spear(direction, ++i, maximumDistance, name, X, Y, stepX, stepY)

// Eevery "throwable" jutsu
	proc/Projectile(distance, maximumDistance, name)
		var/obj = "/obj/jutsus/projeteis/[src.name]"
		var/obj/jutsus/projeteis/p = new obj
		p.dir = usr.dir
		p.loc = usr.loc

		switch (usr.dir)
			if(1)
				p.step_y = usr.step_y
				p.step_x = usr.step_x-usr.KATON_AJUST_STEP_2
			if(4)
				p.step_y = usr.step_y-usr.KATON_AJUST_STEP_1
				p.step_x = usr.step_x
			if(8)
				p.step_y = usr.step_y-usr.KATON_AJUST_STEP_1
				p.step_x = usr.step_x-usr.KATON_AJUST_STEP_3
			if(2)
				p.step_y = usr.step_y-usr.KATON_AJUST_STEP_3
				p.step_x = usr.step_x-usr.KATON_AJUST_STEP_2

		usr << name
		walk(p,usr.dir,0,0)
		spawn(maximumDistance)
		del(p)

// Every jutsu that works with the click of a mouse
	proc/Clickable(src.name)
		var/obj = "/obj/jutsus/projeteis/[src.name]"
		var/obj/jutsus/projeteis/p = new obj
		if(p.clickable == 0)
			p.clickable = 1
			usr.clicking = src.name
			sleep(30)
			p.clickable = 0
			usr.clicking = ""
		else
			p.clickable = 0

// Jutsus that has no movement, usually a buff or something that only needs one tile
	proc/Static(name)
		var/obj = "/obj/jutsus/projeteis/[name]"
		var/obj/jutsus/projeteis/p = new obj
		p.dir = usr.dir
		p.x = usr.x+1
		p.y = usr.y
		p.z = usr.z
		p.step_y = usr.step_y
		p.step_x = usr.step_x
		spawn(3)
		del(p)

// Jutsus that have an animation for a body
	proc/Heal(name)
		var/obj = "/obj/jutsus/projeteis/[name]"
		var/obj/jutsus/projeteis/p = new obj
		p.layer = FLOAT_LAYER -1
		usr.overlays += p
		spawn(3)
		usr.overlays -= p

// Shields that changes a body
	proc/Shield(name)
		var/obj = "/obj/jutsus/projeteis/[name]"
		var/obj/jutsus/projeteis/p = new obj
		//p.layer = FLOAT_LAYER + 10
		var/oldIcon = usr.icon
		p.overlays = usr.overlays
		usr.icon = p
		spawn(3)
		usr.icon = oldIcon

// MouseDrag and Drop for jutsus from the jutsus tab to the hotkeys
obj/jutsus
	MouseDrag()
		if(src in usr.contents)
			var/icon/I = new(src.icon,src.icon_state)
			mouse_drag_pointer = I

	MouseDrop(over_object,src_location,over_location,src_control,over_control,params)
		var/obj/macros/A1 = new /obj/macros
		if(istype(over_object,A1))
			A1 = over_object
			A1.overlays = null
			A1.overlays += src
		// altera macro

// Jutsus and their types and properties
/obj/jutsus/projeteis
	Bump(mob)
		usr << "a"
	var
		travelDistance = 10
		abilityType = "projectile"
		range = 0
		speedOfCreation = 0
		clickable = 0
		hasTail = 0
	Katon
		name = "Katon"
		icon = 'jutsus/Katon2_Jutsu.dmi'
		abilityType = "projectile"
		range = 20
		density = 1
	Doton
		name = "Doton"
		icon = 'jutsus/Doton_Jutsu.dmi'
		range = 15
	Raiton
		name = "Raiton"
		icon = 'jutsus/Raiton_Jutsu.dmi'
		abilityType = "spear"
		range = 10
		speedOfCreation = 1
	Raiton2
		name = "Raiton2"
		icon = 'jutsus/Raiton2_Jutsu.dmi'
		abilityType = "clickable"
	Raiton3
		name = "Raiton3"
		icon = 'jutsus/Raiton3_Jutsu.dmi'
		abilityType = "static"
	Suiton
		name = "Suiton"
		icon = 'jutsus/Suiton_Jutsu.dmi'
		abilityType = "spear"
		range = 10
		speedOfCreation = 1
		hasTail = 1
	SuitonTail
		name = "SuitonTail"
		icon = 'jutsus/SuitonTail_Jutsu.dmi'
		abilityType = "spear"
		range = 10
		speedOfCreation = 1
	Suiton2
		name = "Suiton2"
		icon = 'jutsus/Suiton2_Jutsu.dmi'
		abilityType = "self-heal"
	Doton2
		name = "Doton2"
		icon = 'jutsus/Doton2_Jutsu.dmi'
		abilityType = "self-shield"

// Jutsus and their icons and names
obj/jutsus/icones
	Katon
		name = "Katon"
		icon = 'jutsus/Katon_Icon.dmi'
	Doton
		name = "Doton"
		icon = 'jutsus/Doton_Icon.dmi'
	Raiton
		name = "Raiton"
		icon = 'jutsus/Raiton_Icon.dmi'
	Raiton2
		name = "Raiton2"
		icon = 'jutsus/Raiton2_Icon.dmi'
	Raiton3
		name = "Raiton3"
		icon = 'jutsus/Raiton3_Icon.dmi'
	Suiton
		name = "Suiton"
		icon = 'jutsus/Suiton_Icon.dmi'
	Suiton2
		name = "Suiton2"
		icon = 'jutsus/Suiton2_Icon.dmi'
	Doton2
		name = "Doton2"
		icon = 'jutsus/Doton2_Icon.dmi'

// Proc for testing purposes, gives the test player all listed jutsus
mob/proc
	GiveJutsus()
		var/obj/jutsus/icones/Katon/K = new /obj/jutsus/icones/Katon
		K.loc = usr
		var/obj/jutsus/icones/Doton/D = new /obj/jutsus/icones/Doton
		D.loc = usr
		var/obj/jutsus/icones/Raiton/R = new /obj/jutsus/icones/Raiton
		R.loc = usr
		var/obj/jutsus/icones/Raiton2/R2 = new /obj/jutsus/icones/Raiton2
		R2.loc = usr
		var/obj/jutsus/icones/Raiton3/R3 = new /obj/jutsus/icones/Raiton3
		R3.loc = usr
		var/obj/jutsus/icones/Suiton/S = new /obj/jutsus/icones/Suiton
		S.loc = usr
		var/obj/jutsus/icones/Suiton2/S2 = new /obj/jutsus/icones/Suiton2
		S2.loc = usr
		var/obj/jutsus/icones/Doton2/D2 = new /obj/jutsus/icones/Doton2
		D2.loc = usr
		AtualizaJutsus()
//insira os jutsus, basta colocar o loc dele no usr que vai aparecer na tela