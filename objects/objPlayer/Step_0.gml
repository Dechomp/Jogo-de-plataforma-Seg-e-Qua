#region Movimentação
	//Movimentação por letras
	//Futuramente você pode deixar o usuário escolher as teclas
	//cima = "W"
	teclaCima = keyboard_check(ord("W"))
	teclaBaixo = keyboard_check(ord("S"))
	teclaEsq = keyboard_check(ord("A"))
	teclaDir = keyboard_check(ord("D"))
	
	//Movimentação por setas
	setaCima = keyboard_check(vk_up)
	setaBaixo = keyboard_check(vk_down)
	setaEsq = keyboard_check(vk_left)
	setaDir = keyboard_check(vk_right)
	
	//Barra de espaço
	barraEspaco = keyboard_check(vk_space)
	
	//Movimentação horizontal
	moviHorizontal = -(teclaEsq or setaEsq) + (teclaDir or setaDir) 
	velocidadeHorizontal = moviHorizontal * velocidade
	
	//Movimentação Vertical
	velocidadeVertical += gravidade
	moviVertical = teclaCima or setaCima or barraEspaco 
	
	
	
	
	
	colisaoBaixo = place_meeting(x, y + velocidadeVertical, objChao) or place_meeting(x, y + velocidadeVertical, objChaoCanto) 
	colisaoBaixoContrario = place_meeting(x, y + sign(velocidadeVertical), objChao) or place_meeting(x, y + sign(velocidadeVertical), objChaoCanto) 
	colisaoHorizontal = place_meeting(x + velocidadeHorizontal, y,  objChao) or place_meeting(x + velocidadeHorizontal, y, objChaoCanto) 
	colisaoHorizontalContraria = place_meeting(x + sign(velocidadeHorizontal), y,  objChao) or place_meeting(x + sign(velocidadeHorizontal), y, objChaoCanto)
	
	if colisaoHorizontal{
		while !colisaoHorizontal{
			x += sign(velocidadeHorizontal)
			colisaoHorizontalContraria = place_meeting(x + sign(velocidadeHorizontal), y,  objChao) or place_meeting(x + sign(moviHorizontal * velocidade), y, objChaoCanto)
		}
		velocidadeHorizontal = 0
	}
	
	if colisaoBaixo{
		while ! colisaoBaixoContrario{
			y+= sign(velocidadeVertical)
			colisaoBaixoContrario = place_meeting(x, y + sign(velocidadeVertical), objChao) or place_meeting(x, y + sign(velocidadeVertical), objChaoCanto) 
		}
		velocidadeVertical = 0
	}
	
	x += velocidadeHorizontal
	y += velocidadeVertical
	
	if colisaoBaixo and moviVertical{
		velocidadeVertical -= 16
	}
	
	if moviHorizontal < 0 and image_xscale > 0{
		image_xscale *= -1
	}
	
	if moviHorizontal > 0 and image_xscale < 0{
		image_xscale *= -1
	}
	/*
	if colisaoBaixo{ 
		
		gravity = 0
		while colisaoBaixo{
			y -= 1
			
			colisaoBaixo = place_meeting(x, y + 1, objChao) or place_meeting(x, y + 1, objChaoCanto) 
		}
		
	}
	else{
		gravity = 0.2
			
	}

	
	move_and_collide(moviHorizontal, moviVertical, (objChaoCanto or objChao))*/

#endregion