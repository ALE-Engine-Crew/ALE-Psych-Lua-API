package scripting.lua.callbacks;

import scripting.haxe.ScriptLuaPresetBase;

import openfl.display.BlendMode;

import flixel.util.FlxColor;

using StringTools;

@:access(openfl.display.BlendMode)
class LuaSprite extends ScriptLuaPresetBase
{
    override public function new(lua:LuaScript)
    {
        super(lua);

        set('makeLuaSprite', function(tag:String, ?image:String, ?x:Float, ?y:Float)
        {
            var sprite:FlxSprite = new FlxSprite(x, y);

            if (image != null)
                sprite.loadGraphic(Paths.image(image));

            sprite.animation.finishCallback = function(name:String)
            {
                lua.call('onSpriteAnimationComplete', [tag, name]);
            };

            setTag(tag, sprite);
        });

        set('loadGraphic', function(tag:String, sprite:String, ?gridX:Int = 0, ?gridY:Int = 0)
        {
            if (tagIs(tag, FlxSprite))
                getTag(tag).loadGraphic(Paths.image(sprite), gridX != 0 || gridY != 0, gridX, gridY);
        });

        set('loadFrames', function(tag:String, sprite:String, spriteType:String = 'sparrow')
        {
            if (tagIs(tag, FlxSprite))
                getTag(tag).frames = switch (spriteType.toLowerCase())
                {
                    case 'sparrow':
                        Paths.getSparrowAtlas(sprite);
                    case 'packer':
                        Paths.getPackerAtlas(sprite);
                    case 'aseprite':
                        Paths.getAsepriteAtlas(sprite);
                    default:
                        Paths.getAtlas(sprite);
                };
        });

        set('addAnimationByPrefix', function(tag:String, name:String, prefix:String, ?framerate:Int, ?loop:Bool)
        {
            if (tagIs(tag, FlxSprite))
                getTag(tag).animation.addByPrefix(name, prefix, framerate, loop);
        });

        set('addAnimation', function(tag:String, name:String, frames:Array<Int>, ?framerate:Int, ?loop:Bool)
        {
            if (tagIs(tag, FlxSprite))
                getTag(tag).animation.add(name, frames, framerate, loop);
        });

        set('addAnimationByIndices', function(tag:String, name:String, prefix:String, indices:Array<Int>, ?framerate:Int, ?loop:Bool)
        {
            if (tagIs(tag, FlxSprite))
                getTag(tag).animation.addByIndices(name, prefix, indices, '', framerate, loop);
        });

        set('playAnim', function(tag:String, name:String, ?forced:Bool, ?reversed:Bool, ?startFrame:Int)
        {
            if (tagIs(tag, FlxSprite))
                getTag(tag).animation.play(name, forced, reversed, startFrame);
        });

        set('setGraphicSize', function(tag:String, w:Int, h:Int)
        {
            if (tagIs(tag, FlxSprite))
                getTag(tag).setGraphicSize(w, h);
        });

        set('updateHitbox', function(tag:String)
        {
            if (tagIs(tag, FlxSprite))
                getTag(tag).updateHitbox();
        });

        set('setBlendMode', function(tag:String, mode:String)
        {
            if (tagIs(tag, FlxSprite))
                getTag(tag).blend = BlendMode.fromString(mode.trim().toLowerCase());
        });

        set('getPixelColor', function(tag:String, x:Int, y:Int)
        {
            if (tagIs(tag, FlxSprite))
                return getTag(tag).pixels.getPixel32(x, y);

            return FlxColor.BLACK;
        });

        set('addLuaSprite', function(tag:String)
        {
            deprecatedPrint('Use "add" instead of "addLuaSprite"');

            if (tagIs(tag, FlxSprite))
                if (type == 'state')
                    FlxG.state.add(getTag(tag));
                else
                    FlxG.state.subState.add(getTag(tag));
        });

        set('removeLuaSprite', function(tag:String, ?destroy:Bool)
        {
            deprecatedPrint('Use "remove" instead of "removeLuaSprite"');

            if (tagIs(tag, FlxSprite))
                if (type == 'state')
                    FlxG.state.remove(getTag(tag), destroy);
                else
                    FlxG.state.subState.remove(getTag(tag), destroy);
        });
    }
}