package  src.view{
  import flash.geom.*;
  import flash.display.*;
  import flash.events.*;
  import src.*;
  import src.view.container.*;
  import src.view.ui.*;

  public class Ui extends Sprite{
    //private var btn:Btn;
    private var pen:Pen;
    private var palet:Palet;
    private var glass:Glass;
    private var eraser:Eraser;

    public function Ui() {
      graphics.drawRect(0, 0, 107, 611);
      x = 0;
      y = 235;
      pen = new Pen();
      palet = new Palet();
      glass = new Glass();
      eraser = new Eraser();

      addChild(pen);
      addChild(palet);
      addChild(glass);
      addChild(eraser);
    }

    public function setColor(value:uint):void{
      var colorTransform:ColorTransform = new ColorTransform;
      colorTransform.color = value;
      palet.transform.colorTransform = colorTransform;
      pen.transform.colorTransform = colorTransform;
    }
  }
}
