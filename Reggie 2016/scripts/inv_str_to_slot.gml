///inv_str_to_slot(string, slot, quick)
/*
THIS SCRIPT SETS THE INDICATED SLOT IN THE INVENTORY SO THAT IT MATCHES THE INPUT STRING
(The input string is generated by encoding a slot using inv_slot_to_str(...).)

NOTE: This is used only for sorting the inventory and for loading.

argument0 - (String)  Input string.
argument1 - (Integer) Target slot.
argument2 - (Boolean) Whether to address quick items instead.

Returns nohting.
*/
var slot_str,temp_str;

slot_str=argument0;

if argument2=false {

//Name & Static values:
temp_str=string_copy(slot_str,1,string_pos("\",slot_str)-1);
slot_str=string_delete(slot_str,1,string_pos("\",slot_str));
global.inventory_current[argument1,1]=temp_str;
global.inventory_current[argument1,2]=ds_map_find_value(global.inventory_map,temp_str)

//Amount:
temp_str=string_copy(slot_str,1,string_pos("\",slot_str)-1);
slot_str=string_delete(slot_str,1,string_pos("\",slot_str));
global.inventory_current[argument1,3]=real(temp_str);

//Dynamic value 1:
temp_str=string_copy(slot_str,1,string_pos("\",slot_str)-1);
slot_str=string_delete(slot_str,1,string_pos("\",slot_str));
if string_copy(temp_str,1,1)="%" global.inventory_current[argument1,4]=temp_str;
 else global.inventory_current[argument1,4]=real(temp_str);

//Dynamic value 2:
temp_str=string_copy(slot_str,1,string_pos("\",slot_str)-1);
slot_str=string_delete(slot_str,1,string_pos("\",slot_str));
if string_copy(temp_str,1,1)="%" global.inventory_current[argument1,5]=temp_str;
 else global.inventory_current[argument1,5]=real(temp_str);
 
//Dynamic value 3:
temp_str=string_copy(slot_str,1,string_pos("\",slot_str)-1);
slot_str=string_delete(slot_str,1,string_pos("\",slot_str));
if string_copy(temp_str,1,1)="%" global.inventory_current[argument1,6]=temp_str;
 else global.inventory_current[argument1,6]=real(temp_str);
 
//Dynamic value 4:
temp_str=string_copy(slot_str,1,string_pos("\",slot_str)-1);
slot_str=string_delete(slot_str,1,string_pos("\",slot_str));
if string_copy(temp_str,1,1)="%" global.inventory_current[argument1,7]=temp_str;
 else global.inventory_current[argument1,7]=real(temp_str);
 
//Dynamic value 5:
temp_str=string_copy(slot_str,1,string_pos("\",slot_str)-1);
slot_str=string_delete(slot_str,1,string_pos("\",slot_str));
if string_copy(temp_str,1,1)="%" global.inventory_current[argument1,8]=temp_str;
 else global.inventory_current[argument1,8]=real(temp_str);
 
} else {

//Name & Static values:
temp_str=string_copy(slot_str,1,string_pos("\",slot_str)-1);
slot_str=string_delete(slot_str,1,string_pos("\",slot_str));
global.inventory_quick[argument1,1]=temp_str;
global.inventory_quick[argument1,2]=ds_map_find_value(global.inventory_map,temp_str)

//Amount:
temp_str=string_copy(slot_str,1,string_pos("\",slot_str)-1);
slot_str=string_delete(slot_str,1,string_pos("\",slot_str));
global.inventory_quick[argument1,3]=real(temp_str);

//Dynamic value 1:
temp_str=string_copy(slot_str,1,string_pos("\",slot_str)-1);
slot_str=string_delete(slot_str,1,string_pos("\",slot_str));
if string_copy(temp_str,1,1)="%" global.inventory_quick[argument1,4]=temp_str;
 else global.inventory_quick[argument1,4]=real(temp_str);

//Dynamic value 2:
temp_str=string_copy(slot_str,1,string_pos("\",slot_str)-1);
slot_str=string_delete(slot_str,1,string_pos("\",slot_str));
if string_copy(temp_str,1,1)="%" global.inventory_quick[argument1,5]=temp_str;
 else global.inventory_quick[argument1,5]=real(temp_str);
 
//Dynamic value 3:
temp_str=string_copy(slot_str,1,string_pos("\",slot_str)-1);
slot_str=string_delete(slot_str,1,string_pos("\",slot_str));
if string_copy(temp_str,1,1)="%" global.inventory_quick[argument1,6]=temp_str;
 else global.inventory_quick[argument1,6]=real(temp_str);
 
//Dynamic value 4:
temp_str=string_copy(slot_str,1,string_pos("\",slot_str)-1);
slot_str=string_delete(slot_str,1,string_pos("\",slot_str));
if string_copy(temp_str,1,1)="%" global.inventory_quick[argument1,7]=temp_str;
 else global.inventory_quick[argument1,7]=real(temp_str);
 
//Dynamic value 5:
temp_str=string_copy(slot_str,1,string_pos("\",slot_str)-1);
slot_str=string_delete(slot_str,1,string_pos("\",slot_str));
if string_copy(temp_str,1,1)="%" global.inventory_quick[argument1,8]=temp_str;
 else global.inventory_quick[argument1,8]=real(temp_str);
 
}