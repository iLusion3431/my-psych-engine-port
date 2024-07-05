local spin = 0 --SSSSSPPPPPPIIIIIIIIIINNNNNNNNNNNNN

function onCreate()
	-- im sucked at these lol
        makeLuaSprite('void', 'void', -360, -200);
	setScrollFactor('void', 0.5, 0.5);
        scaleObject('void', 1.5, 1.5);

        makeLuaSprite('shatter', 'shatter', -360, -170);
	setScrollFactor('shatter', 0.9, 0.9);
        scaleObject('shatter', 1.5, 1.5);

        makeLuaSprite('dot', 'dot', -360, -170);
	setScrollFactor('dot', 1, 1);
        scaleObject('dot', 1.5, 1.5);

        makeLuaSprite('b', 'black', -360, -200);
	setScrollFactor('b', 0.5, 0.5);
        scaleObject('b', 1.5, 1.5);

	addLuaSprite('void', false);
	addLuaSprite('shatter', false);
        addLuaSprite('dot', false);
        addLuaSprite('b', true);

        setProperty('b.visible', false);
        --setObjectCamera('b','hud')

        setPropertyFromClass('GameOverSubstate', 'characterName', 'nobf-dead'); --Character json file for the death animation
        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
        setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/   

end

function onUpdate()
    spin = spin + 0.1;
        setProperty('shatter.angle',spin);
end

function opponentNoteHit()
	triggerEvent('Screen Shake', '0.2, 0.01');	
end

function onStepHit()
    if curStep == 256 then
       setProperty('dot.visible', false);
       --addLuaScript('Fly Notes');
       --noteTweenX('byearrows1', 0, -200, 0.01, 'linear');
       --noteTweenX('byearrows2', 1, -200, 0.01, 'linear');
       --noteTweenX('byearrows3', 2, -200, 0.01, 'linear');
       --noteTweenX('byearrows4', 3, -200, 0.01, 'linear');
       --noteTweenX('middletime1', 4, 414, 0.01, 'linear');
       --noteTweenX('middletime2', 5, 527, 0.01, 'linear');
       --noteTweenX('middletime3', 6, 637, 0.01, 'linear');
       --noteTweenX('middletime4', 7, 750, 0.01, 'linear');
         end

    if curStep == 1096 then
       setProperty('b.visible', true);  
          
       close(true);
       end
    end