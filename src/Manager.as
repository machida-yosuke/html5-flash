package src {
  import flash.utils.*;
  import src.view.*;
  import caurina.transitions.Tweener;

	public class Manager {

    private static var _line:Line;

		public static function init(line:Line) {
      _line = line;
		}

    public static function zoom(scale:int = 2):void {
      Tweener.addTween(_line,{
        scaleX:scale,
        time:3,
        transition:'easeOutQuint'
      });
    }

	}

}
