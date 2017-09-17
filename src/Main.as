package  src{
  import flash.display.*;
  import flash.events.*;
  import src.view.*;
  import flash.utils.*;

  public class Main extends Sprite{
    private var container:Container;
    private var ui:Ui;
    public function Main() {
      if (stage) init();
      else addEventListener(Event.ADDED_TO_STAGE, init);

      function init(event:Event = null):void {
        stage.align = StageAlign.TOP_LEFT;
        container = new Container();
        ui = new Ui();
        var uiAsideMc:MovieClip = new UiAsideMc;

        Manager.initContainer(container);
        Manager.initUi(ui);
        
        addChild(container);
        addChild(ui);
        addChild(uiAsideMc);
        removeEventListener(Event.ADDED_TO_STAGE, init);
      }
		}
	}
}
