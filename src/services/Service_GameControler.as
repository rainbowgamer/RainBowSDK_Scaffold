package services
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.net.Socket;
	
	import services.base.ServiceGameLegsBase;
	import flash.utils.setTimeout;
	
	/**
	 *游戏调试器 
	 * @author zhouhua
	 * 
	 */	
	public class Service_GameControler extends ServiceGameLegsBase
	{
		public function Service_GameControler()
		{
			super();
		}
		
		
		private var autoconnect:Boolean;
		
		public function initService(serverip:String,serverport:int,autoconnect:Boolean=false):void{
			this.serverip = serverip;
			this.serverport = serverport;
			this.autoconnect=autoconnect;
			sock=new Socket()
			initsocket();
			
			reconnect();
		}
		/**
		 *停止接收数据及断线重联 
		 * 
		 */		
		override public function pause():void{
			
			bpaused=true;
		
		}
		
		
		public function reconnect():void{
			bpaused=false;
			if(sock.connected==false){
				sock.connect(serverip,serverport);
			}
		}
		
		private var bpaused:Boolean;
		
		private var sock:Socket;

		private var serverport:int;

		private var serverip:String;
		
		
		private function initsocket():void
		{
			// TODO Auto Generated method stub
			
			sock.addEventListener(Event.CONNECT,onconnect)
			sock.addEventListener(ProgressEvent.SOCKET_DATA,onData)
			sock.addEventListener(Event.CLOSE,onclose)
			sock.addEventListener(IOErrorEvent.IO_ERROR,onError)
		}
		
		protected function onError(event:IOErrorEvent):void
		{
			// TODO Auto-generated method stub
			trace("onError")
			if(autoconnect&&bpaused==false){
				setTimeout(reconnect,3000);
			}
		}
		
		protected function onclose(event:Event):void
		{
			// TODO Auto-generated method stub
			trace("onclose")
			if(autoconnect&&bpaused==false){
				setTimeout(reconnect,3000);
			}
			
		}
		
		protected function onData(event:ProgressEvent):void
		{
			// TODO Auto-generated method stub
			if(bpaused)return;
			var str:String=sock.readUTFBytes(sock.bytesAvailable);
			trace("ondata",str)
			
			
			
		}
		
		protected function onconnect(event:Event):void
		{
			// TODO Auto-generated method stub
			trace("connect")
		}
		
	}
}