draw_self();
draw_set_halign(fa_left);
draw_set_valign(fa_top);
letter++;
text_part = string_copy(Text[global.click],1,letter)
draw_text_ext(x+20,y+20,text_part,20,sprite_width-40)
if global.sw
{
	draw_triangle(925,715,955,715,940,735,0);
}
draw_sprite_ext(spr_oral_images,global.click,131,5,0.4,0.4,0,-1,1);