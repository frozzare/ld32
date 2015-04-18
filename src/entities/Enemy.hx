package entities;

import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;

class Enemy extends Entity
{
  public function new(x:Float, y:Float)
  {
    super(x, y);

    graphic = new Image("graphics/enemy.png");
    setHitbox(16, 16);
    type = "enemy";
  }

  public override function moveCollideX(e:Entity)
  {
    scene.remove(e);
    scene.remove(this);
    return true;
  }

  public override function update()
  {
    if (this.x < -100)
    {
      scene.remove(this);
      return;
    }

    moveBy(-5, 0, "player");
    super.update();
  }

}
