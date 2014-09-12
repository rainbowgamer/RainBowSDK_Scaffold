package application.context
{
	public class RuntimeConfig
	{
		public function RuntimeConfig()
		{
		}
		
		
		/**
		 *显示starling状态 
		 */		
		public static const showStarlingStates:Boolean=false;
		/**
		 *是否运行在真实的游戏数据模式/或UI调试模式 
		 */		
		public static const runInGameDataMode:Boolean=true;
		
		/**
		 *显示日志UI 
		 */		
		public static const initLoggerUI:Boolean=false;
		
		/**
		 *是否直接启动到指定场景  false = 按策划进程
		 */		
		public static var runToDirectScen:Boolean=true;
		
		/**
		 *是否跳过flash漫画界面
		 */		
		public static var runSkipFlash:Boolean=true;
		
		/**
		 *显示骨骼动画调试信息 
		 */		
		public static var showDragonDebug:Boolean=false;
		
		/**
		 *是否显示加载进度 及加载日志
		 */		
		public static var showAssertVerb:Boolean=false;
		
	}
}


