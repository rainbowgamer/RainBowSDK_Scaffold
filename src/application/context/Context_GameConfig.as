package  application.context
{
	import flash.utils.setTimeout;
	
	import R2Event.Robert2CommandEvent;
	
	import commands.Command_ExtendView;
	
	import frameInit.commands.Command_Communication;
	import frameInit.commands.Command_Data;
	import frameInit.commands.Command_INIT;
	
	import frameManager.View_GameViewManager;
	
	import gameapi.statics.Static_Config;
	import gameapi.statics.Static_Event;
	import gameapi.statics.Static_FrameType;
	
	import gamelegs.GameLegsConfig;
	
	import mediators.starling.comps.Med_mc_loadjindutplay;
	import mediators.starling.comps.Med_mc_loggger;
	import mediators.starling.layers.Med_GameLayerBackGround;
	import mediators.starling.layers.Med_GameLayerTop;
	import mediators.starling.scens.Med_Scen_FootballUIloading;
	
	import modules.Model_GameData;
	
	import services.Service_GameControler;
	import services.Service_Sounds;
	import services.Service_SystemEvent;
	
	import starlingview.StarlingGameLegsSpriteBase;
	
	import viewsStarling.base.SwfUIBaseForGameLegs;
	import viewsStarling.base.SwfUIScenBaseForGameLegs;
	
	
	public class Context_GameConfig extends GameLegsConfig
	{
		public function Context_GameConfig()
		{
			super();
			 
			
		}
		
		override public function configure():void
		{
			// TODO Auto Generated method stub
			super.configure();
			
			trace("Context_Config ver:",Static_Config.MAINVERSION,"Build:",Static_Config.BUILD);
			
			sameviewobj={};
			
			doInject();
			doMediator();
			doCommand();
			
			
			context.afterInitializing(initcomp);
			
		}
		
	
		
		/**
		 *默认会在100毫秒后开始进入游戏  发送 Start事件
		 * 
		 */		
		protected function initcomp():void
		{
			// TODO Auto Generated method stub
			
			
			
			setTimeout(function():void {
				dispatcher.dispatchEvent(new Robert2CommandEvent("GameLegsInited"));
			}, 100);
			
		}
		
		
		
		
		protected function doCommand():void
		{
			// TODO Auto Generated method stub
			
			map_Command("GameLegsInited",Command_INIT);
			
			map_Command(Static_Event.EVENT_DATA_INIT,Command_INIT);
			
			
			map_Command(Static_Event.EVENT_LZM_SWF_LOAD,Command_ExtendView);
			map_Command(Static_Event.EVENT_RESOURCE,Command_ExtendView);
			map_Command(Static_Event.EVENT_VIEWMODULE_INIT,Command_ExtendView);
			map_Command(Static_Event.EVENT_VIEWMODULE_INITED,Command_ExtendView);
			map_Command(Static_Event.EVENT_SCEN_CHANGE,Command_ExtendView);
			map_Command(Static_Event.EVENT_VIEW_UPDATE,Command_ExtendView);
			map_Command(Static_Event.EVENT_SOUNDCHANGE,Command_ExtendView);
			
			map_Command(Static_Event.EVENT_DATA_CHANGE,Command_ExtendView);
			 
			
			map_Command(Static_Event.EVENT_DATAMODULE_INIT,Command_Data);
			
			map_Command(Static_Event.EVENT_COMMU_INIT,Command_Communication);
			map_Command(Static_Event.EVENT_COMMU_CLIENT2SERVER,Command_Communication);
			map_Command(Static_Event.EVENT_COMMU_SERVER2CLIENT,Command_Communication);
			map_Command(Static_Event.EVENT_COMMU_BROADCAST,Command_Communication);
 
			
			map_Command(Static_Event.EVENT_GAME_RESET,Command_Data);
			map_Command(Static_Event.EVENT_DATA_INIT,Command_Data);
			
			
			
			
			
			
			
		}
		
		protected function doMediator():void
		{
			// TODO Auto Generated method stub
			
			
			
			////////////////////////////////////////////////////游戏层次/////////////////////////////////////////////////////////////
			map_Mediator(StarlingGameLegsSpriteBase,Med_GameLayerBackGround,"lay_bg");
			map_Mediator(StarlingGameLegsSpriteBase,Med_GameLayerTop,"lay_topsp");
			 
			
			////////////////////////////////////////////////////游戏场景/////////////////////////////////////////////////////////////
			map_Mediator(SwfUIScenBaseForGameLegs,Med_Scen_FootballUIloading,Static_FrameType.VIEW_UILOADING);
//			map_Mediator(SwfUIScenBaseForGameLegs,Med_ScenUIflash,Static_Type.VIEW_UIFLASH);
			
			
			
			
//			map_Mediator(SwfUIScenBaseForGameLegs,Med_Scen_FootballKeeper,MyGameDef_type.Scen_FootBallKeeper);
//			map_Mediator(SwfUIScenBaseForGameLegs,Med_ScenUISmallGame_PingTu,Static_Type.VIEW_SMALLGAME_PINGTU);
			
			
			////////////////////////////////////////////////////内部元件Mediator/////////////////////////////////////////////////////////////
			Med_mc_loadjindutplay
			
			////////////////////////////////////////////////////////////////////////
			//{datacomp_med_start}

//{datacomp_med_end}
			//////////////////////////////////////////////////////////////////////
			
			//////////////////////////////内部元件自动注册名字///////////////////////////////////////////
			
			var uichildviews_main:Array=[
				 
				//{datacomp_type_start}

//{datacomp_type_end}
			
				[Static_FrameType.VIEW_COMPLOADJINDUTPLAY],
			];
			
			/////////////////////////////////////////////////重用mediator元件////////////////////////////////////////////////////
//			addSameViewid(Static_Type.VIEW_COMPTJSYDXFB,Static_Type.VIEW_COMPTJSYDX)
			
			initSWFUIChild(uichildviews_main);
			
			
			
			/////////////////////////////////////////////////独立组件////////////////////////////////////////////////////

			
			map_Mediator(SwfUIBaseForGameLegs,Med_mc_loggger,[Static_FrameType.VIEW_COMPLOGGER].join("."));
			
//			map_Mediator(SwfUIBaseForGameLegs,Med_Pack_ShangCheng,[Static_Type.VIEW_MC_SHANGCHENG].join("."));
			 
			
			//////////////////////////////////////////////弹窗面版///////////////////////////////////////////////////////
			
			
//			map_Mediator(SwfSprite,Med_mc_beibaoshimidayuanj,[Static_Type.VIEW_MC_BEIBAOSHIMIDAYUANJ].join("."));
			
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			
			
			
		}
		
		override protected function doInject():void
		{
			// TODO Auto Generated method stub
			super.doInject();
			
			map_Inject(Model_GameData,null);
			
			map_Inject(View_GameViewManager,null);
			
			map_Inject(Service_Sounds,null);
			
			map_Inject(Service_GameControler,null);
	
			
			
			map_Inject(Service_SystemEvent,null);
			
		}
		
		
		
		
				
		
		
		
	}
}