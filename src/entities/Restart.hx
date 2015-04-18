package entities;

import com.haxepunk.Entity;
import com.haxepunk.graphics.Text;

class Restart extends Entity
{
  private function createText()
  {
    var label = new Text("Restart with R key");
    label.color = 0xFFFFFF;
    graphic = label;
  }

  public function new(x:Float, y:Float)
  {
    x -= 90;
    y += 5;
    super(x, y);
    createText();
  }
}
