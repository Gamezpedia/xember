package pong
{
	import pong.game.Tick;
	import pong.game.ctrl.BootstrapGameCommand;
	import pong.game.ctrl.SetupGameCommand;
	import pong.score.ctrl.BootstrapScoreCommand;
	import pong.score.ctrl.CreateScoreCommand;

	import org.robotlegs.mvcs.Context;

	import flash.display.DisplayObjectContainer;

	public class PongContext extends Context
	{
		public function PongContext(contextView:DisplayObjectContainer)
		{
			super(contextView, true);
		}
		
		override public function startup():void
		{
			injector.mapSingleton(Tick);
			
			commandMap.execute(BootstrapGameCommand);
			commandMap.execute(BootstrapScoreCommand);
			
			commandMap.execute(CreateScoreCommand);
			commandMap.execute(SetupGameCommand);
		}
		
	}
}
