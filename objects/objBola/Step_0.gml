#region Movimentação

	image_angle += velocidade

	x += moviX * velocidade
	y += moviY * velocidade
	
	
	velocidade+= 0.01
#endregion

#region Colisão
	//Colisão da tela
	if y <= 0 or y >= room_height{
		moviY *= -1
	}
	//Colisao com o player
	colisaoVerticalP1 =   place_meeting(x, y  -10 , objPlayer1) or place_meeting(x, y  + 10 , objPlayer1)
	colisaoVerticalP2 = place_meeting(x, y  -10 , objPlayer2) or place_meeting(x, y  + 10 , objPlayer2)
	colisaoHorizontal = place_meeting(x - 10, y, objPlayer1) or place_meeting(x + 10, y, objPlayer2)
	
	if colisaoHorizontal{
		moviX *= -1
	}
	
	if colisaoVerticalP1 or colisaoVerticalP2{
		moviY *= -1
	}
#endregion

#region Pontos
	if x <= 0{
		instance_destroy()
	}
	
	
	if x >= room_width{
		instance_destroy()
	}
#endregion