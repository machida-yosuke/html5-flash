package  src{
	import flash.display.Sprite;
  import flash.events.*;

	public class Main extends Sprite{
    var container:Sprite = new Sprite();
    var line:Sprite = new Sprite();

		public function Main() {
			// constructor code
			container.graphics.beginFill(0x444444);
			container.graphics.drawRect(0, 0, 1000, 1000);
			addChild(container);
      container.addEventListener(MouseEvent.MOUSE_DOWN, downMouse);

      function downMouse(events:MouseEvent):void{
        container.addEventListener(MouseEvent.MOUSE_MOVE, drawHandler);
        container.addEventListener(MouseEvent.MOUSE_UP, drawEnd);
        line.graphics.lineStyle(1, 0xcc0000);
        line.graphics.moveTo(events.stageX,events.stageY);
        container.addChild(line);
      }

      function drawHandler(events:MouseEvent):void{
        line.graphics.lineStyle(1, 0xcc0000);
        line.graphics.lineTo(events.stageX,events.stageY);
        container.addChild(line);
      }

      function drawEnd(events:MouseEvent):void{
          line.graphics.endFill();
        container.removeEventListener(MouseEvent.MOUSE_MOVE, drawHandler);
        container.removeEventListener(MouseEvent.MOUSE_UP, drawEnd);

      }
		}
	}
}
