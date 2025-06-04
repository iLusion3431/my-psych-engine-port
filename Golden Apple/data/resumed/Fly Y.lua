function onUpdate(elapsed)

  if curStep >= 0 then

    songPos = getSongPosition()

    local currentBeat = (songPos/1000)*(bpm/180)

    doTweenY(dadTweenY, 'dad', 300-120*math.sin((currentBeat*0.25)*math.pi),0.001)
    --doTweenX(dadTweenX, 'dad', 300-120*math.sin((currentBeat*0.25)*math.pi),0.001)

  end

end
