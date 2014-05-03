package city;
import flash.display.Sprite;

class Building extends Sprite
{
	public function new() {
		super();
		graphics.lineStyle(1, 0xffffff);
		graphics.beginFill(0);
		graphics.drawRect(0, 0, 48, 64);
		graphics.endFill();
	}	
}