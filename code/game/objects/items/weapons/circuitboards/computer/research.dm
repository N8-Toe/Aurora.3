#ifndef T_BOARD
#error T_BOARD macro is not defined but we need it!
#endif

/obj/item/circuitboard/rdconsole
	name = T_BOARD("R&D control console")
	build_path = /obj/machinery/computer/rdconsole/core

/obj/item/circuitboard/rdconsole/attackby(obj/item/attacking_item, mob/user)
	if(attacking_item.isscrewdriver())
		user.visible_message("<span class='notice'>\The [user] adjusts the jumper on \the [src]'s access protocol pins.</span>", "<span class='notice'>You adjust the jumper on the access protocol pins.</span>")
		if(src.build_path == /obj/machinery/computer/rdconsole/core)
			src.name = T_BOARD("RD Console - Robotics")
			src.build_path = /obj/machinery/computer/rdconsole/robotics
			to_chat(user, "<span class='notice'>Access protocols set to robotics.</span>")
		else
			src.name = T_BOARD("RD Console")
			src.build_path = /obj/machinery/computer/rdconsole/core
			to_chat(user, "<span class='notice'>Access protocols set to default.</span>")
	return
