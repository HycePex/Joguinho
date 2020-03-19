#region MOVIMENTACAO
key_up = keyboard_check(ord("W")); //pula
key_down = keyboard_check(ord("S")); 
key_left = keyboard_check(ord("A")); //esquerda
key_right = keyboard_check(ord("D")); //direita
#endregion

#region

var move = key_right - key_left;

hspd = move * spd;

vspd += grv;

if(hspd != 0) image_xscale = sign(hspd);

#region Colisao Chao
//COLISAO HORINZONTAL
if place_meeting(x + hspd, y, object1)
{	
	while(!place_meeting(x + sign(hspd), y, object1))
	{
		x += sign(hspd);
	}
	hspd = 0;
}	
x += hspd;

//COLISAO VERTICAL
if place_meeting(x, y + vspd, object1)
{	
	while(!place_meeting(x, y + sign(vspd), object1))
	{
		y += sign(vspd);
	}
	vspd = 0;
}	
y += vspd;
#endregion









//JUMP

if place_meeting(x, y+1, object1) and key_up
{
	vspd -= 12;	
}

#endregion

if (!place_meeting(x, y+1, object1))
{
	if place_meeting(x, y+1, object1) 
	{
		sprite_index = idle;
	}
}

if hspd = 0 
{
	
}
