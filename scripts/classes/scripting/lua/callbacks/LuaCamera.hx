package scripting.lua.callbacks;

import scripting.haxe.ScriptLuaPresetBase;

import scripting.lua.LuaPresetUtils;

class LuaCamera extends ScriptLuaPresetBase
{
    override public function new(lua:LuaScript)
    {
        super(lua);
        
        set('cameraShake', function(camera:String, tag:String, ?intensity:Float, ?duration:Float, ?force:Bool, ?axes:Int)
        {
            LuaPresetUtils.cameraFromString(camera).shake(intensity, duration, () -> {
                lua.call('onCameraShakeComplete', [tag]);
            }, force, axes);
        });
    }
}