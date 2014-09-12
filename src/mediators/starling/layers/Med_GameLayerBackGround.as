package mediators.starling.layers
{
	import gameapi.statics.Static_Config;
	import gameapi.statics.Static_FrameType;
	
	import gamelegs.mediators.starling.extendBase.layers.Med_LayerBackGround;
	
	import starling.display.BlendMode;
	
	public class Med_GameLayerBackGround extends Med_LayerBackGround
	{
		public function Med_GameLayerBackGround()
		{
			super();
		}
		
		
		
		
		
		private var roomtype:String
		private var timetype:String;
		
		
		
		
		
		
		override public function initViewEvent():void
		{
			// TODO Auto Generated method stub
			super.initViewEvent();
			
//			regDataChangedEventHookType(Static_Type.DATACHANGE_TIMETYPE);
//			regDataChangedEventHookType(Static_Type.DATACHANGE_ROOMTYPE);

//			regDataChangedEventHookType(Static_Type.VIEW_SCENOPENSTART);
			
			regDataChangedEventHookType(Static_FrameType.UIEFFECT_LOADBGIMAGE);
			regDataChangedEventHookType("setbgtext");
			
			
			
			
			laybg.blendMode=BlendMode.NONE;
			
			
			
			
			
		}
		
		override protected function doDirectViewChangeEvent(dataay:Array):void
		{
			// TODO Auto Generated method stub
			super.doDirectViewChangeEvent(dataay);
			
			
			
			
		}
		
		
		
		
		
		override protected function doRegisteredDataChangeEvent(regtype:String, dataay:Array):void
		{
			// TODO Auto Generated method stub
			super.doRegisteredDataChangeEvent(regtype, dataay);
			
			parseDataChange(regtype,dataay);
			
		}
		private function loadUIStartBgimg():void{
		
			var bgimg:String=Static_Config.IMG_BEIJINGTUPIAN
			
//			refushImg(bgimg)
		
		}
		
		
		
			
		
		
		
		
		
		
		
		
	}
}