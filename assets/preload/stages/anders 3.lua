function onCreate()
	-- background shit
	makeLuaSprite('entrance','anders/entrance_c', -300, -40);
	scaleObject('entrance', 1.1, 1.1);
	
	makeLuaSprite('backrailing', 'anders/backrailing_c', -300, -40);
		setLuaSpriteScrollFactor('backrailing', 0.9, 0.9);
	scaleObject('backrailing', 1.1, 1.1);
	
	makeLuaSprite('platform', 'anders/platform_c', -300, -40);
		setLuaSpriteScrollFactor('platform', 0.9, 0.9);
	scaleObject('platform', 1.1, 1.1);
	
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeLuaSprite('pillars', 'anders/pillars_c', -300, -40);

	scaleObject('pillars', 1.1, 1.1);
		
	makeAnimatedLuaSprite('pantallas', 'anders/pantalla 2', -300, -40);
    scaleObject('pantallas', 1.1, 1.1);	
	
	makeAnimatedLuaSprite('rocks', 'anders/rocks', -300, -40);
    scaleObject('rocks', 1.1, 1.1);	
	

	
	end

	addLuaSprite('entrance', false);
	addLuaSprite('rocks', false); 
	addAnimationByPrefix('rocks', 'idle', 'rocks instance', 30, true);
	addLuaSprite('pillars', false);
	addLuaSprite('pantallas', false); 
	addAnimationByPrefix('pantallas', 'idle', 'pantalla 2 idle', 5, true);
	addLuaSprite('backrailing', false);
	addLuaSprite('platform', false);
	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end