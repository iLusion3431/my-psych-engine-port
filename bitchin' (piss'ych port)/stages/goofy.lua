function onCreate()

        makeLuaSprite('H', 'goofy/hills', -500, -200);
	setScrollFactor('H', 0.7, 0.7);
        scaleObject('H', 0.7, 0.7);
        
        makeAnimatedLuaSprite('GR', 'goofy/ground', -500, -200);
        addAnimationByPrefix('GR', 'bop', 'a', 24, false);
        setLuaSpriteScrollFactor('GR', 1, 1);
        scaleObject('GR', 0.7, 0.7);

        makeAnimatedLuaSprite('SNT', 'goofy/ST', 500, 200);
        addAnimationByPrefix('SNT', 'STBoops', 'ST', 14, false);
        setLuaSpriteScrollFactor('SNT', 1, 1);
        scaleObject('SNT', 1, 1);

        makeLuaSprite('border', 'goofy/border', 0, 0);
        setLuaSpriteScrollFactor('border', 0, 0);
        scaleObject('border', 0.5, 0.5);
        setObjectCamera('border','hud');

        addLuaSprite('H', false);
        addLuaSprite('GR', false);
	addLuaSprite('SNT', false);
        addLuaSprite('border', true);

        setProperty('H.antialiasing',false);
        setProperty('GR.antialiasing',false);
        setProperty('SNT.antialiasing',false);

        end

function onBeatHit()
    if curBeat % 4 == 0 then
    objectPlayAnimation('GR', 'bop');
    objectPlayAnimation('SNT', 'STBoops');
    end
end