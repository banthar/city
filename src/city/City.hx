package city;
import flash.display.Sprite;

class City extends Sprite
{

	public function new() 
	{
		super();
		graphics.beginFill(0x204020);
		graphics.drawRect(-1e3,-1e3,2e3,2e3);
		for(y in 0...10) {
			for (x in 0...10) {
				var b = new Building();
				b.x = x * (b.width + 2);
				b.y = y * (b.height + 2);
				addChild(b);
			}
		}
	}
	
}