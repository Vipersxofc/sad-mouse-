function onEvent(name, value1, value2)
        if name == "black 1 on" then
    makeLuaSprite('image1',1919, 0, 0);
    addLuaSprite('image1', true);
    setObjectCamera('image1', 'other');
end
end