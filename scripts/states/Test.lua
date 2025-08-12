function postCreate()
    makeLuaSprite('oso', 'menuBG')
    insert(0, 'oso')
    setProperties('oso', { x = 100 })
end

local t = 0

function onUpdate(elapsed)
    t = t + elapsed

    setProperties('oso', { x = math.cos(t) * 100, y = math.sin(t) * 50, angle = t * 10 })
end
