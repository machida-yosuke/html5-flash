package  src.view.container{
  import flash.display.Sprite;
  import flash.events.*;
  import src.Manager;
  import src.view.container.*;

  public class Line extends Sprite{
    public function Line() {
      graphics.beginFill(0x000000, 0);
      graphics.drawRect(0, 0, 1000, 952);
    }
    public function addEvent():void {
      // constructor code
      addEventListener(MouseEvent.MOUSE_DOWN, downMouseLine);

      //文字を書く
      function downMouseLine(events:MouseEvent):void{
        if(Manager.flag == 'Line'){
          graphics.lineStyle(Manager.lineBold, Manager.colorPalet[Manager.colorNum])
        }else if(Manager.flag == 'Eraser'){
          graphics.lineStyle(Manager.eraserBold, 0xffffff);
        }else if (Manager.flag == 'Zoom') {
          if(Manager.flagZoomIn){
            Manager.zoomX = events.localX;
            Manager.zoomY = events.localY;
            trace(Manager.zoomX);
            trace(Manager.zoomY);
            Manager.originalX = 460;
            Manager.originalY = 30;

            Manager.zoom(2, - Manager.zoomX - Manager.originalX, - Manager.zoomY - Manager.originalY);
            Manager.flagZoomIn = false;
            return;
          }else{
            Manager.zoom(1, 0, 0);
            Manager.flagZoomIn = true;
            return;
          }
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

          if(events.localY > 952){
            events.localY = 952;
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
