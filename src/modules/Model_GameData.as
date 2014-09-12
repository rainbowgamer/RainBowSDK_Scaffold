package modules
{
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import frameManager.ResourceManager;
	import frameManager.TimeManager;
	
	import gameapi.statics.Static_Config;
	import gameapi.statics.Static_Event;
	import gameapi.statics.Static_FrameType;
	
	import modules.datamodules.Data_Configs;
	import modules.datamodules.Data_Game;
	import modules.datamodules.Data_Path;
	import modules.datamodules.Data_Statics;
	import modules.datamodules.Data_Stored;
	import modules.datamodules.Data_Utils;

	/**
	 *小游戏的数据model 
	 * @author zhouhua
	 * 
	 */	
	public class Model_GameData extends Model_BaseData
	{
		public function Model_GameData()
		{
			
			
			
		}
		 ////////////////////////////////////////////////////////////////////////////////////////////
		 ////////////////////////////////////////////////////////////////////////////////////////////
				 
		 ////////////////////////////////////////////////////////////////////////////////////////////
		 ////////////////////////////////////////////////////////////////////////////////////////////
		
		/**
		 *服务端的主时间刷新器 
		 */		
		private var gametimer:Timer;
		
		/**
		 *初始化模块 
		 * 
		 */		
		public function initModel():void{
		
			gametimer=new Timer(100);
			gametimer.addEventListener(TimerEvent.TIMER,onGameTimer)
//			gametimer.start();
				
			datastore=new Data_Stored(this,"xxxxx"+Static_Config.LOCALSTOREVERSION);
			
			dataconfigs=new Data_Configs(this);
			 
			datastatics=new Data_Statics();

			datagame=new Data_Game(this);
			
			
			datautils=new Data_Utils(this);
			
			datapath=new Data_Path(this);
			
			
			manTimer=new TimeManager();
			
			manResource=new ResourceManager(this);
			
			dispEvent(Static_Event.EVENT_DATA_INIT);
			
		}
		
		
			
		
		
		
		
		protected function onGameTimer(event:TimerEvent):void
		{
			// TODO Auto-generated method stub
			
			
			
			
		}		
		
		/**
		 *重置回合数据 
		 * 
		 */		
		public function resetRound():void{
		
			
		}
		
		
		/**
		 *重置游戏 
		 * 
		 */		
		public function resetGame():void{
			traceLog("==== 重置游戏 ====")
			var rundata:Object={};
			initGameRun(rundata);
		} 
		
		/**
		 *准备游戏运行数据 
		 * @param rundata
		 * 
		 */		
		protected function initGameRun(rundata:Object):void{
		
			manTimer.reset();
			
//			datagame.setData(rundata);
			
			dispEvent(Static_Event.EVENT_DATA_INIT);
		}
		
		/**
		 *角色状态变化事件通知 
		 * @param datatype
		 * @param datavalue
		 * 
		 */		
		public function gamedataChange(datatype:String,datavalue:*):void{
		
			var dataay:Array=[datatype];
			
			if(datavalue is Array){
				dataay=dataay.concat(datavalue);
			}
			else{
				dataay.push(datavalue);
			}
			
			sendServer2ClientEvent(dataay);
		}
		
		
		/**
		 *发送S2C事件 
		 * @param eventargs
		 * 
		 */		
		public function sendServer2ClientEvent(eventargs:Array):void{
		
			dispEvent(Static_Event.EVENT_COMMU_SERVER2CLIENT,eventargs);
		
		}
		
		
		
		
		protected function traceLog(...arg):void{
			arg.unshift("(Model)")
			trace.apply(null,arg)
				
			var logerstr:String=arg.join("\t")+"\n";
			
			
			dispEvent(Static_Event.EVENT_VIEW_CHANGE,
				[[Static_FrameType.VIEW_UILOGGER,Static_FrameType.VIEW_COMPLOGGER].join("."),logerstr]);
			
				
		}
		
		
		
		 
		
		
		
		/**
		 *计时器启动
		 * 
		 */		
		public function startTimer():void{
		
			traceLog("====	游戏启动	=====")
			
			 
			
		}
		
		
		/**
		 *全局时钟管理器 
		 */		
		public var manTimer:TimeManager;
		
		/**
		 *静态常量表 
		 */		
		public var datastatics:Data_Statics;
		
		
		
		
		
		
		
		

		

		
		
		
		
		
		
		
		
		
		override public function addLoadingObject(type:String, resid:String,loadingper:Number,forceshow:Boolean=true,loadingperfun:Function=null):void
		{
			// TODO Auto Generated method stub
			var loadobj:Object={type:type,resid:resid,loadingper:loadingper,forceshow:forceshow,loadingperfun:loadingperfun};
			
//			traceLog("loading:",type,resid,loadingper,forceshow); 
			
			(datagame as Data_Game).addLoadinObj(loadobj);
			
		}
		
		override public function getServersAy():Array
		{
			// TODO Auto Generated method stub
			var serversay:Array=[
			];
			
			return serversay;
			
			
		}
		
		override public function getscenresid(swfname:String):String
		{
			// TODO Auto Generated method stub
			return (datautils as Data_Utils).getscenresid(swfname);
		}
		
		override public function getPath_UIassets(swfassetid:String):String
		{
			// TODO Auto Generated method stub
			return (datapath as Data_Path).getPath_UIassets(swfassetid);
		}
		
		override public function getPath_BigImages(imgid:String):String
		{
			// TODO Auto Generated method stub
			return (datapath as Data_Path).getPath_BigImages(imgid);
		}
		
		override public function getPath_Sounds(musicid:String):String
		{
			// TODO Auto Generated method stub
			return (datapath as Data_Path).getPath_Sounds(musicid);
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}