function onCreate()

 makeLuaSprite('BG','Galaxy', -200, -200);
 addLuaSprite('BG',false);
 setScrollFactor('BG', 0.2, 0.2);
 scaleObject('BG', 1, 1); 
 setProperty('BG.antialiasing',false);

 makeLuaSprite('Dark','Dark', -300, 0);
 addLuaSprite('Dark',true);
 setScrollFactor('Dark', 1, 1);
 scaleObject('Dark', 1, 1); 
	
 close(true);
end