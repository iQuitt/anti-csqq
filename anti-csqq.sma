#include <amxmodx>
#include <fakemeta>

public plugin_init() 
{
	register_plugin("Anti-CSQQ", "1.31", "SSiQuit");
	server_print("[ ANTI CSQQ Çalışıyo. İyi Eğlenceler]");
	server_print("[ Ver: 1.31 Author: SSiQuit]");
	register_forward(FM_AddToFullPack, "fw_AddToFullPack_Post", true)
}

public fw_AddToFullPack_Post(es_handle, pe, ent, host, flags, player, pSet)
{

	if (player && host != ent && is_user_alive(ent) && is_user_alive(host))
	{
		set_es(es_handle, ES_Solid, SOLID_NOT)
	}
}
