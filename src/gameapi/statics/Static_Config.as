package gameapi.statics
{
	public class Static_Config
	{
		public function Static_Config()
		{
		}
			
		
		/**
		*游戏主版本号 
		*/		
		public static var MAINVERSION:String="1.0.0";
			

		/**
		*游戏存档协议版本号 
		*/		
		public static var LOCALSTOREVERSION:String="100";
			

		/**
		*游戏构建日期 
		*/		
		public static var BUILD:String="14.04.23.3";
			

		/**
		*是否调试运行 
		*/		
		public static var IS_DEBUGRUN:Boolean=true;
			

		/**
		*是否无视图运行 
		*/		
		public static var IS_NOVIEW:Boolean=true;
			

		/**
		*时间_白天持续秒数 
		*/		
		public static var TIME_DAY_SECOND:int=120;
			

		/**
		*初始金币数量 
		*/		
		public static var INIT_JINGBI:int=0;
			

		/**
		*初始钻石数量 
		*/		
		public static var INIT_DAMOND:int=0;
			

		/**
		*每局游戏豆 
		*/		
		public static var INIT_GAMEPOINT:int=50;
			

		/**
		*初始心情值 
		*/		
		public static var INIT_MOONVALUE:int=200;
			

		/**
		*通关心情值 
		*/		
		public static var MAX_MOONVALUE:int=5000;
			

		/**
		*失败心情值 
		*/		
		public static var MIN_MOONVALUE:int=0;
			

		/**
		*小游戏冷却速度 
		*/		
		public static var SMALLGAMECOOLDOWN:int=15;
			

		/**
		*初始己生成时间 
		*/		
		public static var INIT_LIFETIME:int=0;
			

		/**
		*普通状态 
		*/		
		public static var NORMAL_STATE:String="正常状态";
			

		/**
		*资源主目录 
		*/		
		public static var ASSTES:String="assets";
			

		/**
		*数值_资源加载间隔 
		*/		
		public static var SIMPLELOADDEALY:int=5;
			

		/**
		*角色资源目录 
		*/		
		public static var ROLEASSETS:String="roleassets";
			

		/**
		*音效资源目录 
		*/		
		public static var SOUNDS:String="sounds";
			

		/**
		*UI资源目录 
		*/		
		public static var UIASSETS:String="uiassets";
			

		/**
		*UI设计宽度 
		*/		
		public static var DESIGNWIDTH:int=960;
			

		/**
		*UI设计高度 
		*/		
		public static var DESIGNHEIGHT:int=640;
			

		/**
		*角色骨骼动画定位点x 
		*/		
		public static var ROLEPOSX:int=400;
			

		/**
		*角色骨骼动画定位点y 
		*/		
		public static var ROLEPOSY:int=430;
			

		/**
		*策划表所有特殊状态最小公倍数 
		*/		
		public static var SPECAILSTATE_MINDYA:int=24;
			

		/**
		*室内外切换时是否清掉角色资源 
		*/		
		public static var BCLEARROLEWHENROOMCHANGE:Boolean=true;
			

		/**
		*游戏资源_角色_室内整合 
		*/		
		public static var RESOURCE_ROLE_ROOM:String="role_inroom_and_states";
			

		/**
		*游戏资源_角色_室外整合 
		*/		
		public static var RESOURCE_ROLE_OUTROOM:String="role_outroom";
			

		/**
		*游戏资源_角色动作_目录 
		*/		
		public static var RESOURCE_ROLEASSETS:String="roleassets";
			

		/**
		*游戏资源_大图_目录 
		*/		
		public static var RESOURCE_BIG_IMAGES:String="big_images";
			

		/**
		*游戏资源_小游戏_目录 
		*/		
		public static var RESOURCE_SMALLGAME:String="smallgame";
			

		/**
		*游戏资源_拼图资源_目录 
		*/		
		public static var RESOURCE_PINGTURES:String="pingtures";
			

		/**
		*游戏大图_室外白天 
		*/		
		public static var IMG_AITSHIWAICJ:String="img_shiwaibaitcj";
			

		/**
		*游戏大图_室外晚上 
		*/		
		public static var IMG_YEWANCJ:String="img_yewancj";
			

		/**
		*游戏大图_室内白天 
		*/		
		public static var IMG_BAITIANCJ:String="img_baitiancj";
			

		/**
		*游戏大图_室内晚上 
		*/		
		public static var IMG_SHINEIWANSHANGCJ:String="img_shineiwanshangcj";
			

		/**
		*游戏大图_打垃圾白天 
		*/		
		public static var IMG_BAITIAN:String="img_baitian";
			

		/**
		*游戏大图_启动界面背景 
		*/		
		public static var IMG_BEIJINGTUPIAN:String="img_beijingtupian";
			

		/**
		*游戏大图_跑酷背景 
		*/		
		public static var IMG_BTPKCJ:String="img_btpkcj";
			

		/**
		*游戏大图_打垃圾说明 
		*/		
		public static var IMG_DIBU:String="img_dibu";
			

		/**
		*游戏大图_打地老鼠白天 
		*/		
		public static var IMG_DISHUBAIT:String="img_dishubait";
			

		/**
		*游戏大图_打地老鼠说明 
		*/		
		public static var IMG_DISHUKUNNANDIB:String="img_dishukunnandib";
			

		/**
		*游戏大图_打地老鼠晚上 
		*/		
		public static var IMG_DISHUWANS:String="img_dishuwans";
			

		/**
		*游戏大图_关于我们背景 
		*/		
		public static var IMG_GYWMBJ:String="img_gywmbj";
			

		/**
		*游戏大图_爱5关 
		*/		
		public static var IMG_IWUGUANYUWM:String="img_iwuguanyuwm";
			

		/**
		*游戏大图_爱5结束 
		*/		
		public static var IMG_IWUJIESJIEM:String="img_iwujiesjiem";
			

		/**
		*游戏大图_爱5结束2 
		*/		
		public static var IMG_IWUKSJC:String="img_iwuksjc";
			

		/**
		*游戏大图_i5室内白天 
		*/		
		public static var IMG_IWUSHINEIBTCJ:String="img_iwushineibtcj";
			

		/**
		*游戏大图_i5室内晚上 
		*/		
		public static var IMG_IWUSHINWANSCJ:String="img_iwushinwanscj";
			

		/**
		*游戏大图_i5室外白天 
		*/		
		public static var IMG_IWUSHIWAIBTCJ:String="img_iwushiwaibtcj";
			

		/**
		*游戏大图_i5室外晚上 
		*/		
		public static var IMG_IWUSHIWAIYEWANCJ:String="img_iwushiwaiyewancj";
			

		/**
		*游戏大图_img_iwuxiaoyxywljg 
		*/		
		public static var IMG_IWUXIAOYXYWLJG:String="img_iwuxiaoyxywljg";
			

		/**
		*游戏大图_img_iwuxyxdsbt 
		*/		
		public static var IMG_IWUXYXDSBT:String="img_iwuxyxdsbt";
			

		/**
		*游戏大图_img_iwuxyxdsws 
		*/		
		public static var IMG_IWUXYXDSWS:String="img_iwuxyxdsws";
			

		/**
		*游戏大图_img_iwuxyxpaokbtcj 
		*/		
		public static var IMG_IWUXYXPAOKBTCJ:String="img_iwuxyxpaokbtcj";
			

		/**
		*游戏大图_img_iwuxyxpkywcj 
		*/		
		public static var IMG_IWUXYXPKYWCJ:String="img_iwuxyxpkywcj";
			

		/**
		*游戏大图_结束界面 
		*/		
		public static var IMG_JIESJIEM:String="img_jiesjiem";
			

		/**
		*游戏大图_拼图说明 
		*/		
		public static var IMG_MIANBAN:String="img_mianban";
			

		/**
		*游戏大图_跑酷说明 
		*/		
		public static var IMG_PAOKUDIBU:String="img_paokudibu";
			

		/**
		*游戏大图_拼图底 
		*/		
		public static var IMG_PINTUDI:String="img_pintudi";
			

		/**
		*游戏大图_img_yewan 
		*/		
		public static var IMG_YEWAN:String="img_yewan";
			

		/**
		*游戏大图_img_ywpkcj 
		*/		
		public static var IMG_YWPKCJ:String="img_ywpkcj";
			

		/**
		*字体列表_ 
		*/		
		public static var FONT0_0:String="Font0_0";
			

		/**
		*字体列表_ 
		*/		
		public static var FONT0_1:String="Font0_1";
			

		/**
		*字体列表_ 
		*/		
		public static var FONT1_0:String="Font1_0";
			

		/**
		*字体列表_ 
		*/		
		public static var FONT2_0:String="Font2_0";
			

		/**
		*字体列表_ 
		*/		
		public static var FONT2_1:String="Font2_1";
			

		/**
		*字体列表_ 
		*/		
		public static var FONT2_2:String="Font2_2";
			

		/**
		*字体列表_ 
		*/		
		public static var FONT3_0:String="Font3_0";
			

		/**
		*字体列表_ 
		*/		
		public static var FONT4_0:String="Font4_0";
			

		/**
		*返回类型_成功 
		*/		
		public static var RESPONSE_SUCCESS:String="Response_success";
			

		/**
		*返回类型_失败 
		*/		
		public static var RESPONSE_FAIL:String="Response_fail";
			

		/**
		*语言列表_金币余额不足 
		*/		
		public static var LANG_NOMONEY:String="金币余额不足";
			

		/**
		*语言列表_金币余额不足 
		*/		
		public static var LANG_BUYSUCCESS:String="购买成功";
			

		/**
		*商店道具类型_钻石->金币 
		*/		
		public static var ITEMTYPE_GOLD:String="100";
			

		/**
		*商店道具类型_RMB->钻石 
		*/		
		public static var ITEMTYPE_DEMOND:String="101";
			

		/**
		*商店道具类型_钻石->游戏豆 
		*/		
		public static var ITEMTYPE_GAMEPOINT:String="102";
			

		/**
		*商店道具类型_药水道具 
		*/		
		public static var ITEMTYPE_POTION:String="103";
			

		/**
		*商店道具类型_装扮道具 
		*/		
		public static var ITEMTYPE_DECO:String="104";
			
	}
}
			