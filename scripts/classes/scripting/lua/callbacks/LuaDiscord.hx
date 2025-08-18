package scripting.lua.callbacks;

import scripting.haxe.ScriptLuaPresetBase;

class LuaDiscord extends ScriptLuaPresetBase
{
    override public function new(lua:LuaScript)
    {
        super(lua);
        
        set('changeDiscordPresence', DiscordRPC.changePresence);

        set('changeDiscordClientID', (id:Int) -> {
            DiscordRPC.shutdown();

            DiscordRPC.initialize(id);
        });
    }
}