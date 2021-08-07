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
		 switch(char)
		 {
			case 'evil-dad' | 'evil-mom' | 'megumin' | 'sakuya-mad' | 'sakuyaex' | 'senpair' | 'senpair-angry' | 'bf-scared':
				loadGraphic(Paths.image('secretIcons/iconGrid','fumo'), true, 150, 150);

				antialiasing = true;
				animation.add('evil-dad', [12, 13, 34], 0, false, isPlayer);
				animation.add('evil-mom', [6, 7, 33], 0, false, isPlayer);
				animation.add('megumin', [16, 51, 49, 52], 0, false, isPlayer);
				animation.add('sakuya-mad', [0, 1, 2], 0, false, isPlayer);
				animation.add('senpair', [22, 42, 43], 0, false, isPlayer);
		        animation.add('senpair-angry', [46, 45, 44], 0, false, isPlayer);
				animation.add('bf-scared', [26, 27, 30], 0, false, isPlayer);
				animation.add('sakuyaex', [46, 45, 44], 0, false, isPlayer);
		    default: 
				
			antialiasing = true;
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);


		animation.add('bf', [0, 1, 30], 0, false, isPlayer);
		animation.add('bf-car', [0, 1, 30], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1, 30], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 41, 40], 0, false, isPlayer);
		animation.add('spooky', [2, 3, 31], 0, false, isPlayer);
		animation.add('pico', [4, 5, 32], 0, false, isPlayer);
		animation.add('mom', [6, 7, 33], 0, false, isPlayer);
		animation.add('mom-car', [6, 7, 33], 0, false, isPlayer);
		animation.add('tankman', [8, 9, 50], 0, false, isPlayer);
		animation.add('face', [10, 11, 38], 0, false, isPlayer);
		animation.add('dad', [12, 13, 34], 0, false, isPlayer);
		animation.add('senpai', [22, 42, 43], 0, false, isPlayer);
		animation.add('senpai-angry', [46, 45, 44], 0, false, isPlayer);
		animation.add('spirit', [23, 47, 48], 0, false, isPlayer);
		animation.add('bf-old', [14, 15, 39], 0, false, isPlayer);
		animation.add('gf', [16, 51, 49, 52], 0, false, isPlayer);
		animation.add('gf-christmas', [16, 50, 48, 51], 0, false, isPlayer);
		animation.add('gf-pixel', [16, 50, 48, 51], 0, false, isPlayer);
		animation.add('parents-christmas', [17, 18, 36], 0, false, isPlayer);
		animation.add('monster', [19, 20, 37], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20, 37], 0, false, isPlayer);
		animation.add('cirno', [10, 11, 38], 0, false, isPlayer);
		animation.add('reimu', [24, 25, 53], 0, false, isPlayer);
		animation.add('sakuya', [26, 27, 54], 0, false, isPlayer);
		animation.add('mistery', [55, 55, 55], 0, false, isPlayer);
		animation.add('dad-xd', [55, 55, 55], 0, false, isPlayer);
		animation.add('nogfmore', [55, 55, 55], 0, false, isPlayer);
		animation.play(char);
	}
		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'senpair' | 'senpair-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}
	animation.play(char);
	antialiasing = true;
	scrollFactor.set();
}

override function update(elapsed:Float)
{
	super.update(elapsed);

	if (sprTracker != null)
		setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
}
}
