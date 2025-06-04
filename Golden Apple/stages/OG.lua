function onCreate()
	-- background shit
	makeLuaSprite('BG', 'OG/ogBackground', -600, -300);
	setScrollFactor('BG', 0.6, 0.6);

        makeLuaSprite('Clouds', 'OG/ogClouds', -600, -300);
	setScrollFactor('Clouds', 0.5, 0.5);

        makeLuaSprite('Window', 'OG/ogWindow', -600, -300);
	setScrollFactor('Window', 0.9, 0.9);
	
	makeLuaSprite('Grass', 'OG/ogGrass', -650, 600);
	setScrollFactor('Grass', 1, 1);
	scaleObject('Grass', 1.1, 1.1);
        
        makeLuaSprite('Ceiling', 'OG/ogCeiling', -500, -700);
	setScrollFactor('Ceiling', 1.3, 1.3);
	scaleObject('Ceiling', 0.9, 0.9);

	addLuaSprite('BG', false);
        addLuaSprite('Clouds', false);
        addLuaSprite('Window', false);
	addLuaSprite('Grass', false);
        addLuaSprite('Ceiling', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end