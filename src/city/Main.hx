package city;

import flash.display.Sprite;
import flash.display.StageQuality;
import flash.events.Event;
import flash.Lib;

class Main extends Sprite 
{
	
	var view:View;
	var bar:Bar;
	
	public function new() 
	{
		super();	
		addEventListener(Event.ADDED_TO_STAGE, added);
		
		view = new View(new City());
		addChild(view);
		bar = new Bar();
		addChild(bar);
	}

	function resize(?_) 
	{
		view.pack();
		bar.y = stage.stageHeight - bar.height;
	}
	
	function init()
	{
		resize();
	}
	
	function added(e) 
	{
		removeEventListener(Event.ADDED_TO_STAGE, added);
		stage.addEventListener(Event.RESIZE, resize);
		init();
	}
	
	public static function main() 
	{
		
		Lib.current.stage.align = flash.display.StageAlign.TOP_LEFT;
		Lib.current.stage.scaleMode = flash.display.StageScaleMode.NO_SCALE;
		Lib.current.stage.quality = StageQuality.LOW;
		Lib.current.addChild(new Main());
	}
}
