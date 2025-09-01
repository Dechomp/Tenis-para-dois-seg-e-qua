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
	colisaoVerticalCima =   place_meeting(x, y  -10 , objPlayer1) or place_meeting(x, y  - 10 , objPlayer2)
	colisaoVerticalBaixo = place_meeting(x, y  +10 , objPlayer1) or place_meeting(x, y  + 10 , objPlayer2)
	colisaoHorizontalP1 = place_meeting(x - 10, y, objPlayer1) 
	colisaoHorizontalP2 = place_meeting(x + 10, y, objPlayer2)
	
	if colisaoHorizontalP1{
		moviX = 1
	}
	
	if colisaoHorizontalP2{
		moviX = -1
	}
	
	if colisaoVerticalCima{
		moviY = 1
	}
	
	if colisaoVerticalBaixo{
		moviY = -1
	}
#endregion

#region Pontos
	if x <= 0{
		global.pontosP2++
		instance_destroy()
	}
	
	
	if x >= room_width{
		global.pontosP1++
		instance_destroy()
	}
#endregion