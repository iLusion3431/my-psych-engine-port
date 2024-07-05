function onCreate()

       setPropertyFromClass('GameOverSubstate', 'characterName', 'six'); --Character json file for the death animation

        makeLuaSprite('wut is that', 'Stage_LayerBack', -300, -300);
        addLuaSprite('wut is that', false);
	setScrollFactor('wut is that', 0.8, 0.8);

        makeLuaSprite('Laboratory', 'Stage_LayerTop', -450, -300);
        scaleObject('Laboratory', 1.2, 1.2); 
        addLuaSprite('Laboratory', false);
	setScrollFactor('Laboratory', 1, 1);
       close(true);

end