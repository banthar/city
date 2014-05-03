package city;
import flash.display.Sprite;

class Card extends Sprite
{
	public function new() {
		super();
		graphics.lineStyle(4, 0xffffff);
		graphics.beginFill(0);
		graphics.drawRect(0, 0, 64, 108);
		graphics.endFill();
	}	
}