import com.haxepunk.Engine;
import com.haxepunk.HXP;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;

class Main extends Engine
{
	override public function init()
	{
	 	HXP.console.enable();
		HXP.console.toggleKey = Key.F;
		HXP.stage.color = 0x474770;
		HXP.scene = new scenes.GameScene();
	}

	public static function main()
	{
		new Main();
	}

	public override function update()
	{
		if (Input.check(Key.R))
		{
			HXP.scene = new scenes.GameScene();
		}

		super.update();
	}
}
