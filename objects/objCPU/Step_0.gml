#region Estrtatégia
	if objBola.y > y and y + velocidade < room_height{
		y += velocidade
	}
	else if objBola.y < y and y - velocidade > 0{
		y -= velocidade
	}

#endregion