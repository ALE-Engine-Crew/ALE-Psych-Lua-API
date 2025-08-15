package scripting.lua.callbacks;

import scripting.haxe.ScriptLuaPresetBase;

import flixel.util.FlxColor;

using StringTools;

class LuaColor extends ScriptLuaPresetBase
{
    override public function new(lua:LuaScript)
    {
        super(lua);

        set('getColorFromName', function(name:String)
        {
            return switch(name.toUpperCase())
            {
                case 'BLACK':
                    FlxColor.BLACK;
                case 'BLUE':
                    FlxColor.BLUE;
                case 'BROWN':
                    FlxColor.BROWN;
                case 'CYAN':
                    FlxColor.CYAN;
                case 'GRAY':
                    FlxColor.GRAY;
                case 'GREEN':
                    FlxColor.GREEN;
                case 'LIME':
                    FlxColor.LIME;
                case 'MAGENTA':
                    FlxColor.MAGENTA;
                case 'ORANGE':
                    FlxColor.ORANGE;
                case 'PINK': 
                    FlxColor.PINK;
                case 'PURPLE': 
                    FlxColor.PURPLE;
                case 'RED': 
                    FlxColor.RED;
                case 'TRANSPARENT': 
                    FlxColor.TRANSPARENT;
                case 'YELLOW': 
                    FlxColor.YELLOW;
                default: 
                    FlxColor.WHITE;
            };
        });

        set('getColorFromString', FlxColor.fromString);
    }
}