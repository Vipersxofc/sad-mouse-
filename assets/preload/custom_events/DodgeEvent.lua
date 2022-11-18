function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
    healthDrain = 0;
	
    precacheImage('spacebar');
	precacheSound('Dodged');
end

function onEvent(name, value1, value2)
    if name == "DodgeEvent" then
    --Get Dodge time
    DodgeTime = (value1 - 0.5);
	
    --Make Dodge Sprite
	makeLuaSprite('spacebar', 'dodge', 430, 120);
	setObjectCamera('spacebar', 'other');
	scaleLuaSprite('spacebar', 0.80, 0.80); 
    addLuaSprite('spacebar', true); 
	
	--Set values so you can dodge
	canDodge = true;
	runTimer('Died', DodgeTime);
	
    characterPlayAnim('dad', 'hey', true);
    setProperty('dad.specialAnim', true);
	end
end

function onUpdate(elapsed)
   if canDodge == true and keyJustPressed('space') then
   
   Dodged = true;
   playSound('die', 0.7);
   characterPlayAnim('boyfriend', 'dodge', true);
   setProperty('boyfriend.specialAnim', true);
   removeLuaSprite('spacebar');
   canDodge = false

   elseif healthDrain > 0 then
	healthDrain = healthDrain - 0.2 * elapsed;
	setProperty('health', getProperty('health') - 0.2 * elapsed);
	if healthDrain < 0 then
		healthDrain = 0;

end
end
end


function onTimerCompleted(tag, loops, loopsLeft) 
   if tag == 'Died' and Dodged == false then
   healthDrain = healthDrain + 0.6;
   setProperty('health', getProperty('health') - 0.3);
   characterPlayAnim('boyfriend', 'at', true);
   setProperty('boyfriend.specialAnim', true);
   removeLuaSprite('spacebar');
   canDodge = false
  
   elseif tag == 'Died' and Dodged == true then
   Dodged = false
   end
end
