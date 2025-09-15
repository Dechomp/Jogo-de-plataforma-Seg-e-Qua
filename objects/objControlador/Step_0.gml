#region Controle do tamanho da tela
	//Tecla esc
	teclaEsc = keyboard_check_pressed(vk_escape)
	
	
	//Teclas F11 e a letra F
	teclasF = keyboard_check_pressed(vk_f11) or keyboard_check_pressed(ord("F"))	
	
	
	if teclaEsc{
		window_set_fullscreen(false)
	}
	
	if teclasF{
		if window_get_fullscreen(){
			window_set_fullscreen(false)
		}
		else{
			window_set_fullscreen(true)
		}
	}
	
	
	
#endregion























/*  #region Tamanho da tela
,	//Botão esc
	botaoEsc = keyboard_check_pressed(vk_escape)
	
	
	//Botão F
	botaoF = keyboard_check_pressed(ord("F"))
	
	//Botao F11
	botaoF11 = keyboard_check_pressed(vk_f11)
	
	if botaoEsc{
		window_set_fullscreen(false)
	}
	
	if botaoF or botaoF11{
		if window_get_fullscreen(){
			window_set_fullscreen(false)
		}
		else{
			window_set_fullscreen(true)
		}
		
	}

#endregion


#region Alteralção das fase
	//Botão para reinciar a fase
	
	botaoR = keyboard_check_pressed(ord("R"))
	
	if botaoR{
		room_restart()
	}
	
	
#region*/