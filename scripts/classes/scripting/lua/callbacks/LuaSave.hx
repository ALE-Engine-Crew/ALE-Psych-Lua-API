package scripting.lua.callbacks;

import scripting.haxe.ScriptLuaPresetBase;

import scripting.lua.LuaPresetUtils;

class LuaSave extends ScriptLuaPresetBase
{
    override public function new(lua:LuaScript)
    {
        super(lua);

        set('flushSaveData', function(name:String)
        {
            cast(Reflect.getProperty(CoolUtil.save, name), FlxSave).flush();
        });

        set('getDataFromSave', function(name:String, variable:String)
        {
            var result = cast(Reflect.getProperty(CoolUtil.save, name), FlxSave).data;

            trace(result);

            var split:Array<String> = variable.split('.');

            trace(split);

            for (sp in split)
                result = Reflect.getProperty(result, sp);

            return result;
        });

        set('setDataFromSave', function(name:String, values:Any)
        {
            LuaPresetUtils.applyProps(cast(Reflect.getProperty(CoolUtil.save, name), FlxSave).data, values);
        });

        set('eraseSaveData', function(name:String)
        {
            cast(Reflect.getProperty(CoolUtil.save, name), FlxSave).erase();
        });
    }
}