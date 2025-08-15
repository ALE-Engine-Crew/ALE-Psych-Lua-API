package scripting.lua.callbacks;

import scripting.haxe.ScriptLuaPresetBase;

import flixel.FlxObject;

import flixel.util.FlxAxes;

class LuaObject extends ScriptLuaPresetBase
{
    override public function new(lua:LuaScript)
    {
        super(lua);

        set('screenCenter', function(tag:String, ?axes:Int)
        {
            if (tagIs(tag, FlxObject))
                getTag(tag).screenCenter(axes ?? FlxAxes.XY);
        });
    }
}