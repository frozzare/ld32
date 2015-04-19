package scenes;

import com.haxepunk.Entity;
import com.haxepunk.Scene;
import com.haxepunk.HXP;
import entities.Enemy;
import entities.Player;
import entities.Point;
import entities.Points;
import entities.Restart;
import entities.Score;

class GameScene extends Scene
{
  private var spawnPointTimer:Float = 0;
  private var spawnTimer:Float = 0;
  private var pointsEntity:Points;
  private var playerEntity:Player;
  private var points:Float;
  private var dead:Bool = false;

  public function new()
  {
    super();
  }

  public override function begin()
  {
    pointsEntity = new Points(16, 10);
    add(pointsEntity);
    playerEntity = new Player(16, HXP.halfHeight);
    add(playerEntity);
    spawn();
  }

  private function displayEndScore()
  {
    add(new Score(HXP.halfWidth, HXP.halfHeight, points));
    add(new Restart(HXP.halfWidth, HXP.halfHeight));
  }

  public override function update()
  {
    spawnTimer -= HXP.elapsed;
    spawnPointTimer -= HXP.elapsed;

    points = pointsEntity.getPoints();

    if (typeCount("player") == 0 && dead == false) {
      dead = true;
      removeAll();
      displayEndScore();
    }

    if (dead) {
      return;
    }

    if (spawnTimer <= 0)
    {
      spawn();
      spawn();
      spawn();

      if (points > 100)
      {
        spawn();
        spawn();
      }

    }

    if (spawnPointTimer <= 0)
    {
      spawnPoint();
      spawnPoint();

      if (points > 100)
      {
        spawnPoint();
      }

    }

    super.update();
  }

  private function spawn()
  {
    var y = Math.random() * HXP.height;
    add(new Enemy(HXP.width, y));
    spawnTimer = 0.5;
  }

  private function spawnPoint()
  {
    var y = Math.random() * HXP.height;
    add(new Point(HXP.width, y, pointsEntity));
    spawnPointTimer = 3;
  }
}
