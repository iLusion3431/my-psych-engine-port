local defaultY = 0
local duration = 0

function onCreatePost()
	defaultY = getProperty('iconP2.y')
	duration = getPropertyFromClass('Conductor', 'stepCrochet') * 2 / 1100
end

function onBeatHit()
	if curBeat % 2 == 0 then
		setProperty('iconP2.flipX', true)
	else
		setProperty('iconP2.flipX', false)
	end

	doTweenY('iconY2', 'iconP2', defaultY - 40, duration, 'cubeOut')
end

function onTweenCompleted(tag)
	if tag == 'iconY2' then
		doTweenY('iconYY2', 'iconP2', defaultY, duration, 'cubeIn')
	end
end