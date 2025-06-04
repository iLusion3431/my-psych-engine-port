function opponentNoteHit()
          triggerEvent('Screen Shake','0.03, 0.01','')
end

function onCreatePost()
	if dadName == 'tunnel-dave' or dadName == 'badai' then --replace the name for your character name
		for i=0,4,1 do
		setPropertyFromGroup('opponentStrums', i, 'texture', '3D_Note_Assets')
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', '3D_Note_Assets'); --Change texture
			end
		end
	end
end
