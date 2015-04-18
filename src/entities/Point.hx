package entities;

import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;

class Point extends Entity
{
  private var pointsEntity:Points;

  public function new(x:Float, y:Float, pointsEntity:Points)
  {
    super(x, y);
    this.pointsEntity = pointsEntity;
    graphic = new Image("graphics/point.png");
    setHitbox(16, 16);
    type = "enemy";
  }

  public override function moveCollideX(e:Entity)
  {
    pointsEntity.increasePoints(5);
    scene.remove(this);
    return true;
  }

  public override function update()
  {
    moveBy(-5, 0, "player");
    super.update();
  }

}
