package ca.studio236.GameJam
{
	import org.flixel.FlxText;
	
	public class MultiBlast extends FlxText
	{
		private var i;
		
		public function MultiBlast(e:Enemy,s:Scoreboard)
		{
			i = e.pointValue;
			var m = s.multiplier - 1;
			if(m>1){
				var n =  "x" + m.toString();
			}
			super(e.x, e.y, 100, n);
		}
		
		override public function update():void {
			
			this.y--;
			this.angle--;
			this.alpha -= 1.0/(i/20);
			
			if(this._alpha < 0)
				this.destroy();
			
		}
	}
}