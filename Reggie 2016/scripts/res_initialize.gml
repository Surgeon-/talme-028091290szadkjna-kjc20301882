///res_initialize()
/*

*/

enum RES_FLAG {
  
  do_not_recover = 0,
  do_recover = 1

  }

global.RES_USER_LIST = ds_list_create();

/*

DYNAMIC RESOURCE MANAGEMENT:

- general:

  res_initialize()
  res_free()
  
  res_instance_register() - register (on Create or Restore)
  res_instance_unreg() - unregister (on Destroy or Cleanup)
  
  res_cleanup_loop() - call destroy events of all registered instances

  ==============================================================================
  
  res_backup_loop() - call event_user(8) of all registered instances
  
  res_instance_flag([RES_FLAG enum] action, [OPT] value) - get or set "recovery needed" flag
  
  event_user(0) - save state in a "persistent" way when called (restore in step)

*/
