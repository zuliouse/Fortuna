/obj/machinery/vending/cigarette
	name = "\improper ShadyCigs Deluxe"
	desc = "If you want to get cancer, might as well do it in style."
	product_slogans = "ShadyCigs taste good like a cigarette should.;Smoke!;Don't believe the reports - smoke today!" // Fortuna edit: slogans made more consistent with Fallout setting
	product_ads = "Probably not bad for you!;Don't believe the scientists!;It's good for you!;Don't quit, buy more!;Smoke!;Nicotine heaven.;Best cigarettes since 2031.;Award-winning cigs."
	icon_state = "cigs"
	products = list(/obj/item/storage/fancy/cigarettes/cigpack_bigboss = 5,
					/obj/item/storage/fancy/cigarettes/cigpack_pyramid = 5,
					/obj/item/storage/fancy/cigarettes/cigpack_greytort = 5,
					/obj/item/storage/box/matches = 10,
					/obj/item/lighter/greyscale = 4,
					/obj/item/storage/fancy/rollingpapers = 5)
	contraband = list(/obj/item/lighter = 3)
	premium = list(/obj/item/storage/fancy/cigarettes/cigpack_robustgold = 3,
					/obj/item/storage/fancy/cigarettes/cigars = 1,
					/obj/item/storage/fancy/cigarettes/cigars/havana = 1,
					/obj/item/storage/fancy/cigarettes/cigars/cohiba = 1)
	refill_canister = /obj/item/vending_refill/cigarette
	default_price = PRICE_ALMOST_CHEAP
	extra_price = PRICE_ABOVE_NORMAL
	payment_department = ACCOUNT_SRV

/obj/machinery/vending/cigarette/syndicate
	products = list(/obj/item/storage/fancy/cigarettes/cigpack_syndicate = 7,
					/obj/item/storage/fancy/cigarettes/cigpack_uplift = 3,
					/obj/item/storage/fancy/cigarettes/cigpack_robust = 2,
					/obj/item/storage/fancy/cigarettes/cigpack_carp = 3,
					/obj/item/storage/fancy/cigarettes/cigpack_midori = 1,
					/obj/item/storage/box/matches = 10,
					/obj/item/lighter/greyscale = 4,
					/obj/item/storage/fancy/rollingpapers = 5)
	payment_department = NO_FREEBIES

/obj/machinery/vending/cigarette/syndicate/Initialize()
	. = ..()
	cost_multiplier_per_dept = list("[ACCESS_SYNDICATE]" = 0)

/obj/machinery/vending/cigarette/beach //Used in the lavaland_biodome_beach.dmm ruin
	name = "\improper ShadyCigs Ultra"
	desc = "Now with extra premium products!"
	product_ads = "Probably not bad for you!;Dope will get you through times of no money better than money will get you through times of no dope!;It's good for you!"
	product_slogans = "Turn on, tune in, drop out!;Better living through chemistry!;Toke!;Don't forget to keep a smile on your lips and a song in your heart!"
	products = list(/obj/item/storage/fancy/cigarettes = 5,
					/obj/item/storage/fancy/cigarettes/cigpack_uplift = 3,
					/obj/item/storage/fancy/cigarettes/cigpack_robust = 3,
					/obj/item/storage/fancy/cigarettes/cigpack_carp = 3,
					/obj/item/storage/fancy/cigarettes/cigpack_midori = 3,
					/obj/item/storage/fancy/cigarettes/cigpack_cannabis = 5,
					/obj/item/storage/box/matches = 10,
					/obj/item/lighter/greyscale = 4,
					/obj/item/storage/fancy/rollingpapers = 5)
	premium = list(/obj/item/storage/fancy/cigarettes/cigpack_mindbreaker = 5,
					/obj/item/clothing/mask/vape = 5,
					/obj/item/lighter = 3)

/obj/item/vending_refill/cigarette
	machine_name = "ShadyCigs Deluxe"
	icon_state = "refill_smoke"

/obj/machinery/vending/cigarette/pre_throw(obj/item/I)
	if(istype(I, /obj/item/lighter))
		var/obj/item/lighter/L = I
		L.set_lit(TRUE)
