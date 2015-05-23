
function c_funcs.get_sign(i)
	if i == 0 then
		return 0
	else
		return i / math.abs(i)
	end
end

function c_funcs.get_velocity_a(v, yaw, y)
	local x = math.cos(yaw) * v
	local z = math.sin(yaw) * v
	return {x=x,y=y,z=z}
end

function c_funcs.get_velocity_b(v, yaw, y)
	local x = -math.sin(yaw) * v
	local z =  math.cos(yaw) * v
	return {x=x,y=y,z=z}
end

function c_funcs.get_v(v)
	return math.sqrt(v.x^2 + v.z^2)
end
