package  src.view{
  import flash.display.*;
  import flash.net.*;
  import flash.events.*;
  import src.*;
  import src.view.container.*;

  public class Container extends Sprite{
    private var line:Line;
    private var background:Background;
    private var header:Header;
    private var prev:Prev;
    private var next:Next;
    private var containershadow:Containershadow;

    public function Container() {
      graphics.drawRect(0, 0, 1054, 1054);
      line = new Line();
      background = new Background();
      header = new Header();
      prev = new Prev();
      next = new Next();
      containershadow = new Containershadow();
      addChild(background);
      addChild(containershadow);
      addChild(line);
      addChild(header);
      addChild(prev);
      addChild(next);
      x=433;
      y=13;
      line.addEvent();
		}
	}
}
