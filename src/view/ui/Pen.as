package  src.view.ui{
  import flash.geom.*;
  import flash.display.*;
  import flash.net.*;
  import flash.events.*;
  import src.*;
  import src.view.ui.*;

  public class Pen extends Sprite{
    public function Pen() {
      graphics.drawRect(0, 0, 54, 55);
      var path = 'img/black-pen.png';
      var urlReq:URLRequest=new URLRequest(path);
      var ld:Loader = new Loader();
      ld.load(urlReq);
      x=20;
      y=80;
      addChild(ld);
      addEventListener(MouseEvent.MOUSE_DOWN, useEraser);
      function useEraser(events:MouseEvent):void{
        Manager.flag = 'Line';
      }
    }
	}
}
