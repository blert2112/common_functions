-- Common Functions (23 May 2015)

c_funcs = {}

-- get mod path
local mpath = minetest.get_modpath("common_functions")

-- load framework
dofile(mpath.."/maths.lua")
dofile(mpath.."/objects.lua")
dofile(mpath.."/players.lua")
