package src {
  import flash.utils.*;
  import src.view.*;
  import caurina.transitions.Tweener;

	public class Manager {
    public static var flagLine:Boolean = true;
    public static var lineBold:int = 1;

    private static var _container:Container;

		public static function init(container:Container) {
      _container = container;
		}

    public static function zoom(scale:int = 2):void {
      Tweener.addTween(_container, {
        scaleX:scale,
        scaleY:scale,
        time:2,
        transition:'easeOutQuint'
      });
    }

	}
}
