// Runs within oPlayer.
if (eId.transitioning) exit;
eId.transitioning = true;
persistent = true;
with (torchSlave) persistent = true;
with (suitSlave) persistent = true;
with (oCannon) persistent = true;
eId.tx = point_distance(view_xview[0],0,other.x,0); // Distance of transition object (t-object) from upper-left corner of view.
eId.ty = point_distance(0,view_yview[0],0,other.y); // ^
eId.tdx = point_distance(x,y,other.x,y); // X distance from edge of t-object.
eId.tdy = point_distance(x,y,x,other.y); // Y distance from edge of t-object.
                                         // ^ These variables will be used to place the player in the 
                                         //   correct location in the next room.
eId.thisroom = room; // The room we are about to leave.
eId.trans = other.trans; // Ensure it uses the currect t-object in the
                         //   destination room to spawn the player.
scTransGetDest(); // Script used to determine which room the player moves to,
                  //   as well as what direction to face.
eId.transstep = 0; // Tell the EID system to fade out.
