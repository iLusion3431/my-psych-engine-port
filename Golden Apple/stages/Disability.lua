function onCreate()

 makeLuaSprite('3D','3D World/disabled', -200, -200);
 addLuaSprite('3D',false);
 setScrollFactor('3D', 0.2, 0.2);
 scaleObject('3D', 1, 1); 
 setProperty('3D.antialiasing',false);
 --addGlitchEffect('3D', 2, 2);

 makeLuaSprite('Dark','Dark', -300, -100);
 addLuaSprite('Dark',true);
 setScrollFactor('Dark', 1, 1);
 scaleObject('Dark', 1, 1); 
	
 close(true);
end