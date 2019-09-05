
lib_trm_support = {}
lib_trm_support.name = "lib_trm_support"
lib_trm_support.ver_max = 0
lib_trm_support.ver_min = 0
lib_trm_support.ver_rev = 1
lib_trm_support.authorship = "lisacvuk, shadmordre, "
lib_trm_support.license = "LGLv2.1"
lib_trm_support.copyright = "2019"
lib_trm_support.path_mod = minetest.get_modpath(minetest.get_current_modname())
lib_trm_support.path_world = minetest.get_worldpath()

lib_trm_support.intllib = minetest.get_translator(lib_trm_support.name)
local S = lib_trm_support.intllib

minetest.log(S("[MOD] lib_trm_support:  Loading..."))
minetest.log(S("[MOD] lib_trm_support:  Legal Info: Copyright " .. lib_trm_support.copyright .. " " ..lib_trm_support.authorship))
minetest.log(S("[MOD] lib_trm_support:  License: " .. lib_trm_support.license))


	minetest.register_on_mods_loaded(
		if minetest.global_exists("default") and minetest.get_modpath("default") then
			dofile(MP.."lib_trm_support_default.lua")
		end
		if minetest.global_exists("moreores") and minetest.get_modpath("moreores") then
			dofile(MP.."lib_trm_support_moreores.lua")
		end
	)	





	

minetest.log(S("[MOD] lib_trm_support:  Successfully loaded."))









