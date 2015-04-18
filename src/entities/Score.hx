package entities;

import com.haxepunk.Entity;
import com.haxepunk.graphics.Text;

class Score extends Entity
{
  private var score:Float = 0;

  private function createText()
  {
    var label = new Text("Score: " + getScore());
    label.color = 0xFFFFFF;
    graphic = label;
  }

  public function getScore():Float
  {
    return Math.round(score);
  }

  public function new(x:Float, y:Float, s:Float)
  {
    x -= 45;
    y -= 15;
    super(x, y);
    score = s;
    createText();
  }
}
