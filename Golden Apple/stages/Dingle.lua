function onCreate()

 makeLuaSprite('BG','Dingle/sky', 0, 0);
 addLuaSprite('BG',false);
 setScrollFactor('BG', 0.2, 0.2);
 scaleObject('BG', 1.7, 1.7); 
 setProperty('BG.antialiasing',false);

 makeLuaSprite('City','Dingle/city', 0, 0);
 addLuaSprite('City',false);
 setScrollFactor('City', 0.5, 0.5);
 scaleObject('City', 1.7, 1.7); 
 setProperty('City.antialiasing',false);

 makeLuaSprite('Street','Dingle/street', -37, 200);
 addLuaSprite('Street',false);
 setScrollFactor('Street', 1, 1);
 scaleObject('Street', 1.5, 1.5); 
 setProperty('Street.antialiasing',false);

 makeLuaSprite('Tree','Dingle/tree', -100, 200);
 addLuaSprite('Tree',false);
 setScrollFactor('Tree', 1, 1);
 scaleObject('Tree', 1.2, 1.2);
 setProperty('Tree.antialiasing',false); 
	
 close(true);
end