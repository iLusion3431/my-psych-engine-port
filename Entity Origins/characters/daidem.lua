
--- This script allows for the character on the left side to have a winning icon or animated icons

function onCreatePost()
	makeAnimatedLuaSprite('examplelefticon', 'winningicons', -0, -0) --replace examplelefticon with the name of the character, the path of the icon png needs to be changed too
	addAnimationByPrefix('examplelefticon', 'idle', 'Neutral', 24, true)
	addAnimationByPrefix('examplelefticon', 'lose', 'Lose', 24, true)
	addAnimationByPrefix('examplelefticon', 'win', 'Winning', 24, true)
	setObjectCamera('examplelefticon', 'camHUD')
	setObjectOrder('examplelefticon', getObjectOrder('iconP2'))
	setProperty('examplelefticon.flipX', false)
	addLuaSprite('examplelefticon', true)
end

function onUpdatePost(elapsed)
	dabar = getProperty('healthBar.percent')
	scaleObject('examplelefticon', getProperty('iconP2.scale.x') + 0, getProperty('iconP2.scale.y') + 0) --First 0 is X, second 0 is Y
	setProperty('examplelefticon.alpha', getProperty('iconP2.alpha'))
	setProperty('examplelefticon.angle', getProperty('iconP2.angle'))
	setProperty('examplelefticon.color', getProperty('iconP2.color'))
	setProperty('iconP2.visible', false)
	setProperty('examplelefticon.x', getProperty('iconP2.x') + 0) --Are the X offsets weird? replace 0 with any other value
	setProperty('examplelefticon.y', getProperty('iconP2.y') + -27) --Same as the Y offsets
	if dabar > 20 and dabar < 80 then
		if getProperty('examplelefticon.animation.curAnim.name') ~= 'idle' then --You can change the offsets of each icon state individually by modifying the values below
			setProperty('examplelefticon.offset.x', getProperty('iconP2.offset.x') + 0)
			setProperty('examplelefticon.offset.y', getProperty('iconP2.offset.y') + 0)
			playAnim('examplelefticon', 'idle', true)
		end
	elseif dabar > 80 then 
		if getProperty('examplelefticon.animation.curAnim.name') ~= 'lose' then
			setProperty('examplelefticon.offset.x', getProperty('iconP2.offset.x') + 0)
			setProperty('examplelefticon.offset.y', getProperty('iconP2.offset.y') + 0)
			playAnim('examplelefticon', 'lose', true)
		end
	elseif dabar < 20 then
		if getProperty('examplelefticon.animation.curAnim.name') ~= 'win' then
			setProperty('examplelefticon.offset.x', getProperty('iconP2.offset.x') + 0)
			setProperty('examplelefticon.offset.y', getProperty('iconP2.offset.y') + 0)
			playAnim('examplelefticon', 'win', true)
		end
	end
end
