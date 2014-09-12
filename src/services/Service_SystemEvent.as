package services
{
	import flash.desktop.NativeApplication;
	import flash.events.Event;
	import flash.events.InvokeEvent;
	import flash.utils.setTimeout;
	
	import gameapi.mydef.MyGameDef_type;
	import gameapi.statics.Static_FrameType;
	
	import services.base.ServiceGameLegsBase;
	
	public class Service_SystemEvent extends ServiceGameLegsBase
	{
		public function Service_SystemEvent()
		{
			super();
			
//			setTimeout(initSystemEvent,1);
		}
		
		
		
		
		
		public function initSystemEvent():void
		{
			// TODO Auto Generated method stub
			
			
			NativeApplication.nativeApplication.addEventListener(Event.ACTIVATE,onActive);
			NativeApplication.nativeApplication.addEventListener(Event.DEACTIVATE,onDeactive);
			NativeApplication.nativeApplication.addEventListener(Event.EXITING,onExit);
			NativeApplication.nativeApplication.addEventListener(Event.SUSPEND,onSuspend)
			NativeApplication.nativeApplication.addEventListener(InvokeEvent.INVOKE,onInvoke)
			
		}		
		
		protected function onInvoke(event:InvokeEvent):void
		{
			// TODO Auto-generated method stub
//			trace("onInvoke")
		}
		
		protected function onSuspend(event:Event):void
		{
			// TODO Auto-generated method stub
//			trace("onSuspend")
			
		}
		
		protected function onExit(event:Event):void
		{
			// TODO Auto-generated method stub
//			trace("onExit");
//			inj_Service_NetServer.serverDown();
			
//			serverDispatchDataChange_Event(Static_FrameType.SYSTEM_EXIT);
		}
		
		protected function onDeactive(event:Event):void
		{
			// TODO Auto-generated method stub
//			trace("onDeactive")
//			serverDispatchDataChange_Event(Static_FrameType.SYSTEM_DEACTIVE);
			
		}
		
		protected function onActive(event:Event):void
		{
			// TODO Auto-generated method stub
//			trace("onActive")
//			inj_Service_NetServer.guideserverRestart()
//			serverDispatchDataChange_Event(MyGameDef_type.SYSTEM_ACTIVE);
		}
		
		
	}
}