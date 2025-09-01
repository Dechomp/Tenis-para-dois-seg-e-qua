#region Movimentação

	//Tecla
	teclaCima = keyboard_check(ord("W"))
	teclaBaixo = keyboard_check(ord("S"))
	
	movimento = - teclaCima + teclaBaixo
	
	y += movimento * velocidade
	
	

	if y <= 0 or y >= room_height{
		y -= movimento * velocidade
	}
#endregion


