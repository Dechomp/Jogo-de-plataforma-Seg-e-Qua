#region Movimentação
	//Movimentação por letras
	//Futuramente você pode deixar o usuário escolher as teclas
	//cima = "W"
	teclaCima = keyboard_check_pressed(ord("W"))
	teclaBaixo = keyboard_check(ord("S"))
	teclaEsq = keyboard_check(ord("A"))
	teclaDir = keyboard_check(ord("D"))
	
	//Movimentação por setas
	setaCima = keyboard_check_pressed(vk_up)
	setaBaixo = keyboard_check(vk_down)
	setaEsq = keyboard_check(vk_left)
	setaDir = keyboard_check(vk_right)
	
	//Barra de espaço
	barraEspaco = keyboard_check_pressed(vk_space)
	
	//Movimentação horizontal
	moviHorizontal = -(teclaEsq or setaEsq) + (teclaDir or setaDir)
	
	//Movimentação Vertical
	moviVertical = teclaCima or setaCima or barraEspaco
	
	
	

	
	colisaoBaixo = place_meeting(x, y + velocidadePulo, objChao) or place_meeting(x, y + velocidadePulo, objChaoCanto) 
	colisaoHorizontal = place_meeting(x + moviHorizontal * velocidade, y,  objChao) or place_meeting(x + moviHorizontal * velocidade, y, objChaoCanto) 
	
	if colisaoBaixo{ 
		velocidadePulo = 0
		y -= 0.5
		
	}
	else{
		velocidadePulo += gravidade
	}
	
	if colisaoHorizontal{
		x -= moviHorizontal * velocidade
	}
	
	if moviHorizontal < 0 and image_xscale > 0{
		image_xscale *= -1
	}
	
	if moviHorizontal > 0 and image_xscale < 0{
		image_xscale *= -1
	}
	
	if moviVertical and colisaoBaixo{
		y -= moviVertical * 50
	}
	
	if colisaoBaixo{
		while( !colisaoBaixo){
			y += sign(velocidadePulo)
		}
		velocidadePulo = 0
	}
	
	x += moviHorizontal * velocidade
	y += velocidadePulo
#endregion