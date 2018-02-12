///HG_light_create_simple(World, X, Y, Sprite, Colour, Scale, Angle, Alpha)
/*

 See Mercury's Manual, page 19.

*/
var list,world_list;
var lq;

 if argument0=-1
  argument0=global.HG_DEFAULT_WORLD;
  
//CHECK COMPATIBILITY:
if sprite_get_width(argument3)<>sprite_get_height(argument3) {
 show_error("HG: Cannot create light because sprite width and height are not equal.",false);
 exit;
 }

//GATHER DATA:
 world_list=hg_world_get_attribute(argument0,"lightListSimple");

 lq=hg_world_get_attribute(argument0,"lightQuality");

//STORE DATA:
list=ds_list_create();

list[|HG_LPROP.sprite]=argument3;
list[|HG_LPROP.colour]=argument4;
list[|HG_LPROP.scale]=argument5;
list[|HG_LPROP.alpha]=argument7;
list[|HG_LPROP.angle]=round(argument6);
list[|HG_LPROP.surf1]=-1;
list[|HG_LPROP.surf2]=-2;
list[|HG_LPROP.xPos]=round(argument1*lq)/lq;
list[|HG_LPROP.yPos]=round(argument2*lq)/lq
list[|HG_LPROP.update]=false;
list[|HG_LPROP.turnedoff]=false;

//FINISH:
ds_list_add(world_list,list);

return list;
