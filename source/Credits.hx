package;

import flixel.FlxG;

class Credits extends MusicBeatState
{
    
	override public function create():Void
    {
        var name:Alphabet = new Alphabet(0,0, "Friday Night Funkin X Touhou");
        name.screenCenter();
        add(name);

        var credit:Alphabet = new Alphabet(0,0, "Made by MarshalMG1 and Gametrock");
        credit.screenCenter();
        credit.y += 50;
        add(credit);
    }

    override public function update(elapsed:Float):Void
    {
        if (FlxG.keys.pressed.ANY) {
            FlxG.switchState(new MainMenuState());
        }
        super.update(elapsed);
    }
}