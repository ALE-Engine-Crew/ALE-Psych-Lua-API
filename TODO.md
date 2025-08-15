## Variables

- *[REMOVED]* **Function_StopLua** -> `LuaUtils.Function_StopLua`
- *[REMOVED]* **Function_StopHScript** -> `LuaUtils.Function_StopHScript`
- *[REMOVED]* **Function_StopAll** -> `LuaUtils.Function_StopAll`
- **Function_Stop** -> `LuaUtils.Function_Stop`
- **Function_Continue** -> `LuaUtils.Function_Continue`
- *[REMOVED]* **luaDebugMode** -> `false`
- *[REMOVED]* **luaDeprecatedWarnings** -> `true`
- **inChartEditor** -> `false`
- **curBpm** -> `Conductor.bpm`
- **bpm** -> `PlayState.SONG.bpm`
- **scrollSpeed** -> `PlayState.SONG.speed`
- **crochet** -> `Conductor.crochet`
- **stepCrochet** -> `Conductor.stepCrochet`
- **songLength** -> `FlxG.sound.music.length`
- **songName** -> `PlayState.SONG.song`
- **songPath** -> `Paths.formatToSongPath(PlayState.SONG.song)`
- **startedCountdown** -> `false`
- **curStage** -> `PlayState.SONG.stage`
- **isStoryMode** -> `PlayState.isStoryMode`
- **difficulty** -> `PlayState.storyDifficulty`
- **difficultyName** -> `Difficulty.getString()`
- **difficultyPath** -> `Paths.formatToSongPath(Difficulty.getString())`
- **weekRaw** -> `PlayState.storyWeek`
- **week** -> `WeekData.weeksList[PlayState.storyWeek]`
- **seenCutscene** -> `PlayState.seenCutscene`
- **hasVocals** -> `PlayState.SONG.needsVoices`
- *[REMOVED]* **cameraX** -> `0`
- *[REMOVED]* **cameraY** -> `0`
- **curSection** -> `0`
- **curBeat** -> `0`
- **curStep** -> `0`
- **curDecBeat** -> `0`
- **curDecStep** -> `0`
- **score** -> `0`
- **misses** -> `0`
- **hits** -> `0`
- **combo** -> `0`
- **rating** -> `0`
- **ratingName** -> `''`
- **ratingFC** -> `''`
- **version** -> `CoolVars.engineVersion`
- **inGameOver** -> `false`
- **mustHitSection** -> `false`
- **altAnim** -> `false`
- **gfSection** -> `false`
- **healthGainMult** -> `game.healthGain`
- **healthLossMult** -> `game.healthLoss`
- **playbackRate** -> FLX_PITCH ? `game.playbackRate` ? `1`
- **guitarHeroSustains** -> `game.guitarHeroSustains`
- **instakillOnMiss** -> `game.instakillOnMiss`
- **botPlay** -> `game.cpuControlled`
- **practice** -> `game.practiceMode`
- **defaultPlayerStrumX** + 0...4 -> `0`
- **defaultPlayerStrumY** + 0...4 -> `0`
- **defaultOpponentStrumX** + 0...4 -> `0`
- **defaultOpponentStrumY** + 0...4 -> `0`
- **defaultBoyfriendX** -> `game.BF_X`
- **defaultBoyfriendY** -> `game.BF_Y`
- **defaultOpponentX** -> `game.DAD_X`
- **defaultOpponentY** -> `game.DAD_Y`
- **defaultGirlfriendX** -> `game.GF_X`
- **defaultGirlfriendY** -> `game.GF_Y`
- **boyfriendName** -> `PlayState.SONG.player1`
- **dadName** -> `PlayState.SONG.player2`
- **gfName** -> `PlayState.SONG.gfVersion`
- **downscroll** -> `ClientPrefs.data.downScroll`
- **middlescroll** -> `ClientPrefs.data.middleScroll`
- **framerate** -> `ClientPrefs.data.framerate`
- **ghostTapping** -> `ClientPrefs.data.ghostTapping`
- **hideHud** -> `ClientPrefs.data.hideHud`
- **timeBarType** -> `ClientPrefs.data.timeBarType`
- **scoreZoom** -> `ClientPrefs.data.scoreZoom`
- **cameraZoomOnBeat** -> `ClientPrefs.data.camZooms`
- **flashingLights** -> `ClientPrefs.data.flashing`
- **noteOffset** -> `ClientPrefs.data.noteOffset`
- **healthBarAlpha** -> `ClientPrefs.data.healthBarAlpha`
- **noResetButton** -> `ClientPrefs.data.noReset`
- **lowQuality** -> `ClientPrefs.data.lowQuality`
- **shadersEnabled** -> `ClientPrefs.data.shaders`
- **scriptName** -> `scriptName`
- **currentModDirectory** -> `Mods.currentModDirectory`
- **noteSkin** -> `ClientPrefs.data.noteSkin`
- **noteSkinPostfix** -> `Note.getNoteSkinPostfix()`
- **splashSkin** -> `ClientPrefs.data.splashSkin`
- **splashSkinPostfix** -> `NoteSplash.getSplashSkinPostfix()`
- **splashAlpha** -> `ClientPrefs.data.splashAlpha`
- **buildTarget** -> `LuaUtils.getBuildTarget()`

---

## Implemented Functions

- **loadGraphic** -> `(variable:String, image:String, ?gridX:Int = 0, ?gridY:Int = 0)`
- **loadFrames** -> `(variable:String, image:String, spriteType:String = "sparrow")`
- **getObjectOrder** -> `(obj:String)`
- **setObjectOrder** -> `(obj:String, position:Int)`
- **mouseClicked** -> `(button:String)`
- **mousePressed** -> `(button:String)`
- **mouseReleased** -> `(button:String)`
- **cancelTween** -> `(tag:String)`
- **runTimer** -> `(tag:String, time:Float = 1, loops:Int = 1)`
- **getColorFromName** -> `(color:String)`
- **getColorFromString** -> `(color:String)`
- **precacheSound** -> `(name:String)`
- **precacheMusic** -> `(name:String)`
- **makeLuaSprite** -> `(tag:String, ?image:String = null, ?x:Float = 0, ?y:Float = 0)`
- **addAnimationByPrefix** -> `(obj:String, name:String, prefix:String, framerate:Int = 24, loop:Bool = true)`
- **addAnimation** -> `(obj:String, name:String, frames:Array<Int>, framerate:Int = 24, loop:Bool = true)`
- **addAnimationByIndices** -> `(obj:String, name:String, prefix:String, indices:Any, framerate:Int = 24, loop:Bool = false)`
- **playAnim** -> `(obj:String, name:String, forced:Bool = false, ?reverse:Bool = false, ?startFrame:Int = 0)`
- **updateHitbox** -> `(obj:String)`
- **setBlendMode** -> `(obj:String, blend:String = '')`
- **objectsOverlap** -> `(obj1:String, obj2:String)`
- **getPixelColor** -> `(obj:String, x:Int, y:Int)`
- **playMusic** -> `(sound:String, volume:Float = 1, loop:Bool = false)`
- **playSound** -> `(sound:String, volume:Float = 1, ?tag:String = null)`
- **stopSound** -> `(tag:String)`
- **pauseSound** -> `(tag:String)`
- **resumeSound** -> `(tag:String)`
- **soundFadeIn** -> `(tag:String, duration:Float, fromValue:Float = 0, toValue:Float = 1)`
- **soundFadeOut** -> `(tag:String, duration:Float, toValue:Float = 0)`

---

## PlayState Functions

- **startCountdown** -> `()`
- **endSong** -> `()`
- **restartSong** -> `(?skipTransition:Bool = false)`
- **exitSong** -> `(?skipTransition:Bool = false)`
- **cameraSetTarget** -> `(target:String)`
- **triggerEvent** -> `(name:String, arg1:Dynamic, arg2:Dynamic)`
- **characterDance** -> `(character:String)`
- **startDialogue** -> `(dialogueFile:String, music:String = null)`
- **soundFadeCancel** -> `(tag:String)`

---

## Functions

- **setVar** -> `(varName:String, value:Dynamic)`
- **getVar** -> `(varName:String)`
- **loadSong** -> `(?name:String = null, ?difficultyNum:Int = -1)`

### Discord Client

- **changeDiscordPresence** -> `(details:String, state:Null<String>, ?smallImageKey:String, ?hasStartTimestamp:Bool, ?endTimestamp:Float)`
- **changeDiscordClientID** -> `(?newID:String = null)`

### HScript

- **runHaxeCode** -> `(codeToRun:String, ?varsToBring:Any = null, ?funcToRun:String = null, ?funcArgs:Array<Dynamic> = null)`
- **runHaxeFunction** -> `(funcToRun:String, ?funcArgs:Array<Dynamic> = null)`
- **addHaxeLibrary** -> `(libName:String, ?libPackage:String = '')`

### FlxAnimate

- **makeFlxAnimateSprite** -> `(tag:String, ?x:Float = 0, ?y:Float = 0, ?loadFolder:String = null)`
- **loadAnimateAtlas** -> `(tag:String, folderOrImg:Dynamic, ?spriteJson:Dynamic = null, ?animationJson:Dynamic = null)`
- **addAnimationBySymbolIndices** -> `(tag:String, name:String, symbol:String, ?indices:Any = null, ?framerate:Float = 24, ?loop:Bool = false, ?matX:Float = 0, ?matY:Float = 0)`

### Reflection

- **getProperty** -> `(variable:String, ?allowMaps:Bool = false)`
- **setProperty** -> `(variable:String, value:Dynamic, allowMaps:Bool = false)`
- **getPropertyFromClass** -> `(classVar:String, variable:String, ?allowMaps:Bool = false)`
- **setPropertyFromClass** -> `(classVar:String, variable:String, value:Dynamic, ?allowMaps:Bool = false)`
- **getPropertyFromGroup** -> `(obj:String, index:Int, variable:Dynamic, ?allowMaps:Bool = false)`
- **setPropertyFromGroup** -> `(obj:String, index:Int, variable:Dynamic, value:Dynamic, ?allowMaps:Bool = false)`
- **removeFromGroup** -> `(obj:String, index:Int, dontDestroy:Bool = false)`
- **callMethod** -> `(funcToRun:String, ?args:Array<Dynamic> = null)`
- **callMethodFromClass** -> `(className:String, funcToRun:String, ?args:Array<Dynamic> = null)`
- **createInstance** -> `(variableToSave:String, className:String, ?args:Array<Dynamic> = null)`
- **addInstance** -> `(objectName:String, ?inFront:Bool = false)`
- **instanceArg** -> `(instanceName:String, ?className:String = null)`

### Text

- **makeLuaText** -> `(tag:String, text:String, width:Int, x:Float, y:Float)`
- **setTextString** -> `(tag:String, text:String)`
- **setTextSize** -> `(tag:String, size:Int)`
- **setTextWidth** -> `(tag:String, width:Float)`
- **setTextHeight** -> `(tag:String, height:Float)`
- **setTextAutoSize** -> `(tag:String, value:Bool)`
- **setTextBorder** -> `(tag:String, size:Float, color:String, ?style:String = 'outline')`
- **setTextColor** -> `(tag:String, color:String)`
- **setTextFont** -> `(tag:String, newFont:String)`
- **setTextItalic** -> `(tag:String, italic:Bool)`
- **setTextAlignment** -> `(tag:String, alignment:String = 'left')`
- **getTextString** -> `(tag:String)`
- **getTextSize** -> `(tag:String)`
- **getTextFont** -> `(tag:String)`
- **getTextWidth** -> `(tag:String)`
- **addLuaText** -> `(tag:String)`
- **removeLuaText** -> `(tag:String, destroy:Bool = true)`

### Extra

"keyboardJustPressed", function(name:String)
"keyboardPressed", function(name:String)
"keyboardReleased", function(name:String)
"anyGamepadJustPressed", function(name:String)
"anyGamepadPressed", function(name:String)
"anyGamepadReleased", function(name:String)
"gamepadAnalogX", function(id:Int, ?leftStick:Bool = true)
"gamepadAnalogY", function(id:Int, ?leftStick:Bool = true)
"gamepadJustPressed", function(id:Int, name:String)
"gamepadPressed", function(id:Int, name:String)
"gamepadReleased", function(id:Int, name:String)
"keyJustPressed", function(name:String = '')
"keyPressed", function(name:String = '')
"keyReleased", function(name:String = '')
"initSaveData", function(name:String, ?folder:String = 'psychenginemods')
"flushSaveData", function(name:String)
"getDataFromSave", function(name:String, field:String, ?defaultValue:Dynamic = null)
"setDataFromSave", function(name:String, field:String, value:Dynamic)
"eraseSaveData", function(name:String)
"checkFileExists", function(filename:String, ?absolute:Bool = false)
"saveFile", function(path:String, content:String, ?absolute:Bool = false)
"deleteFile", function(path:String, ?ignoreModFolders:Bool = false)
"getTextFromFile", function(path:String, ?ignoreModFolders:Bool = false)
"directoryFileList", function(folder:String)
"stringStartsWith", function(str:String, start:String)
"stringEndsWith", function(str:String, end:String)
"stringSplit", function(str:String, split:String)
"stringTrim", function(str:String)
"getRandomInt", function(min:Int, max:Int = FlxMath.MAX_VALUE_INT, exclude:String = '')
"getRandomFloat", function(min:Float, max:Float = 1, exclude:String = '')
"getRandomBool", function(chance:Float = 50)

### Custom SubState

"openCustomSubstate", function(name:String, ?pauseGame:Bool = false)
"closeCustomSubstate", function()
"insertToCustomSubstate", function(tag:String, ?pos:Int = -1)

### Shader

"initLuaShader", function(name:String, ?glslVersion:Int = 120)
"setSpriteShader", function(obj:String, shader:String)
"removeSpriteShader", function(obj:String)
"getShaderBool", function(obj:String, prop:String)
"getShaderBoolArray", function(obj:String, prop:String)
"getShaderInt", function(obj:String, prop:String)
"getShaderIntArray", function(obj:String, prop:String)
"getShaderFloat", function(obj:String, prop:String)
"getShaderFloatArray", function(obj:String, prop:String)
"setShaderBool", function(obj:String, prop:String, value:Bool)
"setShaderBoolArray", function(obj:String, prop:String, values:Dynamic)
"setShaderInt", function(obj:String, prop:String, value:Int)
"setShaderIntArray", function(obj:String, prop:String, values:Dynamic)
"setShaderFloat", function(obj:String, prop:String, value:Float)
"setShaderFloatArray", function(obj:String, prop:String, values:Dynamic)
"setShaderSampler2D", function(obj:String, prop:String, bitmapdataPath:String)