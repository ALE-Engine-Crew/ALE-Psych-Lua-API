import scripting.lua.LuaPreset;

cpp.WindowsAPI.showConsole();

cpp.WindowsAPI.setWindowBorderColor(20, 30, 50);

function onCreate()
{
    for (script in game.luaScripts)
        new LuaPreset(script);
}   