package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	import application.context.Context_GameConfig;
	
	import gamelegs.Context;
	import gamelegs.ContextView;
	import gamelegs.GameLegs;
	import gamelegs.LogLevel;
	import gamelegs.Modules.MVCSBundle;

	[SWF(frameRate="60",width="100%", height="100%",backgroundColor = "0")]
	public class Mob_RainBowDemo0 extends Sprite
	{
		public function Mob_RainBowDemo0()
		{
			super();
			initstage();
		}
		
		private function initstage():void
		{
			// TODO Auto Generated method stub
			initContext();  
			 
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
		}
		
		
		private var _context:Context;
		
		private function initContext():void
		{
			// TODO Auto Generated method stub
			
			_context=new Context()
			GameLegs.context=_context;
			GameLegs.evedisp=_context;
			GameLegs.init();
			
			
			_context.install(MVCSBundle)
				.configure(new ContextView(this))
				.configure(Context_GameConfig);
			_context.logLevel=LogLevel.ERROR
			
		}
		
	}
}