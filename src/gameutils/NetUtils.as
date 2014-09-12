package gameutils
{
	import flash.net.InterfaceAddress;
	import flash.net.NetworkInfo;
	import flash.net.NetworkInterface;
	import flash.system.Capabilities;
	
	import services.mobileextend.NetworkInfo.INetworkInfo;
	import services.mobileextend.NetworkInfo.IOSNetworkInfo;

	public class NetUtils
	{
		public function NetUtils()
		{
		}
		
		
		public static function getLocalIP():String{
		
			var interfaces:*;
			
			var sp:Boolean=NetworkInfo.isSupported;
			if(sp){
				
				var info:NetworkInfo=NetworkInfo.networkInfo;
				interfaces=info.findInterfaces();
			}
			else{
				var networkInfoObj:INetworkInfo //datatype is the interface  
				
				if(Capabilities.os.indexOf("iPhone")>=0){ 
					networkInfoObj = new IOSNetworkInfo(); 
				}else{ 
					//				networkInfoObj = new AndroidNetwork(); 
					
				}
				interfaces=networkInfoObj.getNetworkInfo();
				
			}
			
			var localip:String=findEnthIPAddress(interfaces);
			
			return localip;
		}
		
		
		
		private static function findEnthIPAddress(interfaces:*):String
		{
			// TODO Auto Generated method stub
			var resultip:String;
			
			for (var i:int in interfaces) 
			{
				var interitem:Object=interfaces[i];
				
				if(interitem is NetworkInterface){
					
					var inter:NetworkInterface=interitem as NetworkInterface;
					
					if(inter.active==false)continue;
					
					if(inter.addresses.length>0){
						
						for(var k:int in inter.addresses){
							
							var inadd:InterfaceAddress=inter.addresses[k];
							
							if(inadd.ipVersion!="IPv4")continue;
							
							resultip=inadd.address;
							
							return resultip;
							
							
						}
						
					}
					
					
				}
				
				
				var itemname:String=interitem.name
				
				if(itemname!="en0")continue;
				
				var address:*=interitem.addresses;
				
				
				for(var j:int in address){
					
					var addressitem:*=address[j];
					
					var ipver:String=addressitem.ipVersion;
					
					if(ipver!="IPV4")continue;
					
					resultip=addressitem.address;
					
					return resultip;
					
					
				}
				
				
			}
			
			
			
			return resultip;
		}	
		
	}
}