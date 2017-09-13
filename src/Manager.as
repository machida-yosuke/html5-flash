package src {
  import flash.utils.*;
  import src.view.*;
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

    private static var _container:Container;
    private static var _ui:Ui;

		public static function initContainer(container:Container) {
      _container = container;
		}

    public static function initUi(ui:Ui) {
      _ui = ui;
		}

    public static function zoom(scale:int, x:int, y:int):void {
      Tweener.addTween(_container, {
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
