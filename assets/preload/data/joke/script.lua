function onUpdate(elapsed)

         if curStep == 1792 then
                makeLuaSprite('1111','1111', 0, 0);
                addLuaSprite('1111', true);
                setObjectCamera('1111', 'other');
            end
        if curStep == 1920 then
                makeLuaSprite('2222','2222', 0, 0);
                addLuaSprite('2222', true);
                setObjectCamera('2222', 'other');
            end
         if curStep == 2048 then
                makeLuaSprite('3333','3333', 0, 0);
                addLuaSprite('3333', true);
                setObjectCamera('3333', 'other');
            end
            if curStep == 2112 then
                makeLuaSprite('4444','4444', 0, 0);
                addLuaSprite('4444', true);
                setObjectCamera('4444', 'other');
            end
            if curStep == 2816 then
                removeLuaSprite('1111', true);
                removeLuaSprite('2222', true);
                removeLuaSprite('3333', true);
                removeLuaSprite('4444', true);
                makeLuaSprite('5555','5656', 0, 0);
                addLuaSprite('5555', true);
                setObjectCamera('5555', 'other');
            end
        end
            