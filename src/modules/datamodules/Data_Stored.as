package modules.datamodules
{
	import flash.net.SharedObject;
	
	import modules.Model_BaseData;
	import modules.dataParts.DataStore;

	public class Data_Stored extends DataStore
	{
		public function Data_Stored(model:Model_BaseData,dataprotocolver:String)
		{
			super(model);
			initShared(dataprotocolver);
		}
		
		/**
		 *本地存储对像 
		 */		
		private var localSho:SharedObject;
		
		
		
		
		private function initShared(shoid:String):void
		{
			// TODO Auto Generated method stub
			localSho=SharedObject.getLocal(shoid,"/",false);
			
			data_package=getData("data_package",[])
			data_gold=getData("data_gold",0)
			data_demond=getData("data_demond",0)
//			data_gamepoint=getData("data_demond",0)
			
		}		
		
		
		/**
		 *玩家背包数组 
		 */		
		public var data_package:Array;
		/**
		 *玩家金币 
		 */		
		public var data_gold:int;
		
		/**
		 *玩家钻石 
		 */		
		public var data_demond:int;
		
	
		
		/**
		 *保存数据 
		 * 
		 */		
		public function saveData():void{
		
			var savedatas:Array=["data_package","data_gold","data_demond"];
			
			for (var i:int = 0; i < savedatas.length; i++) 
			{
				var datakey:String=savedatas[i];
				
				localSho.data[datakey]=this[datakey]
				
			}
			
			localSho.flush();
		
			trace("save shodata")
		}
		
		
		/**
		 *取出数据值,如果为空则更新到默认值 
		 * @param datakey
		 * @param defaultvalue
		 * @return 
		 * 
		 */		
		private function getData(datakey:String,defaultvalue:*):*
		{
			// TODO Auto Generated method stub
			var datavalue:*=localSho.data[datakey];
			
			if(datavalue==null){
			
				datavalue=defaultvalue;
				
				localSho.data[datakey]=datavalue;
			}
			
			return datavalue;
		}
		
	}
}