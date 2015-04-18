package entities;

import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;

class Bullet extends Entity
{
    public function new(x:Float, y:Float)
    {
        super(x, y);
        graphic = Image.createCircle(2);
        setHitbox(2, 2);
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
        moveBy(15, 0, "enemy");
        super.update();
    }

    private var a:Float;
    private var b:Float;
}
