function onCreate()
        makeLuaSprite('333', '333', 0, 0);
        setObjectCamera('333', 'other');
        makeLuaSprite('222', '222', 0, 0);
        setObjectCamera('222', 'other');
        makeLuaSprite('444', '444', 0, 0);
        setObjectCamera('444', 'other');
        makeLuaSprite('111', '111', 0, 0);
        setObjectCamera('111', 'other');

        addLuaSprite('333', false);
        addLuaSprite('222', false);
        addLuaSprite('444', false);
        addLuaSprite('111', false);
        setProperty('333.visible', false);
        setProperty('222.visible', false);
        setProperty('444.visible', false);
        setProperty('111.visible', false);

        makeLuaSprite('image',5656, 0, 0);
    addLuaSprite('image', true);
    setObjectCamera('image', 'other');

        setProperty('defaultCamZoom', 2);

	setProperty('cameraSpeed', 0.9);

        makeLuaSprite('4', 'rubbish2', 550, 685);
	setLuaSpriteScrollFactor('3', 1.0, 1.0);

        makeLuaSprite('5', 'stage2', 0, 0);
	setLuaSpriteScrollFactor('1', 1.0, 1.0);

        makeLuaSprite('6', 'sd2', 0, -20);
	setLuaSpriteScrollFactor('1', 1.0, 1.0);

     makeAnimatedLuaSprite('rain','rain', 0, 0)
     addAnimationByPrefix('rain','rain','rain',27,true);
     addLuaSprite('rain', false);
     setObjectCamera('rain', 'other');

     makeAnimatedLuaSprite('snow','snow', -277, -200)
     addAnimationByPrefix('snow','snow','snow',26,true);
     addLuaSprite('snow', false);
     setObjectCamera('snow', 'other');

     setProperty('rain.alpha', 0.3);
 
        
        addLuaSprite('5', false);
        addLuaSprite('4', false);
        addLuaSprite('6', true);
        setProperty('5.visible', true);
        setProperty('4.visible', true);
        setProperty('6.visible', true);
        setProperty('rain.visible', true);

end


function onMoveCamera(focus)
	if focus == 'boyfriend' then
        setProperty('defaultCamZoom',1 );
	elseif focus == 'dad' then
        setProperty('defaultCamZoom',0.83);
	end
end

