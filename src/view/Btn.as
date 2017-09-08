package  src.view{
  import flash.display.Sprite;
  import flash.events.*;
  import src.*;
  import src.view.*;


  public class Btn extends Sprite{
    var eraserBtn:Sprite = new Sprite();
    var lineBtn:Sprite = new Sprite();
    var boldBtn:Sprite = new Sprite();
    var zoomBtn:Sprite = new Sprite();

    public function Btn() {
      addChild(eraserBtn);
      addChild(lineBtn);
      addChild(boldBtn);
      addChild(zoomBtn);
		}
    public function addEvent():void{
      // constructor code
      eraserBtn.graphics.beginFill(0x09EF4A);
      eraserBtn.graphics.drawRect(30, 30, 50, 50);

      lineBtn.graphics.beginFill(0xD23718);
      lineBtn.graphics.drawRect(110, 30, 50, 50);

      boldBtn.graphics.beginFill(0x45393f);
      boldBtn.graphics.drawRect(190, 30, 50, 50);

      zoomBtn.graphics.beginFill(0x387012);
      zoomBtn.graphics.drawRect(270, 30, 50, 50);

      //btnタッチイベン
      eraserBtn.addEventListener(MouseEvent.MOUSE_DOWN, drawEraserPossible);
      lineBtn.addEventListener(MouseEvent.MOUSE_DOWN, drawLinePossible);
      boldBtn.addEventListener(MouseEvent.MOUSE_DOWN, makeThick);
      zoomBtn.addEventListener(MouseEvent.MOUSE_DOWN, zoomIn);


      function ZoomIn(events:MouseEvent):void{
        Manager.zoom();
        removeEventListener(MouseEvent.MOUSE_DOWN, ZoomIn);
      }
      function makeThick(events:MouseEvent):void{
        Main.lineBold += 1;
        removeEventListener(MouseEvent.MOUSE_DOWN, makeThick);
      }

      function drawLinePossible(events:MouseEvent):void{
        Main.flagLine = true;
        removeEventListener(MouseEvent.MOUSE_DOWN, drawLinePossible)
      }

      function drawEraserPossible(events:MouseEvent):void{
        Main.flagLine = false;
        removeEventListener(MouseEvent.MOUSE_DOWN, drawEraserPossible)
      }
    }
	}
}
