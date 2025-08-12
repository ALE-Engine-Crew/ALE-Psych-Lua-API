package scripting.lua.callbacks;

import scripting.haxe.ScriptLuaPresetBase;

class LuaReflect extends ScriptLuaPresetBase
{
    override public function new(lua:LuaScript)
    {
        super(lua);

        set('setProperties', function (tag:String, properties:Dynamic)
        {
            var obj = parseVariable(lua, tag);

            if (obj != null)
                applyProps(obj, properties);
        });
    }

    function applyProps(obj:Dynamic, props:Dynamic)
    {
        for (key in Reflect.fields(props))
        {
            var value:Dynamic = Reflect.field(props, key);

            if (Reflect.fields(value).length > 0)
            {
                var subObj = Reflect.field(obj, key);

                applyProps(subObj, value);
            } else {
                Reflect.setProperty(obj, key, value);
            }
        }
    }

    function parseVariable(lua:LuaScript, vars:String)
    {
        var variables:Array<String> = vars.split('.');
        var prop:Dynamic = getObjectDirectly(lua, variables[0], true);

        if (variables.length > 1)
            prop = getVarInArray(lua, getPropertyLoop(lua, variables), variables[variables.length - 1]);

        return prop;
    }

	function getObjectDirectly(lua:LuaScript, objectName:String, ?allowMaps:Bool = false):Dynamic
	{
		switch(objectName)
		{
			case 'this' | 'instance' | 'game':
				return lua.type == STATE ? ScriptState.instance : ScriptSubState.instance;
			
			default:
				var obj:Dynamic = lua.variables.get(objectName);

				if (obj == null)
                    obj = getVarInArray(lua, lua.type == STATE ? ScriptState.instance : ScriptSubState.instance, objectName, allowMaps);

				return obj;
		}
	}

    function getVarInArray(lua:LuaScript, instance:Dynamic, variable:String, allowMaps:Bool = false):Any
    {
        var splitProps:Array<String> = variable.split('[');

        if (splitProps.length > 1)
        {
            var target:Dynamic = null;

            if (lua.variables.exists(splitProps[0]))
            {
                var retVal:Dynamic = lua.variables.get(splitProps[0]);

                if (retVal != null)
                    target = retVal;
            } else {
                target = Reflect.getProperty(instance, splitProps[0]);
            }

            for (i in 1...splitProps.length)
            {
                var j:Dynamic = splitProps[i].substr(0, splitProps[i].length - 1);

                target = target[j];
            }

            return target;
        }
        
        if (allowMaps && isMap(instance))
            return instance.get(variable);

        if (lua.variables.exists(variable))
        {
            var retVal:Dynamic = lua.variables.get(variable);

            if (retVal != null)
                return retVal;
        }

        return Reflect.getProperty(instance, variable);
    }

	function isMap(variable:Dynamic)
	{
		if (variable.exists != null && variable.keyValueIterator != null)
            return true;

		return false;
	}
}