package city;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.Rectangle;

class View extends Sprite
{

	public function new(content:Sprite) 
	{
		super();
		addEventListener(MouseEvent.MOUSE_DOWN, function(e) { content.startDrag(); } );
		addEventListener(MouseEvent.MOUSE_UP, function(e) { content.stopDrag(); } );
		addEventListener(MouseEvent.ROLL_OUT, function(e) { content.stopDrag(); } );
		addChild(content);
	}
	
	public function pack() {
		scrollRect = new Rectangle(0, 0, stage.stageWidth, stage.stageHeight);		
	}
	
}