function onCreate()

        setProperty('defaultCamZoom', 0.78);

	setProperty('cameraSpeed', 0.9);

        makeLuaSprite('3', 'rubbish', 550, 685);
	setLuaSpriteScrollFactor('3', 1.0, 1.0);

        makeLuaSprite('1', 'stage', 0, 0);
	setLuaSpriteScrollFactor('1', 1.0, 1.0);

        makeLuaSprite('2', 'sd', -30, -20);
	setLuaSpriteScrollFactor('1', 1.0, 1.0);


     makeAnimatedLuaSprite('snow','snow', -277, -200)
     addAnimationByPrefix('snow','snow','snow',26,true);
     addLuaSprite('snow', false);
     setObjectCamera('snow', 'other');

	
 
        
        addLuaSprite('1', false);
        addLuaSprite('3', false);
        addLuaSprite('2', true);

end

function onMoveCamera(focus)
	if focus == 'boyfriend' then
        setProperty('defaultCamZoom',1 );
	elseif focus == 'dad' then
        setProperty('defaultCamZoom',0.83);
	end
end

