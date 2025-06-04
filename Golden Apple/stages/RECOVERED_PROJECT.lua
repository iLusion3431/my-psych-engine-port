function onCreate()
 makeLuaSprite('RECOVER','RECOVER_assets', -550,  -200);
 addLuaSprite('RECOVER',false);
 setScrollFactor('RECOVER', 1, 1);
 scaleObject('RECOVER', 1.5, 1.5); 
 setProperty('RECOVER.antialiasing',false);

addCharacterToList('RECOVERED_PROJECT_02', 'dad')
addCharacterToList('RECOVERED_PROJECT_03', 'dad')
	
 close(true);
end