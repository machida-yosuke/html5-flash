package src {
  import flash.display.*;
  import flash.utils.*;

  import src.*;
  import src.view.*;
  import src.view.container.*;

  import caurina.transitions.Tweener;
  import flash.events.*;
  public class Manager {
    public static var flag:String = 'Line';
    public static var flagZoomIn:Boolean = true;

    public static var zoomX:int;
    public static var zoomY:int;

    public static var originalY:int;
    public static var originalX:int;

    public static var colorNum:int = 0;
    public static var colorPalet:Array = ['0x4b4b4b', '0xef5454' ,'0x56ed63', '0xe7d45a', '0x5f5ee1', '0x5ae5e5'];
    public static var lineBold:int = 1;
    public static var eraserBold:int = 8;

    private static var container:MovieClip;
    private static var _ui:Ui;

    public static function initContainer(containerMc:MovieClip) {
      container = containerMc;
      var mc = containerMc.appMc;

      var line:Line;

      mc.graphics.beginFill(0x000000, 0);
      mc.graphics.drawRect(0, 0, 1054, 1054);
      line = new Line();
      mc.addChild(line);
      line.addEvent();
    }

    public static function initUi(ui:Ui) {
      _ui = ui;
    }

    public static function zoom(scale:int, x:int, y:int):void {
      Tweener.addTween(container, {
        x:x,
        y:y,
        scaleX:scale,
        scaleY:scale,
        time:1,
        transition:'easeOutQuint'
      });
    }

    public static function chageColor(events:MouseEvent):void{
      Manager.colorNum += 1;
      if (Manager.colorNum > 5){
        Manager.colorNum = 0;
      }
      _ui.setColor(colorPalet[colorNum])
    }
  }
}
