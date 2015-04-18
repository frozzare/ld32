package entities;

import com.haxepunk.Entity;
import com.haxepunk.graphics.Text;

class Points extends Entity
{
  private var points:Float = 0;

  private function createText()
  {
    var label = new Text("Points: " + getPoints());
    label.color = 0xFFFFFF;
    graphic = label;
  }

  public function getPoints():Float
  {
    var num = points;
    num = num * Math.pow(10, 3);
    num = Math.round(num) / Math.pow(10, 3);
    return num;
  }

  public function increasePoints(p:Float)
  {
    points += p;
  }

  public function new(x:Float, y:Float)
  {
    super(x, y);
    createText();
  }

  public override function update()
  {
    points += 0.1;
    createText();
  }
}
