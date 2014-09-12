package frameInit.commands
{
	import R2Event.Robert2CommandEvent;
	
	import gameapi.statics.Static_Event;
	
	import gamelegs.ContextView;
	
	import modules.Model_GameData;
	
	import services.base.ServiceGameLegsBase;
	
	public class Command_Communication extends CommandExtendBase
	{
		public function Command_Communication(e:Robert2CommandEvent)
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
			
			if(evetype==Static_Event.EVENT_COMMU_INIT){
				
			}
			else if(evetype==Static_Event.EVENT_COMMU_SERVER2CLIENT){	//转发
				
				
			}
			else if(evetype==Static_Event.EVENT_COMMU_CLIENT2SERVER){
				
				
				var serversay:Array=inj_Model_GameData.getServersAy();
				
				
				var request_type:String=evedata[0];
				
				var reqfunname:String=request_type.replace("gameprotocol_","request_");
				
				if(reqfunname.indexOf("request_")==-1){
					reqfunname="request_"+reqfunname;
				}
				
				for (var i:int = 0; i < serversay.length; i++) 
				{
					var service:ServiceGameLegsBase=serversay[i];
					
					if(service.hasOwnProperty(reqfunname)){
						service[reqfunname](request_type,evedata);
						return;
					}
					
				}
				
				
				
				
				throw new Error("请求不存在的API:"+reqfunname+"type:"+request_type+" arg:"+evedata);
				
				
				
				
			}
			else if(evetype==Static_Event.EVENT_COMMU_CLIENT2SERVER){
				
				
			}
			
			
			
			
		}
		
		
		
		
		
	}
}

