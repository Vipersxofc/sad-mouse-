function onEvent(name, value1, value2)
        if name == "black out" then
    makeLuaSprite('image',5656, 0, 0);
    addLuaSprite('image', true);
    setObjectCamera('image', 'other');
    runTimer('666', 0.01); 
    end
end
function onTimerCompleted(tag, loops, loopsleft)
    if tag == '666' then
    doTweenAlpha('byebye', 'image', 0,0.6, 'linear');
    end
    end
    
    function onTweenCompleted(tag)
    if tag == 'byebye' then
    removeLuaSprite('image', true);
    end
	end