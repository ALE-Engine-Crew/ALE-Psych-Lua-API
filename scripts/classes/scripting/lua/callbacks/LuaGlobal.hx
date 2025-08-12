package scripting.lua.callbacks;

import scripting.haxe.ScriptLuaPresetBase;

class LuaGlobal extends ScriptLuaPresetBase
{
    override public function new(lua:LuaScript)
    {
        super(lua);

        set('add', function(tag:String)
        {
            if (tagIs(tag, flixel.FlxBasic))
                if (type == 'state')
                    FlxG.state.add(getTag(tag));
                else
                    FlxG.state.subState.add(getTag(tag));
        });

        set('remove', function(tag:String)
        {
            if (tagIs(tag, flixel.FlxBasic))
                if (type == 'state')
                    FlxG.state.remove(getTag(tag));
                else
                    FlxG.state.subState.remove(getTag(tag));
        });

        set('insert', function(position:Int, tag:String)
        {
            if (tagIs(tag, flixel.FlxBasic))
                if (type == 'state')
                    FlxG.state.insert(position, getTag(tag));
                else
                    FlxG.state.subState.insert(position, getTag(tag));
        });
    }
}