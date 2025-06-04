function onCreate()
	-- background shit
	makeLuaSprite('stageBG', '3D World/pissing_too', 400, 250);
	addLuaSprite('stageBG',false)
	setScrollFactor('stageBG', 1, 1);
    scaleObject('stageBG', 0.5, 0.5);
	setProperty('stageBG.antialiasing',false);

     close(true);
end