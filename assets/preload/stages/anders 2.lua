function onCreate()
	-- background shit
	makeLuaSprite('entrance','anders/entrance', -300, -40);
	scaleObject('entrance', 1.1, 1.1);
	
	makeLuaSprite('backrailing', 'anders/backrailing', -300, -40);
		setLuaSpriteScrollFactor('backrailing', 0.9, 0.9);
	scaleObject('backrailing', 1.1, 1.1);
	
	makeLuaSprite('platform', 'anders/platform', -300, -40);
		setLuaSpriteScrollFactor('platform', 0.9, 0.9);
	scaleObject('platform', 1.1, 1.1);
	
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeAnimatedLuaSprite('pillars_break', 'anders/pillars_break', -350, -82);
    scaleObject('pillars_break', 1.1, 1.1);	
		
	makeAnimatedLuaSprite('pantallas', 'anders/pantallas', -300, -40);
    scaleObject('pantallas', 1.1, 1.1);	
	

	
	end

	addLuaSprite('entrance', false);
	addLuaSprite('pillars_break', false); 
	addAnimationByPrefix('pillars_break', 'idle', 'pillars cracking', 5, true);
	addLuaSprite('pantallas', false); 
	addAnimationByPrefix('pantallas', 'idle', 'pantallas idle', 1, true);
	addLuaSprite('backrailing', false);
	addLuaSprite('platform', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end