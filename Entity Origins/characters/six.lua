
--- This script allows for the character on the righbt side to have a winning icon or animated icons

function onCreatePost()
	makeAnimatedLuaSprite('examplerighticon', 'winningicons', -0, -0) --replace examplerighticon with the name of the character, the path of the icon png needs to be changed too
	addAnimationByPrefix('examplerighticon', 'idle', '06 Normal', 24, true)
	addAnimationByPrefix('examplerighticon', 'lose', '06Loosing', 24, true)
	addAnimationByPrefix('examplerighticon', 'win', '06Winning', 24, true)
	setObjectCamera('examplerighticon', 'camHUD')
	setObjectOrder('examplerighticon', getObjectOrder('iconP1'))
	setProperty('examplerighticon.flipX', true)
	addLuaSprite('examplerighticon', true)
end

function onUpdatePost(elapsed)
	dabar = getProperty('healthBar.percent')
	scaleObject('examplerighticon', getProperty('iconP1.scale.x') + 0, getProperty('iconP1.scale.y') + 0) --First 0 is X, second 0 is Y
	setProperty('examplerighticon.alpha', getProperty('iconP1.alpha'))
	setProperty('examplerighticon.angle', getProperty('iconP1.angle'))
	setProperty('examplerighticon.color', getProperty('iconP1.color'))
	setProperty('iconP1.visible', false)
	setProperty('examplerighticon.x', getProperty('iconP1.x') + 0) --Are the X offsets weird? replace 0 with any other value
	setProperty('examplerighticon.y', getProperty('iconP1.y') + 0) --Same as the Y offsets
	if dabar > 20 and dabar < 80 then
		if getProperty('examplerighticon.animation.curAnim.name') ~= 'idle' then --You can change the offsets of each icon state individually by modifying the values below
			setProperty('examplerighticon.offset.x', getProperty('iconP1.offset.x') + 0)
			setProperty('examplerighticon.offset.y', getProperty('iconP1.offset.y') + 0)
			playAnim('examplerighticon', 'idle', true)
		end
	elseif dabar < 80 then 
		if getProperty('examplerighticon.animation.curAnim.name') ~= 'lose' then
			setProperty('examplerighticon.offset.x', getProperty('iconP1.offset.x') + 0)
			setProperty('examplerighticon.offset.y', getProperty('iconP1.offset.y') + 0)
			playAnim('examplerighticon', 'lose', true)
		end
	elseif dabar > 20 then
		if getProperty('examplerighticon.animation.curAnim.name') ~= 'win' then
			setProperty('examplerighticon.offset.x', getProperty('iconP1.offset.x') + 0)
			setProperty('examplerighticon.offset.y', getProperty('iconP1.offset.y') + 0)
			playAnim('examplerighticon', 'win', true)
		end
	end
end
