#region Movimentação

	//Tecla
	teclaCima = keyboard_check(vk_up)
	teclaBaixo = keyboard_check(vk_down)
	
	movimento = - teclaCima + teclaBaixo
	
	y += movimento * velocidade
	
	if y <= 0 or y >= room_height{
		y -= movimento * velocidade
	}
#endregion