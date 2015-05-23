
-- player	.. player to attach
-- object	.. object to attach to
-- attach_at	.. offsets attach postion from zero {x=0,y=0,z=0}
-- rotation	.. rotate player degrees from zero {x=0,y=0,z=0}
-- eye_offset	.. offset camera from zero {x=0,y=0,z=0}
-- anim_spd	.. animation speed for default.player_set_animation()
function c_funcs.AttachPlayer(player, object, attach_at, rotation, eye_offset, anim_spd)
	local pname = player:get_player_name()
	player:set_attach(object, "", attach_at, rotation)
	player:set_eye_offset(eye_offset, {x=0, y=0, z=0})
	default.player_attached[pname] = true
	minetest.after(0.2, function()
		default.player_set_animation(player, "sit", anim_spd)
	end)
	return player
end

-- player	.. player to detach
-- anim_spd	.. animation speed for default.player_set_animation()
function c_funcs.DetachPlayer(player, anim_spd)
	local pname = player:get_player_name()
	player:set_detach()
	player:set_eye_offset({x=0, y=0, z=0}, {x=0, y=0, z=0})
	default.player_attached[pname] = false
	default.player_set_animation(player, "stand", anim_spd)
	return nil
end
