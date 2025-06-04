function onCreate()

 makeLuaSprite('BG','Dave House', -600, -300);
 addLuaSprite('BG',false);
 setScrollFactor('BG', 1, 1);
 scaleObject('BG', 1, 1); 
 setProperty('BG.antialiasing',false);
	
 close(true);
end