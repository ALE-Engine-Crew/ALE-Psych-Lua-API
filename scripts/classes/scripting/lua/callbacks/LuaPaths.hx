package scripting.lua.callbacks;

import scripting.haxe.ScriptLuaPresetBase;

import scripting.lua.LuaPresetUtils;

using StringTools;

class LuaPaths extends ScriptLuaPresetBase
{
    override public function new(lua:LuaScript)
    {
        super(lua);
		
		set('precacheSound', Paths.sound);

		set('precacheMusic', Paths.music);
    }
}