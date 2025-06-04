function onCreate()

 makeLuaSprite('3D','3D World/disruptor', -200, -200);
 addLuaSprite('3D',false);
 setScrollFactor('3D', 0.2, 0.2);
 scaleObject('3D', 1, 1); 
 setProperty('3D.antialiasing',false);
 addGlitchEffect('3D', 2, 2);
	
 close(true);
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.2 then
        setProperty('health', health- 0.007);
    end
end