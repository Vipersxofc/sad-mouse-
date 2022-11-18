function onCreate()
	makeLuaSprite('141414',5656, 0, 0);
    addLuaSprite('141414', true);
    setObjectCamera('141414', 'other');
	doTweenAlpha('6666666666', '141414', 0, 3, 'linear')

	makeLuaText("max",0,0,500,350)
setTextSize('max', 30)
setObjectCamera("max", 'hud')
doTweenAlpha('1','max', 0, 0.000000001, 'linear')
addLuaText('max')

end

function onUpdate()
if getProperty('songMisses') ==0 then
	max = 5
end
if  getProperty('songMisses') ==1 then
	max = 4
end
if  getProperty('songMisses') ==2 then
	max = 3
end
if  getProperty('songMisses') ==3 then
    max = 2
end
if  getProperty('songMisses') ==4 then
	max = 1
end
if  getProperty('songMisses') ==5 then
	max = 0
end
		
setTextString('max', 'MAX MISSES:'..max)
		
if max == 0 then
	setProperty('health', -500)
end
		
if curStep == 128 or curStep == 142 or curStep == 154 or curStep == 166 or curStep == 178 then
	doTweenAlpha('2','max', 1, 0.1, 'linear')
end
		
if curStep == 136 or curStep == 148 or curStep == 160 or curStep == 172 or curStep == 184 then
	doTweenAlpha('3','max', 0, 0.1, 'linear')
end
		
if curStep == 190 or curStep == 202 or curStep == 214 or curStep == 226 or curStep == 238 or curStep == 250 then
	doTweenAlpha('3','max', 1, 0.1, 'linear')
	setProperty('max.x', 950)
	setProperty('max.y', 630)
end
		
if curStep == 196 or curStep == 208 or curStep == 220 or curStep == 232 or curStep == 244 then
	doTweenAlpha('4','max', 0, 0.1, 'linear')
	setProperty('max.x', 950)
	setProperty('max.y', 630)
end

if curStep == 256 then
		
	doTweenAlpha('6666666666', '141414', 1, 1.2, 'linear')
	end
if curStep == 272 then
		doTweenAlpha('6666666666', '141414', 0, 1, 'linear')
		setProperty('rain.visible', false);
end
if curStep == 400 then
	makeLuaSprite('191919',6565, 0, 0);
    addLuaSprite('191919', true);
    setObjectCamera('191919', 'other');
	doTweenAlpha('9999999999', '191919', 0, 0.1, 'linear')
end
if curStep == 527 then
	doTweenAlpha('9999999999', '191919', 1, 1.2, 'linear')
end
if curStep == 543 then
	doTweenAlpha('9999999999', '191919', 0, 1, 'linear')
end
if curStep == 928 then
	setProperty('5.visible', false);
        setProperty('4.visible', false);
        setProperty('6.visible', false);
end
if curStep == 1200 then
	setProperty('5.visible', true);
        setProperty('4.visible', true);
        setProperty('6.visible', true);
end
if curStep == 1584 then
	setProperty('rain.visible', true);
	setProperty('111.visible', false);
	setProperty('222.visible', false);
	setProperty('333.visible', false);
	setProperty('444.visible', false);
end
if curStep == 1712 then
	doTweenAlpha('6666666666', '141414', 1, 5, 'linear')
end
end
