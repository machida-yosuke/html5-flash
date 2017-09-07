package  src{
	import flash.display.Sprite;
  import flash.events.*;

	public class Main extends Sprite{

		public function Main() {
			// constructor code
      var container:Sprite = new Sprite();
			var sp:Sprite = new Sprite();
      var circle:Sprite = new Sprite();

			var cx:int = 50;
			var cy:int = 50;
			var r:int = 70;

			sp.graphics.beginFill(0x444444);
			sp.graphics.drawCircle(cx, cy, r);

      circle.graphics.beginFill(0x444444);

      addChild(container);
			container.addChild(sp);
			trace(sp);

      stage.addEventListener(MouseEvent.CLICK, onClick);

      function onClick(event:MouseEvent):void{
        circle.graphics.drawCircle(event.stageX, event.stageY, r);
        addChild(circle);
        trace(event)
      }
		}
	}

}
