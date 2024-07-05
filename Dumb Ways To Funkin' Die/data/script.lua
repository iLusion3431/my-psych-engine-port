var zoom = false; // cam zoooming and etc

var beatHit = 1; // zooming 2

var gameZoom = 0.06; // zooming 3 lolers

var hudZoom = 0.05; // damn too much

var canDoFunny = false; // events thing

var camFollow = PlayState.camFollow;

function createPost()
   {
      cameraFade('000000', 0.001);
      PlayState.camHUD.alpha = 0;
      for(e in PlayState.strumHUD)
         e.alpha = 0;
   }

function stepHit()
   {
      if(curStep == 47)
         {
            cameraFade('000000', 3, true);
         }

      if(curStep == 117)
         {
            FlxTween.tween(PlayState.camHUD, {alpha : 1}, 2);
         }

      if(curStep == 255)
         {
            zoom = true;
            defaultCamZoom = 0.6;
            cameraFlash('BBBFC7', 1);
         }

      if(curStep == 384)
         {
            zoom = false;
         }

      if(curStep == 672)
         {
            cameraFlash('FFFFFF', 0.6);
            gameZoom = 0.04;
            hudZoom = 0.05;
            zoom = true;
         }

      if(curStep == 928) zoom = false;

      if(curStep == 1077)
         {
            cameraFade('000000', 1);
            FlxTween.tween(PlayState.camHUD, {alpha: 0}, 1.1, {ease: FlxEase.expoOut});
            for(theHUD in PlayState.strumHUD)
               FlxTween.tween(theHUD, {alpha: 0}, 1.1, {ease: FlxEase.expoOut});
         }
   }

function beatHit()
   {
      if(curBeat % beatHit == 0 && zoom)
         {
            addZoom(gameZoom, hudZoom);
         }
   }

function addZoom(game, hud)
   {
      FlxG.camera.zoom += game;
      PlayState.camHUD.zoom += hud;
      for(theHUD in PlayState.strumHUD)
         theHUD.zoom += (hud - 0.01);
   }