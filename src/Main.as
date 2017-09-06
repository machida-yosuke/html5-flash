package  src{
	import flash.display.Sprite;

	public class Main extends Sprite{

		public function Main() {
			// constructor code
			var sp:Sprite = new Sprite();

			var cx:int = 100;
			var cy:int = 100;
			var r:int = 70;

			sp.graphics.beginFill(0x444444);
			sp.graphics.drawCircle(cx, cy, r);
			addChild(sp);
			trace("AS3")
		}

	}

}
