package scripting.lua.callbacks;

import scripting.haxe.ScriptLuaPresetBase;

using StringTools;

class LuaStringTools extends ScriptLuaPresetBase
{
    override public function new(lua:LuaScript)
    {
        super(lua);

        set('stringStartsWith', function(str:String, start:String)
        {
            return str.startsWith(start);
        });

        set('stringEndsWith', function(str:String, start:String)
        {
            return str.endsWith(start);
        });

        set('stringSplit', function(str:String, split:String)
        {
            return str.split(split);
        });

        set('stringTrim', function(str:String)
        {
            return str.trim();
        });
    }
}