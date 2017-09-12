package  src.view{
  import flash.display.Sprite;
  import flash.events.*;
  import src.*;
  import src.view.container.*;
  import src.view.ui.*;

  public class Ui extends Sprite{
    private var btn:Btn;
    public function Ui() {
      btn = new Btn();
      addChild(btn);

      function init():void{
        btn.drawGraphics();
        btn.touchRightUiEvent();
      }
      init();
		}
	}
}
