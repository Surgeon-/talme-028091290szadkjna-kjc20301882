///HG_shadowcaster_turn_off(ShadowCaster)
/*

 See Mercury's Manual, page 21.

*/
var i,world,list,act_list,dea_list;

list=argument0;
world=list[|0];

act_list=hg_world_get_attribute(world,"shadowCasters");
dea_list=hg_world_get_attribute(world,"shadowCastersDeact");

i=ds_list_find_index(act_list,list);

if i=-1 exit;

ds_list_add(dea_list,list);
ds_list_delete(act_list,i);
hg_world_update_shadows(list[|0],list[|1],list[|2],false,list[|4]);
