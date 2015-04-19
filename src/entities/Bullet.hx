package entities;

import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;
import com.haxepunk.HXP;

class Bullet extends Entity
{
    public function new(x:Float, y:Float)
    {
        super(x, y);
        graphic = new Image("graphics/ghost.png");
        setHitbox(10, 10);
        type = "bullet";
    }

    public override function moveCollideX(e:Entity)
    {
        scene.remove(e);
        scene.remove(this);
        return true;
    }

    public override function update()
    {
        if (x > HXP.width)
        {
          scene.remove(this);
        }
        else
        {
          moveBy(15, 0, "enemy");
          super.update();
        }
    }

    private var a:Float;
    private var b:Float;
}
