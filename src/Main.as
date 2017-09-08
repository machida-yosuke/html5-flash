package  src{
  import flash.display.*;
  import flash.events.*;
  import src.view.*;
  import flash.utils.*;

  public class Main extends Sprite{
    private var container:Sprite = new Sprite();
    public static var flagLine:Boolean = true;
    public static var lineBold:int = 1;
    private var line:Line;

    public function Main() {
      if (stage) init();
      else addEventListener(Event.ADDED_TO_STAGE, init);

     function init(event:Event = null):void {
      stage.align = StageAlign.TOP_LEFT;
      line = new Line();
      var btn:Btn = new Btn();

      Manager.init(line);

      addChild(line);
      addChild(btn);

      line.addEvent();
      btn.addEvent();
      removeEventListener(Event.ADDED_TO_STAGE, init);
      }
		}

    public function onZoom(scale=2){
      line.scaleX = scale;
    }
	}
}
