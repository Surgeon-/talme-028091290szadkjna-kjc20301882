///rinv_add_complex_arr(Inventory ID, Item Name, DynVal Array)
/*
Returns: Local ID of the added item.
*/

if (argument0 == -1) argument0 = global.rinv_default_inst;

var list = argument0,
    grid = list[|1],
    name = argument1;

var dv_array;

dv_array[0] = undefined;

for (var i = 2; i < argument_count; i += 1) {
  dv_array[i - 2] = argument[i];
  }
  
var h = ds_grid_height(grid);
  
ds_grid_resize(grid, RINV_LOCAL.property_count, h + 1);

var static_id = global.rinv_def_map[?name];

grid[#RINV_LOCAL.static_id,   h] = static_id;
grid[#RINV_LOCAL.amount,      h] = 1;
grid[#RINV_LOCAL.dv_array,    h] = argument2;
grid[#RINV_LOCAL.sort_column, h] = undefined;

// Adjust slot counters:
var type = rinv_item_get_static_value(static_id, RINV_STATIC.type);

list[|4 + RINV_TYPE.any] += 1;
list[|4 + type] += 1;

// Adjust weight:
list[|2] += rinv_item_get_static_value(static_id, RINV_STATIC.weight);

return h;
