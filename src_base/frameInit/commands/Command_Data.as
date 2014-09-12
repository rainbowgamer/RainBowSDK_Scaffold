package frameInit.commands
{
	import R2Event.Robert2CommandEvent;
	
	import gameapi.statics.Static_Event;
	import gameapi.statics.Static_FrameType;
	
	import gamelegs.ContextView;
	
	import modules.Model_GameData;
	
	
	public class Command_Data extends CommandExtendBase
	{
		public function Command_Data(e:Robert2CommandEvent)
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
			
//			trace("Command_GameRun execute type= '",evetype+"'")
			
			if(evetype==Static_Event.EVENT_DATAMODULE_INIT){
				
				var progfun:Function=function(index:int,total:int):void{
				
					var per:Number=index/total;
					
//					trace("progress:",index+"/"+total,per);
					
					
					var pe:Robert2CommandEvent=new Robert2CommandEvent(Static_Event.EVENT_VIEW_UPDATE,[Static_FrameType.VIEW_LOADINGCHANGE,per]);
					
					
					dispatchCommandEvent(pe);
					
					
					
					
				}
				
				
				
				
				inj_Model_GameData.initModel();
				
			}
			else if(evetype==Static_Event.EVENT_GAME_RESET){
			
				
//				inj_Model_GameData.resetGame();
			}
			else if(evetype==Static_Event.EVENT_DATA_INIT){
			
//				inj_Model_GameData.startTimer();
				
			}
			
			
			
			
		}
		
		
		
	}
}