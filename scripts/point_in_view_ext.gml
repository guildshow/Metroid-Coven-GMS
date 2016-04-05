//same as point_in_view but with extra argument that gives a little lee way
if  (argument1>(view_xview[argument0]-argument3)) && (argument1<(view_xview[argument0]+view_wview[argument0]+argument3)) &&
    (argument2>(view_yview[argument0]-argument3)) && (argument2<(view_yview[argument0]+view_hview[argument0]+argument3))
    {return(1)}else{return(0)}
