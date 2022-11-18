function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bullet Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'gun'); 
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0.6); 
		end
	end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Bullet Note' then
		if noteData == 0 then
			setProperty('333.visible', true);
			playSound('gun', 1);
		elseif noteData == 1 then
			setProperty('222.visible', true);
			playSound('gun', 1);
		elseif noteData == 2 then
			setProperty('444.visible', true);
			playSound('gun', 1);
		elseif noteData == 3 then
			setProperty('111.visible', true);
			playSound('gun', 1);
end
end
end
