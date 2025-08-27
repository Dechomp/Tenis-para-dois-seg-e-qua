image_angle++

x += moviX
y += moviY

if y <= 0 or y >= room_height{
	moviY *= -1
}

if x <= 0 or x >= room_width{
	moviX *= -1
}