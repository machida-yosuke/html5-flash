package  src.view.ui{
  import flash.display.*;
  import flash.net.*;
  import flash.events.*;
  import src.*;
  import src.view.ui.*;

  public class Glass extends Sprite{
    public function Glass() {
      graphics.drawRect(0, 0, 54, 54);
      var path = 'img/glass.png';
      var urlReq:URLRequest=new URLRequest(path);
      var ld:Loader = new Loader();
      ld.load(urlReq);
      x=20;
      y=310;;
      addChild(ld);
      addEventListener(MouseEvent.MOUSE_DOWN, useEraser);
      function useEraser(events:MouseEvent):void{
        Manager.flag = 'Zoom';
      }
    }
  }
}
