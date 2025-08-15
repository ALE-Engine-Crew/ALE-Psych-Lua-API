package scripting.lua;

class LuaPreset
{
    public function new(lua:LuaScript)
    {
        new scripting.lua.callbacks.LuaSprite(lua);

        new scripting.lua.callbacks.LuaGlobal(lua);

        new scripting.lua.callbacks.LuaReflect(lua);

        new scripting.lua.callbacks.LuaCoolUtil(lua);

        new scripting.lua.callbacks.LuaBasic(lua);

        new scripting.lua.callbacks.LuaRemoved(lua);

        new scripting.lua.callbacks.LuaMouse(lua);

        new scripting.lua.callbacks.LuaTween(lua);

        new scripting.lua.callbacks.LuaTimer(lua);

        new scripting.lua.callbacks.LuaColor(lua);

        new scripting.lua.callbacks.LuaPaths(lua);

        new scripting.lua.callbacks.LuaCamera(lua);
    }
}