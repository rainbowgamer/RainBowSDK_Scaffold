package mediators.starling.scens
{
	import flash.events.TimerEvent;
	import flash.geom.Point;
	import flash.utils.Timer;
	import flash.utils.getTimer;
	import flash.utils.setTimeout;
	
	import R2Event.Robert2CommandEvent;
	
	import emus.AlignType;
	
	import gameapi.statics.Static_Config;
	import gameapi.statics.Static_Event;
	import gameapi.statics.Static_FrameType;
	import gameapi.statics.Static_GameType;
	
	import gamelegs.mediators.starling.Med_ScenUIBase;
	
	import lzm.starling.swf.display.SwfImage;
	import lzm.starling.swf.display.SwfMovieClip;
	
	import modules.Model_GameData;
	import modules.datamodules.Data_Game;
	
	import starling.animation.Transitions;
	import starling.animation.Tween;
	import starling.core.Starling;
	import starling.display.Image;
	import starling.display.Quad;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	
	public class Med_Scen_FootballUIloading extends Med_ScenUIBase
	{
		public function Med_Scen_FootballUIloading()
		{
			super();
		}
		
	
		
		public var loadjindutplay:SwfMovieClip;
		
		override public function initialize():void
		{
			// TODO Auto Generated method stub
			this.scenid=Static_FrameType.VIEW_UILOADING;
			this.viewid=[Static_FrameType.VIEW_UILOADING,Static_FrameType.VIEW_UILOADING_MAINMC].join(".");
			this.aligntype=AlignType.leftTop;
			
			super.initialize();
			
			
		}
		 
		
		
		private var loadintTimer:Timer;
		private var bgloading:Sprite;
		override public function afterViewInited():void
		{
			// TODO Auto Generated method stub
			
			super.afterViewInited();
			loadjindutplay.visible=false;
			inj_view.addEventListener(Event.ENTER_FRAME,onTimerLoadingrefush)
			bgloading=new Sprite();
			inj_view.addChildAt(bgloading,0);
			
			
		}
		
		
		
		private function onLoadinBGBack(img:Image):void
		{
			// TODO Auto Generated method stub
			if(bLoadingBG==false){
				bLoadingBG=true;
				var screenpt:Point=img.globalToLocal(new Point(0,0));
				img.x=screenpt.x;
				img.y=screenpt.y;
				img.width=inj_view.stage.stageWidth;
				img.height=inj_view.stage.stageHeight;
				loadjindutplay.visible=true;
				super.sendScenInitEvent();
			}
			 
		}
		
		override protected function sendScenInitEvent():void
		{
			loadBigImagToParent("footgame",bgloading,onLoadinBGBack);
			super.sendScenInitEvent();
		}
		
		override public function onViewShowing():void
		{
			// TODO Auto Generated method stub
			super.onViewShowing();
			
			
		}
		
		
		
		
		
		private var lastloadingobj:Object;
		
//		private var canrefushed:Boolean;
		
		private var delaycount:int;
		
		private var bhiding:Boolean;

		private var hidetween:Tween;
		private var bshowing:Boolean;
		
		
//		public var button_tiaoguo:SwfMovieClip

		private var showtween:Tween;
		
		
		
		public function showLoadingToFun(showtofun:Function):void{
			clearFun()
			
		
		}
		
		public function hideLoadinToFun(hidetofun:Function):void{
			clearFun()
			
		}
		
		private function clearFun():void{
		
			if(hidetween&&bhiding==false){
				bhiding=false;
				Starling.juggler.remove(hidetween);
				hidetween=null;
			}
			
			if(showtween&&bshowing==false){
				bshowing=false;
				Starling.juggler.remove(showtween);
				showtween=null;
			}
			
			
			
			
			
			
		}
		
		
		
		protected function onTimerLoadingrefush(event:Event):void
		{
			// TODO Auto-generated method stub
//			trace(this.inj_view.visible);
			
//			return;
			if(delaycount>0){
				delaycount--;
				return;
			}
			if((inj_Model_GameData.datagame as Data_Game).loadingObjay.length==0){
				
				return;
			}
			else{
			}
			
			
			
			
				
			
			var loadinobj:Object=(inj_Model_GameData.datagame as Data_Game).loadingObjay.shift();
			
			dispEventType(Static_Event.EVENT_VIEW_UPDATE,[Static_FrameType.VIEW_LOADINGCHANGE,loadinobj.loadingper]);
			
			
		}
		
		private function showLoading(backfun:Function):void
		{
			// TODO Auto Generated method stub
			if(bshowing)return;
			bshowing=true;
			inj_view.visible=true;
			inj_view.alpha=0.9
			
			showtween=new Tween(inj_view,0.25,Transitions.EASE_IN);
			showtween.fadeTo(1);
			showtween.delay=0.2;
			Starling.current.nativeStage.frameRate=24;
			showtween.onComplete=function():void{
				
				bshowing=false;
				bhiding=false;
				Starling.juggler.remove(showtween);
				showtween=null
				Starling.current.nativeStage.frameRate=24;
			
				if(backfun!=null){
					backfun();
				}
				trace("showLoading tween complete",getTimer())
			}
			Starling.juggler.add(showtween);
		}
		
		private function hideLoading(backfun:Function):void
		{
			// TODO Auto Generated method stub
			if(bhiding)return;
			bhiding=true;
			inj_view.visible=true
			dispEventType(Static_Event.EVENT_VIEW_UPDATE,[Static_FrameType.VIEW_LOADINGCHANGE,1]);
			
			hidetween=new Tween(inj_view,0.25,Transitions.EASE_IN_OUT);
			hidetween.fadeTo(0.1);
			hidetween.delay=0.35
			hidetween.onComplete=function():void{
				inj_view.visible=false
				bhiding=false;
				bshowing=false;
				Starling.juggler.remove(hidetween);
				hidetween=null;
				Starling.current.nativeStage.frameRate=60;
				if(backfun!=null){
					backfun();
				}
				trace("hideLoading tween complete",getTimer())
			}
				
			Starling.juggler.add(hidetween);
		}		
		
		
		
		override public function initContextEvent():void
		{
			// TODO Auto Generated method stub
			super.initContextEvent();
		}
		
		override public function initViewEvent():void
		{
			// TODO Auto Generated method stub
			super.initViewEvent();
			bMovingChild=true;
//			regDataChangedEventHookType(Static_Type.VIEW_SCENOPENSTART);
//			regDataChangedEventHookType(Static_GameType.UIEVENT_UILOADING_SKIPBUTTON);
		}
		
		
		override protected function doRegisteredDataChangeEvent(regtype:String, dataay:Array):void
		{
			// TODO Auto Generated method stub
			super.doRegisteredDataChangeEvent(regtype, dataay);
			
			/*if(regtype==Static_GameType.UIEVENT_UILOADING_SKIPBUTTON){
				skipfun=dataay[1];
				
				button_tiaoguo.visible=true;
				
			}*/
			/*else if(regtype==Static_Type.VIEW_SCENOPENSTART){
				var data:*=dataay[1];
				
				
			}
			*/
			
			
			
		}
		
		override protected function onTouchEvent(e:TouchEvent):void
		{
			// TODO Auto Generated method stub
			super.onTouchEvent(e);
			
			var touch:Touch;
			
//			touch=e.getTouch(button_tiaoguo,TouchPhase.ENDED);
			
			if(touch){
				
				/*button_tiaoguo.visible=false;
				
				if(skipfun!=null){
					skipfun();
				}*/
				
			}
			
		}
		override protected function doDirectViewChangeEvent(dataay:Array):void
		{
			// TODO Auto Generated method stub
			if(dataay[1]==Static_FrameType.VIEW_LOADINGHIDE){
				var backfun:Function=dataay[2];
				hideLoading(backfun);
				
			}
			else if(dataay[1]==Static_FrameType.VIEW_LOADINGSHOW){
				backfun=dataay[2];
				showLoading(backfun)
//				replaceBg(Static_Config.IMG_LOADING,null);
			}
			else if(dataay[1]==Static_FrameType.VIEW_SCENCLOSE){
				
				scenshow_close()
				
			}
			
		}
		
		
		
		
		override protected function beforeScenInited():void
		{
			// TODO Auto Generated method stub
			super.beforeScenInited();
			
			
			
		}
		
		override public function scenshow_close():void
		{
			// TODO Auto Generated method stub
			super.scenshow_close();
		}
		
		
		
		private var bLoadingBG:Boolean;
		override public function scenshow_open():void
		{
			// TODO Auto Generated method stub
			if(bLoadingBG){
				super.scenshow_open();
			}
			
				
			
		}
		
		
		
		
		
		public var bgquad : Quad ;
		public var bg : SwfImage ;

		private var skipfun:Function;
		
		
		
		
		
		
		
		
	}
}