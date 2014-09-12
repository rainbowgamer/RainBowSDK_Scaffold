package services.mobileextend.NetworkInfo
{ 
	import com.adobe.nativeExtensions.Networkinfo.InterfaceAddress; 
	import com.adobe.nativeExtensions.Networkinfo.NetworkInfo; 
	import com.adobe.nativeExtensions.Networkinfo.NetworkInterface;  
	
	public class IOSNetworkInfo implements INetworkInfo 
	{ 
		public function getNetworkInfo():*
		{ 
			var _netInterface:Vector.<NetworkInterface> = com.adobe.nativeExtensions.Networkinfo.NetworkInfo.networkInfo.findInterfaces(); 
			/*for each (var interfaceObj:NetworkInterface in _netInterface){ 
				trace("Interface Name:" + interfaceObj.name + "\n" ); 
				trace("Hardware Address:" + interfaceObj.hardwareAddress + "\n"); 
			} */
			return _netInterface
		} 
		
	}    
	
}