local spin = 0 --SSSSSPPPPPPIIIIIIIIIINNNNNNNNNNNNN

function onCreate()
 setProperty('camGame.bgColor', getColorFromHex('2A0000'))

 makeLuaSprite('3D','3D World/redTunnel', -500, -350);
 addLuaSprite('3D',false);
 setScrollFactor('3D', 1, 1);
 scaleObject('3D', 1, 1); 
 setProperty('3D.antialiasing',false);

end

function onCreatePost()

	setProperty('gf.visible',false);
end

function onUpdate()
    spin = spin + 0.07;
        setProperty('3D.angle',spin);
    close(true);
 end
