package scripting.lua.callbacks;

import scripting.haxe.ScriptLuaPresetBase;

import scripting.lua.LuaPresetUtils;

using StringTools;

class LuaDeprecated extends ScriptLuaPresetBase
{
    override public function new(lua:LuaScript)
    {
        super(lua);

		set("setProperty", function(variable:String, value:Dynamic, allowMaps:Bool = false)
        {
            deprecatedPrint('Use "setProperties" instead of "setProperty"');

			var split:Array<String> = variable.split('.');

			if (split.length > 1)
            {
				LuaPresetUtils.setVarInArray(lua, LuaPresetUtils.getPropertyLoop(lua, split, true, allowMaps), split[split.length-1], value, allowMaps);

				return true;
			}
		});

        set('setPropertyFromClass', function(classVar:String, variable:String, value:Dynamic, ?allowMaps:Bool = false)
        {
            deprecatedPrint('Use "setPropertiesFromClass" instead of "setPropertyFromClass"');

			var myClass:Dynamic = Type.resolveClass(classVar);

			if (myClass == null)
			{
				errorPrint('Class $classVar not found');

				return null;
			}

			var split:Array<String> = variable.split('.');

			if (split.length > 1)
            {
				var obj:Dynamic = LuaPresetUtils.getVarInArray(lua, myClass, split[0], allowMaps);

				for (i in 1...(split.length - 1))
					obj = LuaPresetUtils.getVarInArray(lua, obj, split[i], allowMaps);

				LuaPresetUtils.setVarInArray(lua, obj, split[split.length - 1], value, allowMaps);

				return value;
			}
            
			LuaPresetUtils.setVarInArray(lua, myClass, variable, value, allowMaps);

			return value;
		});

        set('addInstance', function(tag:String)
        {
            deprecatedPrint('Use "add" instead of "addInstance"');

            if (tagIs(tag, flixel.FlxBasic))
                if (type == 'state')
                    FlxG.state.add(getTag(tag));
                else
                    FlxG.state.subState(getTag(tag));
        });
    }
}