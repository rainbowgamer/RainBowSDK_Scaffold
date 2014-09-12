package commands
{
	import R2Command.extendFrame.Command_BaseView;
	
	import R2Event.Robert2CommandEvent;
	
	import application.context.GameStarlingContext;
	
	import gameapi.statics.Static_Config;
	import gameapi.statics.Static_Event;
	import gameapi.statics.Static_FrameType;
	
	import modules.Model_BaseData;
	import modules.Model_GameData;
	
	public class Command_ExtendView extends Command_BaseView
	{
		public function Command_ExtendView(e:Robert2CommandEvent)
		{
			super(e);
			
			
		}
		
		
		[Inject]
		public var inj_Model_GameData:Model_GameData
		
		
		
		
		
		
		
		override public function execute():void
		{
			
			model_DataBase=inj_Model_GameData as Model_BaseData;
			
			super.execute();
			
			var backevent:Robert2CommandEvent;
			var childtype:String;
			if(evedata){
				childtype=evedata[0];
			}
			else{
				childtype=""
			}
			
//			trace("======================	Command_ExtendView evetype:"+evetype+" ,childtype:"+childtype,"=====================")
			
			 if(evetype==Static_Event.EVENT_VIEW_UPDATE){
				
				childtype=evedata[0];
				var scenid:String;
				
				//场景初始化完成
				 
				
			}
			 else if(evetype==Static_Event.EVENT_SCEN_CHANGE){
				 
				 var scenevetype:String=evedata[0];
				 
				 
			 }
		}
		
			
		
		
		
		override protected function do_Override_Preloading_Complete():void
		{
			
//			command_switchToScen(MyGameDef_type.Scen_FootBall_Start);
//			command_switchToScen(MyGameDef_type.Scen_FootBall_Login);
			
		}
		
		override public function do_Override_InitView(evedata:Array):void
		{
			// TODO Auto Generated method stub
			
			Static_FrameType.VIEW_COMPLOADJINDUTPLAY="loadjindutplay";
			
			Static_Config.DESIGNWIDTH=640;
			
			Static_Config.DESIGNHEIGHT=960;
			
			
			doInitStarling(GameStarlingContext);//
			
			
		}
		
		
		
		
		
		
		
		
		
	}
}