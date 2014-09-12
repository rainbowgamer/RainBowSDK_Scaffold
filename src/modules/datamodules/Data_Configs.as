package modules.datamodules
{
	import gameapi.configs.GameConfig_UIlist;
	import gameapi.configs.GameConfig_UItext;
	import gameapi.statics.Static_FrameType;
	
	import modules.Model_BaseData;
	import modules.dataParts.DataConfig;

	public class Data_Configs extends DataConfig
	{
		public function Data_Configs(model:Model_BaseData)
		{
			
			super(model);
			initConfigs();
			
		}
		
		
		private function initConfigs():void
		{
			// TODO Auto Generated method stub
//			data_GameConfig_Level=new GameConfig_Level();
//			data_GameConfig_SmallGame=new GameConfig_SmallGame();
//			data_GameConfig_SmallGameAward=new GameConfig_SmallGameAward();
//			data_GameConfig_Sound=new GameConfig_Sound();
//			data_GameConfig_SmallGameLevel=new GameConfig_SmallGameLevel();
			
			
			
			data_GameConfig_UIlist=new GameConfig_UIlist();
			
			
			data_GameConfig_UItext=new GameConfig_UItext();
			
			
			
//			data_GameConfig_SmallGameMonster=new GameConfig_SmallGameMonster();
			
			
			initFackData();
			
		}
		
	
		
	
		
		/**
		 *UIlist配置表 
		 */		
		public var data_GameConfig_UIlist:GameConfig_UIlist;
		
		/**
		 *UItext配置表 
		 */		
		public var data_GameConfig_UItext:GameConfig_UItext;
		

		
		
		
		/**
		 *场景资源包 
		 */		
		private var gamescenconfig:Object;
		
		
		/**
		 *场景资源包对应表 
		 * 
		 */	
		public function getgamescenconfig():Object
		{
			// TODO Auto Generated method stub
			if(gamescenconfig==null){
				gamescenconfig={};
				gamescenconfig[Static_FrameType.SWFPACK_UILOADING]=[Static_FrameType.VIEW_UILOADING];
				gamescenconfig[Static_FrameType.SWFPACK_UILOGGER]=[Static_FrameType.VIEW_UILOGGER];
//				gamescenconfig[Static_FrameType.SWFPACK_UIFLASH]=[Static_FrameType.VIEW_UIFLASH];
				
				gamescenconfig[""]=[
				
				
				];
			}
			
			return gamescenconfig;
		}
		
		
		
		
		
		
		/**
		 *状扮类型 
		 */		
		private var pool_decoratetype:Object;
		
		
		
		/**
		 *假的背包数据 
		 */		
		public var fack_package:Array;
		
		
		private function initFackData():void
		{
			// TODO Auto Generated method stub
			fack_package=[
				[10010,10],[10010,6],[10020,1]
			];
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		public function getpool_decoratetype():Object
		{
			// TODO Auto Generated method stub
			if(pool_decoratetype==null){
				pool_decoratetype={};
			}
			
			return pool_decoratetype;
		}
	}
}