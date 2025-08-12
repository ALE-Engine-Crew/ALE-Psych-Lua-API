package scripting.lua.callbacks;

import scripting.haxe.ScriptLuaPresetBase;

class LuaSprite extends ScriptLuaPresetBase
{
    override public function new(lua:LuaScript)
    {
        super(lua);

        set('loadGraphic', function(tag:String, sprite:String, ?gridX:Int = 0, ?gridY:Int = 0)
        {
            if (tagIs(tag, FlxSprite))
                getTag(tag).loadGraphic(Paths.image(sprite), gridX != 0 || gridY != 0, gridX, gridY);
        });

        set('makeLuaSprite', function(tag:String, ?image:String, ?x:Float, ?y:Float)
        {
            var sprite:FlxSprite = new FlxSprite(x, y);

            if (image != null)
                sprite.loadGraphic(Paths.image(image));

            setTag(tag, sprite);
        });
    }
}