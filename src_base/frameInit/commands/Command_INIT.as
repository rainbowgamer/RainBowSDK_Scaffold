package frameInit.commands
{
	import R2Event.Robert2CommandEvent;
	
	import gameapi.statics.Static_Event;
	
	import gamelegs.ContextView;
	
	import modules.Model_GameData;
	
	
	public class Command_INIT extends CommandExtendBase
	{
		public function Command_INIT(e:Robert2CommandEvent)
		{
			super(e);
		}
		
		[Inject]
		public var inj_ContextView:ContextView;
		
		[Inject]
		public var inj_Model_GameData:Model_GameData
		
		
		
		
		
		
		
		override public function execute():void
		{
			// TODO Auto Generated method stub
			super.execute();
			
			trace("Command_INIT execute:"+evetype)
			
//			trace(evetype,evedata)
			
			
			
			if(evetype==Static_Event.EVENT_DATA_INIT){
				
				
				
				
				var ve:Robert2CommandEvent=new Robert2CommandEvent(Static_Event.EVENT_VIEWMODULE_INIT);
				
				dispatchCommandEvent(ve);
			
			}
			else{
				
					doDataINIT();
				
				
			}
			
			
			
			
			
			
		}
		
		private function doDataINIT():void
		{
			// TODO Auto Generated method stub
			var te:Robert2CommandEvent=new Robert2CommandEvent(Static_Event.EVENT_DATAMODULE_INIT);
			
			dispatchCommandEvent(te);
		}		
		
		
	}
}