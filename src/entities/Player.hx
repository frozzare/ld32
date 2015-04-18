package entities;

import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;

class Player extends Entity
{
  public function new(x:Float, y:Float)
  {
    super(x, y);

    graphic = new Image("graphics/plane.png");
    cast(graphic, Image).angle = -90;

    type = "player";
  }

  public override function update()
  {
    super.update();

    if (Input.check(Key.LEFT))
    {
      moveBy(-5, 0);
    }

    if (Input.check(Key.RIGHT))
    {
      moveBy(5, 0);
    }

    if (Input.check(Key.UP))
    {
      moveBy(0, -5);
    }

    if (Input.check(Key.DOWN))
    {
      moveBy(0, 5);
    }

    if (Input.check(Key.S))
    {
      cast(this.graphic, Image).angle += 3;
    }

    if (Input.check(Key.D))
    {
      cast(this.graphic, Image).angle -= 3;
    }
/*
    if (Input.check(Key.SPACE))
    {
      scene.add(new Bullet(x + width, y + height / 2));
    }
*/

  }
}
