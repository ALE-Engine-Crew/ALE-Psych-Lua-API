package scripting.lua.callbacks;

import scripting.haxe.ScriptLuaPresetBase;

class LuaTween extends ScriptLuaPresetBase
{
    override public function new(lua:LuaScript)
    {
        super(lua);
        
        set('cancelTween', function(tag:String)
        {
            if (tagIs(tag, FlxTween))
                getTag(tag, FlxTween).cancel();
        });
    }
}