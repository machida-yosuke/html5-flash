package  src{
  import flash.display.*;
  import flash.events.*;
  import src.view.*;
  import flash.utils.*;

  public class Main extends Sprite{
    private var container:Container;
    private var ui:Ui;
    private var uiAsideMc:MovieClip;
    private var fiveMc:MovieClip;
    private var fiveCnt;
    private var fiveFrameArr = ["five-simple", "five-zatsu", "silverlight"];
    public function Main() {
      if (stage) this.init();
      else addEventListener(Event.ADDED_TO_STAGE, init);
    }

    private function init(event:Event = null):void {
      stage.align = StageAlign.TOP_LEFT;
      container = new Container();
      ui = new Ui();

      fiveMc = new FiveMc;
      fiveMc.x = 1000;
      fiveMc.y = 600;

      fiveCnt = 0;

      uiAsideMc = new UiAsideMc;
      uiAsideMc.scaleX = 0.75;
      uiAsideMc.scaleY = 0.75;
      uiAsideMc.x = 1800;
      uiAsideMc.y = 200;
      uiAsideMc.btn_html5.addEventListener(MouseEvent.CLICK, this.html5Hander);

      Manager.initContainer(container);
      Manager.initUi(ui);
      
      addChild(container);
      addChild(ui);
      addChild(uiAsideMc);
      addChild(fiveMc);
      removeEventListener(Event.ADDED_TO_STAGE, init);
    }

    private function html5Hander(event:Event = null) {
      var len = fiveFrameArr.length;
      var fiveFrame = fiveFrameArr[fiveCnt % len];
      fiveMc.gotoAndPlay(fiveFrame);

      fiveCnt++;
    }
  }
}
