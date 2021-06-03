package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-pico', [4, 5], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('bf-pixel', [19, 19], 0, false, isPlayer);
		animation.add('bf-old', [13, 14], 0, false, isPlayer);
		animation.add('bf-cool', [22, 23], 0, false, isPlayer);
		animation.add('gf', [15], 0, false, isPlayer);
		animation.add('gf-car', [15], 0, false, isPlayer);
		animation.add('gf-christmas', [15], 0, false, isPlayer);
		animation.add('gf-pixel', [15], 0, false, isPlayer);
		animation.add('dad', [12, 12], 0, false, isPlayer);
		animation.add('spooky', [2, 3], 0, false, isPlayer);
		animation.add('monster', [17, 18], 0, false, isPlayer);
		animation.add('monster-christmas', [17, 18], 0, false, isPlayer);
		animation.add('pico', [4, 5], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		animation.add('parents-christmas', [16], 0, false, isPlayer);
		animation.add('senpai', [20, 20], 0, false, isPlayer);
		animation.add('senpai-angry', [20, 20], 0, false, isPlayer);
		animation.add('spirit', [21, 21], 0, false, isPlayer);
		animation.add('tankman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.play(char);

		switch(char)
		{
			case 'senpai' | 'senpai-angry' | 'spirit' | 'bf-pixel':
				antialiasing = false;
		}
		
		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
