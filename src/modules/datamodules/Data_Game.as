package modules.datamodules
{
	import modules.Model_BaseData;
	import modules.dataParts.DataGame;

	public class Data_Game extends DataGame
	{
		
		public function Data_Game(model:Model_BaseData)
		{
			super(model);
			
			loadingObjay=[];
		}
		
		
		/**
		 *加载事件池 
		 */		
		public var loadingObjay:Array
		
		private var lastloadingobj:Object;
		
		public function resetLoadingObj():void{
			
			loadingObjay=[];
		}
		
		/**
		 *增加一个加载侦标签 
		 * @param loadobj
		 * 
		 */		
		public function addLoadinObj(loadobj:Object):void
		{
			// TODO Auto Generated method stub
			
			if(lastloadingobj&&loadobj.loadingper!=1&&loadobj.loadingper-lastloadingobj.loadingper<0.1){
				//			trace("skip addLoadinObj:",loadobj.loadingper,lastloadingobj.loadingper)
				if(lastloadingobj.loadingper==1){
					lastloadingobj=null;
				}
				
				return 
			}else{
				lastloadingobj=loadobj;
			}
			loadingObjay.push(loadobj);
			
		}
		
		private var all_types:Array=[
//			Static_Type.VIEW_SMALLGAME_PINGTU,
			
		];
		/**
		 *当前游戏id 大或小游戏 
		 */		
		public var currentgameid:String;
		
		
		/**
		 *从小游戏id找到小游戏UI 
		 * @param gameid
		 * @return 
		 * 
		 */		
		public function getSmallgameUI(gameid:String):String{
			var index:int=0;
			var gameuiid:String=all_types[index];
			return gameuiid;
		}
		
	}
}