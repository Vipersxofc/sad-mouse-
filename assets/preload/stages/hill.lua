local xx = 1000;
local yy = 750;
local xx2 = 1600;
local yy2 = 750;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()

	setProperty('cameraSpeed', 0.8);

     makeLuaSprite('3', 'hill', 0, 0);
	setLuaSpriteScrollFactor('3', 1.0, 1.0);

        addLuaSprite('3', false);

end

function onUpdate()
    if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end

if followchars == true then
		
        if mustHitSection == false then
           
			setProperty('defaultCamZoom', 1)

			if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            
			if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            
			if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
           
			if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end

            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
		
        else
           
			setProperty('defaultCamZoom', 1)
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
           
			if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end

            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end

        else
            triggerEvent('Camera Follow Pos','','')
        end



if curStep == 1536 then
    xx = 900
    yy = 450
    health = getProperty('health')
            setProperty('health', 1.0);
    end
end

    
function goodNoteHit()
            
    health = getProperty('health')

    if curStep > 1536 then
            
    setProperty('health', health- 0.023);
    
end
    
function onBeatHit()

    health = getProperty('health');

    if curStep > 1536 then
   
    setProperty('health', health+ 0.015);

    end
function opponentNoteHit()
if curStep > 1536 and getProperty('health') > 0.65 then
health = getProperty('health')
setProperty('health', health- 0.0075);

end
end
end
end