package modules.datamodules
{
	import modules.Model_BaseData;
	import modules.Model_GameData;
	import modules.dataParts.DataUtils;

	/**
	 *地球 数据工具转换 
	 * @author zhouhua
	 * 
	 */
	public class Data_Utils extends DataUtils
	{
		
		public function Data_Utils(model:Model_BaseData)
		{
			super(model)
			 
		}
		
		
		/**
		 *得到UI面版的id 如果不在预定议面版中,则直接返回包名
		 * @param scenid
		 * @return 
		 * 
		 */		
		public function getscenresid(scenid:String):String
		{
			// TODO Auto Generated method stub
			
			var gamescenconfig:Object=(model.dataconfigs as Data_Configs).getgamescenconfig();
			
			
			
			
			for  (var sceinpackid:String in gamescenconfig) 
			{
				var packuiay:Array=gamescenconfig[sceinpackid];
				
				if(packuiay.indexOf(scenid)>=0){
					return sceinpackid;
				}
				
			}
			
			return scenid;
		}
		
		
		
	}
}