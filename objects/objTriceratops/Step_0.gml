#region Movimentação
	if place_meeting(x + velocidade, y + 10, objColisao){
		x += velocidade
	}else{
		velocidade *= -1
	}
	
	if velocidade < 0 and image_xscale < 0{
		image_xscale *= -1
	}
	if velocidade > 0 and image_xscale > 0{
		image_xscale *= -1
	}

#endregion