package mediators.starling.comps
{
	import gamelegs.mediators.starling.Med_SWFUIChildBase;
	
	import starling.display.Image;
	
	public class Med_mc_loadjindutplay extends Med_SWFUIChildBase
	{
		public function Med_mc_loadjindutplay()
		{
			super();
			
			 
			
		}
		
		
		public var _loadyibai:Image;
		
		public function setLoadingPerNum(per:Number):void{
			
			_loadyibai.scaleX=per;
			 
		}
		
		
		
		override protected function doDirectViewChangeEvent(data:Array):void
		{
			// TODO Auto Generated method stub
			super.doDirectViewChangeEvent(data);
			if(_loadyibai==null)return;
			var per:Number=data[1];
			setLoadingPerNum(per);
			
		}
		
		override public function initViewEvent():void
		{
			// TODO Auto Generated method stub
			super.initViewEvent();
			
			
			
		}
		
		override public function afterViewInited():void
		{
			// TODO Auto Generated method stub
			super.afterViewInited();
			
			
			setLoadingPerNum(0);
		}
		
		
		
		
		
		
			
		
		
		
		
	}
}