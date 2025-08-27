#region Movimentação

	//Tecla
	teclaCima = keyboard_check(vk_up)
	teclaBaixo = keyboard_check(vk_down)
	
	movimento = - teclaCima + teclaBaixo
	
	y += movimento * velocidade
#endregion