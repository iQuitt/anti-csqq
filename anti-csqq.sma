

#include <amxmodx>
#include <fakemeta>

public plugin_init() {
	register_plugin("Anti-CSQQ", "1.0", "iQuit");
	server_print("[ ANTI CSQQ Working. Have fun]");
	server_print("[ Ver: 1.0 Author: iQuit]");
	register_forward(FM_AddToFullPack, "fw_AddToFullPack_Post", true)
}

public fw_AddToFullPack_Post(es_handle, pe, ent, host, flags, player, pSet)
{
	if(!player) return FMRES_IGNORED

	if(!is_user_alive(host)) return FMRES_IGNORED

	if(!pev_valid(ent)) return FMRES_IGNORED

	if (player && host != ent && is_user_alive(ent) && is_user_alive(host))
	{
		set_es(es_handle, ES_Solid, SOLID_NOT)
	}
}
