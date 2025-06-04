function onCreate()

 makeLuaSprite('BG','Dale/BG', -300, -200);
 addLuaSprite('BG',false);
 setScrollFactor('BG', 1, 1);
 scaleObject('BG', 1.5, 1.5); 
 setProperty('BG.antialiasing',false);

 makeLuaSprite('Meat','Dale/Meat', -300, -200);
 addLuaSprite('Meat',true);
 setScrollFactor('Meat', 1.2, 1.2);
 scaleObject('Meat', 1.5, 1.5); 
 setProperty('Meat.antialiasing',false);

 makeLuaSprite('Dark','Dark', -300, 0);
 addLuaSprite('Dark',true);
 setScrollFactor('Dark', 1, 1);
 scaleObject('Dark', 1, 1); 
	
 close(true);
end