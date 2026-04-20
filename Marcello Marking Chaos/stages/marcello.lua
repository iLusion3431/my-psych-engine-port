function onCreate()
        makeLuaSprite('sky', 'marcello/marcellocity_sky', -500, -400);
        addLuaSprite('sky', false);
        scaleObject('sky', 1.3, 1.3); 
	setScrollFactor('sky', 0.5, 0.5);

        makeLuaSprite('city', 'marcello/marcellohouse_city', -500, -400);
        scaleObject('city', 1.3, 1.3); 
        addLuaSprite('city', false);
	setScrollFactor('city', 0.7, 0.7);

        makeLuaSprite('house', 'marcello/marcellohouse_house', -500, -400);
        scaleObject('house', 1.3, 1.3); 
        addLuaSprite('house', false);
	setScrollFactor('house', 1, 1);
       close(true);

end