function onEvent(name, value1, value2)
        if name == "buring" then
   makeLuaSprite('4', 'miny3', 0, 0);
	setLuaSpriteScrollFactor('3', 1.0, 1.0);
       addLuaSprite('4', false);

makeAnimatedLuaSprite('sd','fire1', -5, 273)
    	addAnimationByPrefix('sd','sdd','fire',24,true);
        addLuaSprite('sd',true)
    	objectPlayAnimation('sd','sdd',false);

makeAnimatedLuaSprite('sdd','fire2', -10, 100)
    	addAnimationByPrefix('sdd','sddd','fire2',24,true);
        addLuaSprite('sdd',false)
    	objectPlayAnimation('sdd','sddd',false);
end
end