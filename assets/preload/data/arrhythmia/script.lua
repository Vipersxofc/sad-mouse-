function onCreate()
	makeLuaSprite('141414',5656, 0, 0);
    addLuaSprite('141414', true);
    setObjectCamera('141414', 'other');
	doTweenAlpha('6666666666', '141414', 0, 0.1, 'linear')

function onUpdate()	
if curStep == 1791 then
	doTweenAlpha('6666666666', '141414', 0, 0.1, 'linear')
end
if curStep == 1919 then
	doTweenAlpha('6666666666', '141414', 1, 1, 'linear')
end
end
end
