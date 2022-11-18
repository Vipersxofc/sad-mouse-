local allowCountdown =  false
function onCreate()
    setProperty('skipCountdown', true)

        makeLuaSprite('readthefiletitlelol', 'makeGraphicsucks', 0, 0);
	scaleObject('readthefiletitlelol', 6.0, 6.0);
	setObjectCamera('readthefiletitlelol', 'other');

        addLuaSprite('readthefiletitlelol', true);
end

function onSongStart()
	doTweenAlpha('byebye', 'readthefiletitlelol', 0,2, 'linear');
end

function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('start');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end