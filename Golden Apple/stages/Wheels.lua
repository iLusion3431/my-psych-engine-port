function onCreate()
	-- background shit
	makeLuaSprite('swag', 'Wheels/swag', -200, 0);
	addLuaSprite('swag',false)
	setScrollFactor('swag', 0.8, 0.8);
    scaleObject('swag', 4.5, 4.5);
	setProperty('swag.antialiasing',false);

	makeLuaSprite('BestGF', 'Wheels/best_gf', 400, 300);
	addLuaSprite('BestGF',false)
	setScrollFactor('BestGF', 0.9, 0.9);
    scaleObject('BestGF', 2, 2);
	setProperty('BestGF.antialiasing',false);

end

function onCreatePost()

	setProperty('gf.visible',false);

	close(true);
end