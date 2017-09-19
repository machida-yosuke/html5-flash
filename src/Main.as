package  src{
  import flash.display.*;
  import flash.events.*;
  import src.view.*;
  import flash.utils.*;

  public class Main extends Sprite {
    private var containerMc:MovieClip;
    private var appMc:MovieClip;
    private var ui:Ui;
    private var uiAsideMc:MovieClip;
    private var fiveMc:MovieClip;
    private var fiveCnt;
    private var fiveFrameArr = ["five-simple", "five-zatsu", "silverlight"];
    public function Main() {
      if (stage) {
        this.init();
      } else {
        addEventListener(Event.ADDED_TO_STAGE, init);
      }
    }

    private function init(event:Event = null):void {
      stage.align = StageAlign.TOP_LEFT;
      // container = new Container();
      ui = new Ui();

      fiveCnt = 0;

      uiAsideMc = new UiAsideMc;
      uiAsideMc.scaleX = 0.75;
      uiAsideMc.scaleY = 0.75;
      uiAsideMc.x = 1800;
      uiAsideMc.y = 200;
      uiAsideMc.html5Btn.addEventListener(MouseEvent.CLICK, this.html5Hander);

      containerMc = mainMc.containerMc;
      appMc = containerMc.appMc;
      fiveMc = appMc.fiveMc;

      Manager.initContainer(containerMc);
      Manager.initUi(ui);

      addChild(ui);
      addChild(uiAsideMc);
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
