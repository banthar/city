package city;
import flash.display.Sprite;

class Bar extends Sprite
{

	public function new() 
	{
		super();
		for(x in 0...8) {
			var card = new Card();
			card.x = x * (card.width + 4)+4;
			addChild(card);
		}
	}
	
}