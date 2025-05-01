local defaultY = 0
local duration = 0

function onCreatePost()
	duration = 60/bpm
end

function onBeatHit()
	if curBeat % 2 == 0 then
		setProperty('iconP2.angle', 10)
	else
		setProperty('iconP2.angle', -10)
	end

	doTweenAngle('iconA2', 'iconP2', 0, duration, 'backIn')
end