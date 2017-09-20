package  src.view.ui{
  import flash.display.Sprite;
  import flash.events.*;
  import src.*;
  import src.view.ui.*;

  public class Btn extends Sprite{
    var eraserBtn:Sprite = new Sprite();
    var lineBtn:Sprite = new Sprite();
    var colorBtn:Sprite = new Sprite();
    var zoomBtn:Sprite = new Sprite();

    public function Btn() {
      addChild(lineBtn);
      addChild(colorBtn);
      addChild(eraserBtn);
      addChild(zoomBtn);
    }

    public function drawGraphics():void{
      eraserBtn.graphics.beginFill(0x09EF4A);
      eraserBtn.graphics.drawRect(30, 30, 50, 50);

      lineBtn.graphics.beginFill(0xD23718);
      lineBtn.graphics.drawRect(110, 30, 50, 50);

      colorBtn.graphics.beginFill(0x45393f);
      colorBtn.graphics.drawRect(190, 30, 50, 50);

      zoomBtn.graphics.beginFill(0x387012);
      zoomBtn.graphics.drawRect(270, 30, 50, 50);
    }

    public function touchRightUiEvent():void{
      //btnタッチイベン
      eraserBtn.addEventListener(MouseEvent.MOUSE_DOWN, drawEraserPossible);
      lineBtn.addEventListener(MouseEvent.MOUSE_DOWN, drawLinePossible);
      colorBtn.addEventListener(MouseEvent.MOUSE_DOWN, selectColor);
      zoomBtn.addEventListener(MouseEvent.MOUSE_DOWN, zoomIn);

      function zoomIn(events:MouseEvent):void{
        Manager.zoom();
        removeEventListener(MouseEvent.MOUSE_DOWN, zoomIn);
      }
      function selectColor(events:MouseEvent):void{

        removeEventListener(MouseEvent.MOUSE_DOWN, selectColor);
      }

      function drawLinePossible(events:MouseEvent):void{
        Manager.flagLine = true;
        removeEventListener(MouseEvent.MOUSE_DOWN, drawLinePossible)
      }

      function drawEraserPossible(events:MouseEvent):void{
        Manager.flagLine = false;
        removeEventListener(MouseEvent.MOUSE_DOWN, drawEraserPossible)
      }
    }
  }
}
