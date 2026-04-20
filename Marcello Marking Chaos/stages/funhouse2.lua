function onCreatePost()
	makeLuaSprite('bg', 'fun-house/funhouse_bg_song2', -1200, -500)
    scaleObject('bg', 1.7, 1.7)
        setScrollFactor('bg', 1, 1)
	addLuaSprite('bg', false)
        setProperty('bg.antialiasing', false)

    --setProperty('healthBar.alpha', 0)
    --setProperty('iconP1.alpha', 0)
    --setProperty('iconP2.alpha', 0)
    --setProperty('scoreTxt.alignment', LEFT)
    --setProperty('scoreTxt.x',40)
end

function onSpawnNote(i,d,t,s)
        setPropertyFromGroup('notes', i, 'antialiasing', false)
    end