function onUpdate()
	health = getProperty('health')
if getProperty('health') == 2 and curStep > 400 then
		setProperty('health', 0.5);
	end
end
function opponentNoteHit()
if curStep > 1295 and getProperty('health') > 0.2 then
	health = getProperty('health')
    setProperty('health', health- 0.01);
end
end