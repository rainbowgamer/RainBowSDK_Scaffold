package application.context
{
	import assistants.AlignObject;
	
	import emus.AlignTarget;
	import emus.AlignType;
	
	import gameapi.statics.Static_Config;
	
	import starling.events.Event;
	
	import starlingview.StarlingGameContext;
	
	public class GameStarlingContext extends StarlingGameContext
	{
		public function GameStarlingContext()
		{
			super();
			
			instance=this;
			
			
			
		}
		
		override public function refushAlign():void
		{
			// TODO Auto Generated method stub.
			
			
			alignObject=new AlignObject(this,AlignType.center,AlignTarget.Stage,Static_Config.DESIGNWIDTH*this.scaleX,Static_Config.DESIGNHEIGHT*this.scaleY);
			
			
			super.refushAlign();
		}
		
		
		
		
		
		private function onAddStrling(e:starling.events.Event):void
		{
			// TODO Auto Generated method stub
			/*if(e.target==earthbaby){
				trace("etarg")
			}
			if(e.target==mainsp){
				trace("mainsp")
			}
			trace(e.type,e.target,e.target["name"],e.target["parent"]);*/
		}
		
		
		
		
		
		
		private function onEvent(e:starling.events.Event):void
		{
			// TODO Auto Generated method stub
			/*var oe:flash.events.Event=new flash.events.Event(e.type);
			
			evedisp.dispatchEvent(oe);*/
		}
		
		
		
		
		
		
	}
}