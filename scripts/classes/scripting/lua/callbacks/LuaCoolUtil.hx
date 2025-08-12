package scripting.lua.callbacks;

import scripting.haxe.ScriptLuaPresetBase;

class LuaCoolUtil extends ScriptLuaPresetBase
{
    override public function new(lua:LuaScript)
    {
        super(lua);

        set('colorFromString', CoolUtil.colorFromString);

        set('floorDecimal', CoolUtil.floorDecimal);

        set('debugTrace', CoolUtil.debugTrace);
    }
}