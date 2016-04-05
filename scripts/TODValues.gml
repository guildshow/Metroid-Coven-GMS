//midnight

TODC[0]=c_black

//notice that we set it to black again... 
//this means the colors between 7 and 9
//will interpolate between eachother
//aka it starts gettin light at 7
TODC[7]=c_black
TODC[9]=make_color_rgb(240,245,91)


TODC[11]=c_white

TODC[17]=c_white    //5 o clarken


//TODC[19]=make_color_rgb(255,209,82)


TODC[19]=make_color_rgb(232,180,37)

TODC[21]=c_black


//no touch!!!
TODC[24]=TODC[0]
//this lets the time of day loop
//without a crash
