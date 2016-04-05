if (sprite_exists(sPause)) draw_sprite_ext(sPause,0,view_xview[0],view_yview[0],1,1,0,c_white,1);
if (transfade > 0)
{
    draw_set_color(c_black);
    draw_set_alpha(transfade)
    draw_rectangle(view_xview[0],view_yview[0],view_xview[0]+view_wview[0],view_yview[0]+view_hview[0],0);
    //draw_rectangle(view_xview[0],view_yview[0],view_wview[0],view_hview[0],0);
    var tspr;
    if (transdir = 0) or (transdir = 180) tspr = sprTransitionGuideLR;
    if (transdir = 90) or (transdir = 270) tspr = sprTransitionGuideUD;
    draw_sprite_ext(tspr,region,view_xview[0]+tx,view_yview[0]+ty,1,1,0,c_white,transfade);
}
if (!sprite_exists(sPause)) scDrawHUD();
if (fadeStage != -1)
{
    draw_set_color(c_black);
    draw_set_alpha(alpha1);
    draw_rectangle(view_xview[0],view_yview[0],view_xview[0]+view_wview[0],view_yview[0]+view_hview[0],false);
    if (!scan) then
    {
        draw_set_alpha(alpha1/2);
        draw_rectangle(view_xview[0],view_yview[0]+view_hview[0]/2+45,view_xview[0]+view_wview[0],view_yview[0]+view_hview[0]/2-45,false);
        draw_rectangle(view_xview[0],view_yview[0]+view_hview[0]/2+40,view_xview[0]+view_wview[0],view_yview[0]+view_hview[0]/2-40,false);
        draw_rectangle(view_xview[0],view_yview[0]+view_hview[0]/2+35,view_xview[0]+view_wview[0],view_yview[0]+view_hview[0]/2-35,false);
    }
    draw_set_font(font1);
    draw_set_color(c_white);
    draw_set_alpha(alpha2);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text_ext(view_xview[0]+view_wview[0]/2,view_yview[0]+view_hview[0]/2,text,-15,560);
}
scDebugModeText(); // Optional.
