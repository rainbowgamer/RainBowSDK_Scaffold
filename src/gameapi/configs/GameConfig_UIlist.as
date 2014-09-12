package gameapi.configs
	{
	import rainbow.gamemaker.GameDataBase;
	
	public class GameConfig_UIlist extends GameDataBase
		{
		public function GameConfig_UIlist()
		{
			super();
			
			initData(dataObjects)
		}
		
		public static var dataObjects:Object=
		
			{"tasklist":["任务列表",0,0,510,430,15,0,"","",["index","mc_renwtxt"],["VerticalLayout",15],["off","on"],["id_text","name_text","value_text","price_text","price2_text","time_text","icon_frame"]],
			"shopitemlist":["商城道具列表",0,0,690,336,0,0,"","",["index","mc_djsc"],["HorizontalLayout",-10],["off","on"],["id_text","name_text","value_text","price_text","price2_text","time_text","icon_frame"]],
			"potionlist":["药水列表",0,2,276,88,15,0,"","",["index","mc_positem"],["HorizontalLayout",-10],["off","off"],["id_text","name_text","value_text","price_text","price2_text","time_text","icon_frame"]],
			"packageitemlist":["背包道具列表",0,0,780,364,0,0,"","",["index","mc_shopitem"],["TiledRowsLayout",5],["off","on"],["id_text","name_text","value_text","price_text","price2_text","time_text","icon_frame"]],
			"shopgoldlist":["商城金币列表",0,0,690,336,0,0,"","",["index","mc_jinbigoumaiquanbusucai"],["HorizontalLayout",-10],["off","on"],["id_text","name_text","value_text","price_text","price2_text","time_text","icon_frame"]],
			"decebglist":["装扮背景购买界面",0,0,810,520,0,0,"","",["index","mc_gm"],["TiledRowsLayout",0],["off","off"],["id_text","name_text","value_text","price_text","price2_text","time_text","icon_frame"]],
			"packagedecolist":["背包装饰列表",0,0,184,313,0,0,"","",["index","mc_zblk"],["VerticalLayout",15],["off","on"],["id_text","name_text","value_text","price_text","price2_text","time_text","icon_frame"]],
			"shopdemondlist":["商城钻石列表",0,0,690,336,0,0,"","",["index","mc_zhuangsgmquanbsuc"],["HorizontalLayout",-10],["off","on"],["id_text","name_text","value_text","price_text","price2_text","time_text","icon_frame"]],
			"jingnanglist":["锦囊列表",0,0,556,420,0,0,"","",["index","mc_jinnlings"],["VerticalLayout",15],["off","on"],["id_text","name_text","value_text","price_text","price2_text","time_text","icon_frame"]]}
			;
		
		
		/**
		*类名id pk,uq
		*/		
		public static var classid:String;

		/**
		*类描述 uq
		*/		
		public static var classname:String;

		/**
		*测试x 
		*/		
		public static var x:int;

		/**
		*测试y 
		*/		
		public static var y:int;

		/**
		*列表部分宽度 
		*/		
		public static var listwidth:int;

		/**
		*列表部分高度 
		*/		
		public static var listheight:int;

		/**
		*列表偏移x 
		*/		
		public static var listx:int;

		/**
		*列表偏移y 
		*/		
		public static var listy:int;

		/**
		*背景资源id 
		*/		
		public static var backgroundtextureid:String;

		/**
		*前景资源id 
		*/		
		public static var foregroundtextureid:String;

		/**
		*子对像属性集 
		*/		
		public static var listitemRendererProperties:Array;

		/**
		*list布局属性集 
		*/		
		public static var listlayout:Array;

		/**
		*滚动条属性集 
		*/		
		public static var listscrollerProperties:Array;

		/**
		*数据字段集 
		*/		
		public static var itemdatafields:Array;
		
		
		/**
		*从(主键)类名id取得 类描述 的值
		*/	
		public function get_classname(classid:String):String{
		
		return getvalue(classid)[0]
		}
			
			

		/**
		*从(主键)类名id取得 测试x 的值
		*/	
		public function get_x(classid:String):int{
		
		return getvalue(classid)[1]
		}
			
			

		/**
		*从(主键)类名id取得 测试y 的值
		*/	
		public function get_y(classid:String):int{
		
		return getvalue(classid)[2]
		}
			
			

		/**
		*从(主键)类名id取得 列表部分宽度 的值
		*/	
		public function get_listwidth(classid:String):int{
		
		return getvalue(classid)[3]
		}
			
			

		/**
		*从(主键)类名id取得 列表部分高度 的值
		*/	
		public function get_listheight(classid:String):int{
		
		return getvalue(classid)[4]
		}
			
			

		/**
		*从(主键)类名id取得 列表偏移x 的值
		*/	
		public function get_listx(classid:String):int{
		
		return getvalue(classid)[5]
		}
			
			

		/**
		*从(主键)类名id取得 列表偏移y 的值
		*/	
		public function get_listy(classid:String):int{
		
		return getvalue(classid)[6]
		}
			
			

		/**
		*从(主键)类名id取得 背景资源id 的值
		*/	
		public function get_backgroundtextureid(classid:String):String{
		
		return getvalue(classid)[7]
		}
			
			

		/**
		*从(主键)类名id取得 前景资源id 的值
		*/	
		public function get_foregroundtextureid(classid:String):String{
		
		return getvalue(classid)[8]
		}
			
			

		/**
		*从(主键)类名id取得 子对像属性集 的值
		*/	
		public function get_listitemRendererProperties(classid:String):Array{
		
		return getvalue(classid)[9]
		}
			
			

		/**
		*从(主键)类名id取得 list布局属性集 的值
		*/	
		public function get_listlayout(classid:String):Array{
		
		return getvalue(classid)[10]
		}
			
			

		/**
		*从(主键)类名id取得 滚动条属性集 的值
		*/	
		public function get_listscrollerProperties(classid:String):Array{
		
		return getvalue(classid)[11]
		}
			
			

		/**
		*从(主键)类名id取得 数据字段集 的值
		*/	
		public function get_itemdatafields(classid:String):Array{
		
		return getvalue(classid)[12]
		}
			
			

		/**
		*从类描述取得 (主键)类名id 的值
		*/	
		public function get_classid_By_classname(classname:String):String{
		
			var key:*=searchkey(classname,0)
			
			return key
		}
			
			
			
		
			
		/**
		* 
		*/	
		public static var KEY_POTIONLIST:String="potionlist";
		

			
		/**
		* 
		*/	
		public static var KEY_TASKLIST:String="tasklist";
		

			
		/**
		* 
		*/	
		public static var KEY_PACKAGEITEMLIST:String="packageitemlist";
		

			
		/**
		* 
		*/	
		public static var KEY_PACKAGEDECOLIST:String="packagedecolist";
		

			
		/**
		* 
		*/	
		public static var KEY_JINGNANGLIST:String="jingnanglist";
		

			
		/**
		* 
		*/	
		public static var KEY_SHOPITEMLIST:String="shopitemlist";
		

			
		/**
		* 
		*/	
		public static var KEY_SHOPGOLDLIST:String="shopgoldlist";
		

			
		/**
		* 
		*/	
		public static var KEY_SHOPDEMONDLIST:String="shopdemondlist";
		

			
		/**
		* 
		*/	
		public static var KEY_DECEBGLIST:String="decebglist";
		
			
		/**
		*keylist  所有主键列表
		*/
		public static var keylist:Array=[KEY_POTIONLIST,KEY_TASKLIST,KEY_PACKAGEITEMLIST,KEY_PACKAGEDECOLIST,KEY_JINGNANGLIST,KEY_SHOPITEMLIST,KEY_SHOPGOLDLIST,KEY_SHOPDEMONDLIST,KEY_DECEBGLIST];
		
		
		
			
		/**
		*fieldlistt  所有字段名列表
		*/
		public static var fieldlist:Array=["classid","classname","x","y","listwidth","listheight","listx","listy","backgroundtextureid","foregroundtextureid","listitemRendererProperties","listlayout","listscrollerProperties","itemdatafields"];
		
			
		
			
		/**
		*fieldlistt  所有字段名列表
		*/
		public static var fieldtypelist:Array=["string","string","int","int","int","int","int","int","string","string","array","array","array","array"];
		
		
		
		
		
		
	}
}
			
