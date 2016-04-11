if (!debugmode) exit;
draw_set_font(font1);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_color(c_white);
dxo = view_xview[0]+128;
dyo = view_yview[0]+view_hview[0];
draw_text(dxo,dyo-2,string_insert(string_format(instance_number(oParticle),3,0), "Parts: ",8));
