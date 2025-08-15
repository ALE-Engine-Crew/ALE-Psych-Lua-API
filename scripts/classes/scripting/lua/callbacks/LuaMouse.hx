package scripting.lua.callbacks;

import scripting.haxe.ScriptLuaPresetBase;

class LuaMouse extends ScriptLuaPresetBase
{
    override public function new(lua:LuaScript)
    {
        super(lua);
        
        set('mouseClicked', function(?button:String)
        {
            return switch (button.toLowerCase())
            {
                default:
                    FlxG.mouse.justPressed;
                case 'middle':
                    FlxG.mouse.justPressedMiddle;
                case 'right':
                    FlxG.mouse.justPressedRight;
            };
        });

        set('mousePressed', function(?button:String)
        {
            return switch (button.toLowerCase())
            {
                default:
                    FlxG.mouse.pressed;
                case 'middle':
                    FlxG.mouse.pressedMiddle;
                case 'right':
                    FlxG.mouse.pressedRight;
            };
        });

        set('mouseReleased', function(?button:String)
        {
            return switch (button.toLowerCase())
            {
                default:
                    FlxG.mouse.justReleased;
                case 'middle':
                    FlxG.mouse.justReleasedMiddle;
                case 'right':
                    FlxG.mouse.justReleasedRight;
            };
        });
    }
}