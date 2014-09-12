package mediators.starling.comps
{
	import flash.utils.getTimer;
	
	import gameapi.mydef.MyGameDef_type;
	import gameapi.statics.Static_FrameType;
	
	import gamelegs.mediators.starling.Med_SwfUIBase;
	
	import lzm.starling.swf.display.SwfMovieClip;
	
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	import starling.text.TextField;
	import starling.utils.HAlign;
	import starling.utils.VAlign;
	
	public class Med_mc_loggger extends Med_SwfUIBase
	{
		public function Med_mc_loggger()
		{
			super();
		}
		
		public var _txt:TextField;
		
		public var _btn_prev:SwfMovieClip;
		public var _btn_next:SwfMovieClip;
		
		override public function initialize():void
		{
			// TODO Auto Generated method stub
			this.viewid=[Static_FrameType.VIEW_UILOGGER,Static_FrameType.VIEW_COMPLOGGER].join(".");
			
			
			super.initialize();
			
			
			
						
		}
		
		override public function afterViewInited():void
		{
			// TODO Auto Generated method stub
			super.afterViewInited();
			var tf:TextField
			tf=	(_btn_prev.getChildByName("_txt") as TextField)
				
			tf.text="上"
			tf=	(_btn_next.getChildByName("_txt") as TextField)
			tf.text="下"
			  
//			inj_view.visible=false;
			 
		} 
		
		
		
		
		override protected function initData():void
		{
			// TODO Auto Generated method stub
			super.initData();
			
			logerstrAy=[]
				
			logerpagelen=12;
		}
		
		
		override protected function onViewInited(e:Event):void
		{
			// TODO Auto Generated method stub
			super.onViewInited(e);
			 
			
			_txt.text=""
				
			_txt.hAlign=HAlign.LEFT;
			_txt.vAlign=VAlign.TOP;
			inj_view.y=20;
			ishide=true;
		}
		
		override protected function onTouchEvent(e:TouchEvent):void
		{
			// TODO Auto Generated method stub
			super.onTouchEvent(e);
			
			var mytouch:Touch;
			
			
			mytouch=e.getTouch(_btn_prev,TouchPhase.ENDED);
			
			if(mytouch){
				logerpageindex--
				
				refushloger();
				return
			}
			
			mytouch=e.getTouch(_btn_next,TouchPhase.ENDED);
			
			if(mytouch){
				logerpageindex++
					
					refushloger();
				return
			}
			
			
			mytouch=e.getTouch(inj_view,TouchPhase.ENDED);
			
			if(mytouch){
				ishide=!ishide;
			}
			
			
		}
		
		private function refushloger():void
		{
			// TODO Auto Generated method stub
			
//			return;
			(inj_view as Sprite).unflatten();
			var pagemax:int=Math.ceil(logerstrAy.length/logerpagelen)
			if(logerpageindex>=pagemax){
				logerpageindex=pagemax-1;
			}
			if(logerpageindex<=0){
				logerpageindex=0;
			}
			var logay:Array=logerstrAy.slice(logerpageindex*logerpagelen,(logerpageindex+1)*logerpagelen)
				
			logay.push("--------",(logerpageindex+1)+"/"+pagemax+"-------------")
				
				
			_txt.text=logay.join("");
			(inj_view as Sprite).flatten();
			
			
		}
		
		private var _ishide:Boolean;
		
		
		public function show():void{
		
			inj_view.x=40
			inj_view.y=30
		
		}
		
		
		public function hide():void{
		
			inj_view.x=40
			inj_view.y=-600
		
		}

		public function get ishide():Boolean
		{
			return _ishide;
		}

		public function set ishide(value:Boolean):void
		{
			_ishide = value;
			
			if(_ishide){
				hide()
			}
			else{
				show();
			}
			
		}
		
		override protected function doDirectViewChangeEvent(dataay:Array):void
		{
			// TODO Auto Generated method stub
			super.doDirectViewChangeEvent(dataay);
			showloger(dataay[1]);
		
			
		}
		
		
		
		private var logerstrAy:Array;
		
		private var logerpageindex:int;
		
		private var logerpagelen:int;
		
		private var lasttime:int;
		
		public function showloger(inlogerstr:String):void{
			
			var time:Date=new Date();
			var tiemdiff:int=getTimer()-lasttime;
			
			logerstrAy.push("["+tiemdiff+"ms]"+inlogerstr);
			lasttime=getTimer();
			
			if(_txt){
				var pagemax:int=Math.ceil(logerstrAy.length/logerpagelen)
				logerpageindex=pagemax-1;
					
				refushloger();
			}
			
		
		}
		
		
		
		
	}
}