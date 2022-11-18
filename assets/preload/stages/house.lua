function onCreate()
   
     setProperty('defaultCamZoom', 0.78);

	setProperty('cameraSpeed', 1);
 
     makeLuaSprite('3', 'miny1', 0, 0);
	setLuaSpriteScrollFactor('3', 1.0, 1.0);

        makeLuaSprite('1', 'miny2', 1770, 0);
	setLuaSpriteScrollFactor('1', 1.2, 1.0);
 

        addLuaSprite('3', false);
        addLuaSprite('1', true);

        setProperty('3.visible', false);
        setProperty('1.visible', false);


end

function onMoveCamera(focus)
	if focus == 'boyfriend' then
        setProperty('defaultCamZoom',1 );
	elseif focus == 'dad' then
        setProperty('defaultCamZoom',0.85);
	end
end