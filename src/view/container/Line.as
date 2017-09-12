package  src.view.container{
  import flash.display.Sprite;
  import flash.events.*;
  import src.Manager;
  import src.view.container.*;

  public class Line extends Sprite{
    public function Line() {
      graphics.beginFill(0xffffff);
      graphics.drawRoundRect(27, 63, 1000, 952, 10, 10);
    }
    public function addEvent():void {
      // constructor code
      addEventListener(MouseEvent.MOUSE_DOWN, downMouseLine);

      //文字を書く
      function downMouseLine(events:MouseEvent):void{

        if(Manager.flagLine){
          graphics.lineStyle(Manager.lineBold, 0x000000)
        }else{
          graphics.lineStyle(Manager.lineBold, 0xffffff);
        }

        graphics.moveTo(events.localX,events.localY);
        addEventListener(MouseEvent.MOUSE_MOVE, drawLine);
        addEventListener(MouseEvent.MOUSE_UP, drawLineEnd);

        function drawLine(events:MouseEvent):void{
          if(events.localX > 1054){
            events.localX = 1054;
          }

          if(events.localX < 0){
            events.localX = 0;
          }

          if(events.localY > 1054){
            events.localY = 1054;
          }

          if(events.localY < 0){
            events.localY = 0;
          }
          graphics.lineTo(events.localX,events.localY);
          graphics.endFill();
        }

        function drawLineEnd(events:MouseEvent):void{
          graphics.endFill();
          removeEventListener(MouseEvent.MOUSE_MOVE, drawLine);
          removeEventListener(MouseEvent.MOUSE_UP, drawLineEnd);
        }
      }
    }
	}
}
