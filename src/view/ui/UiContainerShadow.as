package  src.view.ui{
  import flash.display.*;
  import flash.net.*;
  import flash.events.*;
  import src.*;
  import src.view.ui.*;
  public class UiContainerShadow extends Sprite{
    public function UiContainerShadow() {
      graphics.drawRect(0, 0, 107, 611);
      var path = 'img/uiShadow.png';
      var urlReq:URLRequest=new URLRequest(path);
      var ld:Loader = new Loader();
      ld.load(urlReq);
      y = -18;
      addChild(ld);
    }
	}
}
