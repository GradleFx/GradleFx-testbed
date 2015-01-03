package {

import com.sticksports.nativeExtensions.flurry.Flurry;

import starling.display.Sprite;
import starling.events.Event;
import starling.text.TextField;

public class Game extends Sprite
{

    public function Game()
	{
        addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
    }

    private function addedToStageHandler(event : Event) : void
    {
        removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);

        var tf : TextField = new TextField(400,150, "Test app", "Verdana", 20, 0x34EF12);
        addChild(tf);

        // test a native extension
        Flurry.startSession( "your flurry id" );

        var test : Number = testInlining(4);
    }

    [Inline] // this is an ASC 2.0 feature.
    final private function testInlining(num : Number) : Number
    {
        return num * 2;
    }

}
}
