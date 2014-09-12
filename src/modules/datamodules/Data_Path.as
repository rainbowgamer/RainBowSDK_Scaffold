package modules.datamodules
{
	import flash.filesystem.File;
	
	import gameapi.statics.Static_Config;
	
	import modules.Model_BaseData;
	import modules.Model_GameData;
	import modules.dataParts.DataPath;

	/**
	 *地球 路径工具转换 
	 * @author zhouhua
	 * 
	 */
	public class Data_Path extends DataPath
	{
		
		public function Data_Path(model:Model_BaseData)
		{
			super(model)
			
		}
		
		
		
		/**
		 *资源主目录 
		 * @return 
		 * 
		 */		
		public  function getPath_ResRoot():String{
//			File.applicationDirectory.nativePath+
			return "app:/"+Static_Config.ASSTES;
		}
		
		/**
		 *取角色资源路径 
		 * @return 
		 * 
		 */		
		public function getPath_Roleasset():String{
		
			return getPath_ResRoot()+"/"+Static_Config.ROLEASSETS;
		}
		
		/**
		 *取角色资源路径 
		 * @return 
		 * 
		 */		
		public function getPath_Font():String{
			
			return getPath_ResRoot()+"/fonts";
		}
		
		/**
		 *取音效资源路径 
		 * @return 
		 * 
		 */		
		public function getPath_Sounds(soundid:String):String{
			
			return getPath_ResRoot()+"/"+Static_Config.SOUNDS+"/"+soundid+".mp3";
		}
		
		/**
		 *取得UI资源路径 
		 * @return 
		 * 
		 */		
		public function getPath_UIassets(resid:String):String{
			
			return getPath_ResRoot()+"/"+Static_Config.UIASSETS+"/"+resid;
		}
		 
		/**
		 *得到大图的路径 
		 * @param imgid
		 * @return 
		 * 
		 */		
		public function getPath_BigImages(imgid:String):String
		{
			// TODO Auto Generated method stub
			var imgpath:String;
				
				imgpath=getPath_ResRoot()+"/"+Static_Config.RESOURCE_BIG_IMAGES+"/"+imgid+".png";
				
				if(new File(imgpath).exists==false){
				
				imgpath=getPath_ResRoot()+"/"+Static_Config.RESOURCE_BIG_IMAGES+"/"+imgid+".jpg";
				}
				
			
			return imgpath
			
			
		}
		
		
		/**
		 *通过状态id取得资源路径组 
		 * @param stateid
		 * @return 
		 * 
		 */		
		public function getActionResPaths(stateid:String):Array
		{
			// TODO Auto Generated method stub
//			var actionreslist:Array=dat
			
			var respaths:Array=[];
			/*for (var i:int = 0; i < partnamelist.length; i++) 
			{
				var partname:String=partnamelist[i];
				
				respaths.push(getPath_ByActionname(equiptname,statename,partname));
				
			}*/
			respaths.push(getPath_ByActionname(stateid));
			
			return respaths;
		}
		
		/**
		 *从动作/状态名找到资源路径 
		 * @param actionname
		 * @return 
		 * 
		 */		
		private function getPath_ByActionname(statename:String):String
		{
			// TODO Auto Generated method stub
			var roleassetpath:String=getPath_Roleasset();
			
			var respath:String="";
			
//			statename=statename.replace("状态","");
			
			respath=[roleassetpath,statename].join("/");
				
			respath+="/";
			 
			var file:File=new File(respath);
				
				
			
			return respath;
		}		
		
		
		/**
		 *得到拼图的资源路径 
		 * @param imgid
		 * @return 
		 * 
		 */		
		public function getPath_PingTuRes(imgid:String):String
		{
			// TODO Auto Generated method stub
			return getPath_ResRoot()+"/smallgame/pingtures/"+imgid+".png";
		}
		
		/**
		 *角色骨骼动画资源文件 
		 * @param resid
		 * @return 
		 * 
		 */		
		public function getPath_DragonBones(resid:String):String
		{
			// TODO Auto Generated method stub
			
			return getPath_ResRoot()+"/"+Static_Config.ROLEASSETS+"/"+resid+".dbswf";
//			return null;
		}
	}
}