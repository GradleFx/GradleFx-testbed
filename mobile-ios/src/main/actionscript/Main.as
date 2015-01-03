package {

import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.events.Event;
import flash.geom.Rectangle;
import flash.ui.Multitouch;
import flash.ui.MultitouchInputMode;

import starling.core.Starling;
import starling.utils.HAlign;
import starling.utils.VAlign;

[SWF(frameRate="60", backgroundColor="#121212")]
public class Main extends Sprite
{
    private var _starling:Starling;

    public function Main()
    {
        stage.addEventListener(Event.DEACTIVATE, stage_deactivateHandler, false, 0, true);

        Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;

        stage.scaleMode = StageScaleMode.NO_SCALE;
        stage.align = StageAlign.TOP_LEFT;

        _starling = new Starling(Game, stage, new Rectangle(0,0, stage.fullScreenWidth, stage.fullScreenHeight));
        _starling.start();
        _starling.showStatsAt(HAlign.RIGHT, VAlign.BOTTOM);
    }

    private function stage_deactivateHandler(event:Event):void
    {
        _starling.stop();
        stage.addEventListener(Event.ACTIVATE, stage_activateHandler);
    }

    private function stage_activateHandler(event:Event):void
    {
        stage.removeEventListener(Event.ACTIVATE, stage_activateHandler);
        _starling.start();
    }
}
}
