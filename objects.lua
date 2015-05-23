
function c_funcs.is_water(pos)
	local nn = minetest.get_node(pos).name
	return minetest.get_item_group(nn, "water") ~= 0
end
