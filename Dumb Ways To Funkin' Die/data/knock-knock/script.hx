var zoom = false;

function createPost()
{
	cameraFade('000000', 0.001);
	PlayState.camHUD.alpha = 0;
	for (e in PlayState.strumHUD)
		e.alpha = 0;
	for (i in PlayState.boyfriendStrums)
	{
		i.alpha = 0;
	}

	Conductor.songPosition = 2000;
}

function stepHit()
{
	if (curStep == 5)
	{
		FlxG.camera.zoom = 10;
		FlxTween.tween(PlayState.camHUD, {alpha: 1}, 0.3, {ease: FlxEase.cubicOut});
		cameraFade('000000', 0.5, true);
		Conductor.songPosition += 2000;
	}

	if (curStep == 118)
	{
		cameraFlash('000000', 0.2);
		PlayState.camHUD.alpha = 1;
		PlayState.whereishe.alpha = 0;
	}

	if (curStep == 505)
	{
		FlxTween.tween(FlxG.camera, {zoom: 3}, 0.5, {ease: FlxEase.cubicOut});
		zoom = true;
	}

	if (curStep == 640)
	{
        FlxTween.tween(PlayState.boyfriendStrums.receptors.members[0],{x: 71},1.5,{ease: FlxEase.expoOut});
        FlxTween.tween(PlayState.boyfriendStrums.receptors.members[1],{x: 183},1.5,{ease: FlxEase.expoOut});
        FlxTween.tween(PlayState.boyfriendStrums.receptors.members[2],{x: 295},1.5,{ease: FlxEase.expoOut});
        FlxTween.tween(PlayState.boyfriendStrums.receptors.members[3],{x: 407},1.5,{ease: FlxEase.expoOut});
	}

	if (curStep == 765)
	{
        FlxTween.tween(PlayState.boyfriendStrums.receptors.members[0],{x: 711},1.5,{ease: FlxEase.expoOut});
        FlxTween.tween(PlayState.boyfriendStrums.receptors.members[1],{x: 823},1.5,{ease: FlxEase.expoOut});
        FlxTween.tween(PlayState.boyfriendStrums.receptors.members[2],{x: 935},1.5,{ease: FlxEase.expoOut});
        FlxTween.tween(PlayState.boyfriendStrums.receptors.members[3],{x: 1047},1.5,{ease: FlxEase.expoOut});

	}

	if (curStep == 1026)
	{
		FlxTween.tween(FlxG.camera, {zoom: 0.7}, 0.5, {ease: FlxEase.cubicOut});
		zoom = false;
	}

	if (curStep == 1540)
	{
		cameraFade('000000', 0.35);
        FlxTween.tween(PlayState.boyfriendStrums.receptors.members[0],{x: 71},1.5,{ease: FlxEase.expoOut});
        FlxTween.tween(PlayState.boyfriendStrums.receptors.members[1],{x: 183},1.5,{ease: FlxEase.expoOut});
	}

	if (curStep == 1554)
	{
		cameraFade('000000', 0.1, true);
		zoom = true;
	}

	if (curStep == 2060)
	{
		zoom = false;
        for(i in 5){
            cameraFlash('000000', 0.2);
        }
		PlayState.whereishe.alpha = 1;
	}
}

function beatHit()
{
	if (curBeat % beatHit == 0 && zoom)
	{
		addZoom(gameZoom, hudZoom);
	}
}

function addZoom(game, hud)
{
	FlxG.camera.zoom += game;
	PlayState.camHUD.zoom += hud;
	for (theHUD in PlayState.strumHUD)
		theHUD.zoom += (hud - 0.01);
}
