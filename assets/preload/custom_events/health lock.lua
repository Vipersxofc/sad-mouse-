function onCreate()
    LockTime = 0;
    Lock = false;
 

end

function onEvent(name, value1, value2)
    if name == "health lock" then
    LockTime = (value1);
	runTimer('lol', LockTime);
    Lock = true;
	
	end
end
  function goodNoteHit()
if Lock == true then
	health = getProperty('health')
     setProperty('health', health- 0.023);

end
end
function onUpdate(elapsed)
    makeLuaSprite('7878',8100, 0, 0);
    setObjectCamera('7878', 'other');
    if Lock == true then
    addLuaSprite('7878', false);
    elseif Lock == false then
        removeLuaSprite('7878', false);
    end
end

function opponentNoteHit()
    if Lock == true and getProperty('health') > 0.5 then
    health = getProperty('health')
    setProperty('health', health- 0.0075);
 end
end



function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'lol' then
Lock = false ;


   end
end