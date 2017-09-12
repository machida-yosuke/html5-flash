package  src.view.ui{
  import flash.display.*;
  import flash.net.*;
  import flash.events.*;
  import src.*;
  import src.view.ui.*;
  public class UiContainershadow extends Sprite{
    public function UiContainershadow() {
      graphics.drawRect(0, 0, 107, 611);
      var path = 'img/uiShadow.png';
      var urlReq:URLRequest=new URLRequest(path);
      var ld:Loader = new Loader();
      ld.load(urlReq);

      addChild(ld);
    }
	}
}
