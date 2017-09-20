package  src.view.ui{
  import flash.geom.*;
  import flash.display.*;
  import flash.net.*;
  import flash.events.*;
  import src.*;
  import src.view.ui.*;

  public class Palet extends Sprite{
    public function Palet() {
      graphics.drawRect(0, 0, 54, 43);

      var path = 'img/black-palet.png';
      var urlReq:URLRequest=new URLRequest(path);
      var ld:Loader = new Loader();
      ld.load(urlReq);
      x=20;
      y=205;
      addChild(ld);

      addEventListener(MouseEvent.MOUSE_DOWN, Manager.chageColor);
    }
  }
}
