package pong
{
	import flash.display.Sprite;

	[SWF(backgroundColor="#FFFFFF", frameRate="60", width="800", height="600")]
	public class PongMain extends Sprite
	{
		private var context:PongContext;
		
		public function PongMain()
		{
//			haxe.init(this);
			
			context = new PongContext(this);
			
//			addChild(new Stats());
		}
		
	}
}
