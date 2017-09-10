package  src.view{
  import flash.display.Sprite;
  import flash.events.*;
  import src.Main;
  import src.view.*;

  public class Line extends Sprite{
    public function Line() {
      graphics.beginFill(0xFBF6FC);
      graphics.drawRect(0, 0, 1000, 1000);
    }
    public function addEvent():void {
      // constructor code
      addEventListener(MouseEvent.MOUSE_DOWN, downMouseLine);

      //文字を書く
      function downMouseLine(events:MouseEvent):void{

        if(Main.flagLine){
          graphics.lineStyle(Main.lineBold, 0x000000)
        }else{
          graphics.lineStyle(Main.lineBold, 0xffffff);
        }

        graphics.moveTo(events.localX,events.localY);
        addEventListener(MouseEvent.MOUSE_MOVE, drawLine);
        addEventListener(MouseEvent.MOUSE_UP, drawLineEnd);

        function drawLine(events:MouseEvent):void{
          if(events.localX > 1000){
            events.localX = 1000;
          }

          if(events.localX < 0){
            events.localX = 0;
          }

          if(events.localY > 1000){
            events.localY = 1000;
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
