#region Mexer no tamanho da tela
	// Botão para diminuir a tela
	botaoEsq = keyboard_check(vk_escape)
	
	if botaoEsq{
		window_set_fullscreen(false)
	}
	
	//Botão para alterar o tamanho
	botaoTamanho = keyboard_check_pressed(ord("F"))
	
	if botaoTamanho{
		if window_get_fullscreen(){
			window_set_fullscreen(false)
		}
		else{
			window_set_fullscreen(true)
		}
	}
	

#endregion