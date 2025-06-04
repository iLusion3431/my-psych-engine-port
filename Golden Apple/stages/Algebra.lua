function onCreate()
	-- background shit
	makeLuaSprite('stageBG', '3D World/algebraBg', -310, -160);
	addLuaSprite('stageBG',false)
	setScrollFactor('stageBG', 1, 1);
    scaleObject('stageBG', 1.5, 1.5);
	setProperty('stageBG.antialiasing',false);

end


function onBeatHit()-- for every beat
	-- body
end

function onStepHit()-- for every step
	-- body
end

function onUpdate()
	-- body
end
