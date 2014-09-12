package starling.display
{
	import flash.geom.Rectangle;
	
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	
	public class SwfSlideMovieClip extends MovieClip
	{

		private var framelabels:Object;

		private var slidemoviename:String;
		
		private var frameStartindex:int;
		
		private var frameEndindex:int;

		private var movtextalt:TextureAtlas;
		
		
		public function SwfSlideMovieClip(slidemoviename:String,texture:Texture,row:int,col:int,framelabels:Object,pivotXdiff:int,pivotYdiff:int)
		{
			this.slidemoviename = slidemoviename;
			this.framelabels = framelabels;
			
//			textures:Vector.<Texture>, fps:Number=12
			var textXml:XML
			textXml=buildTextureAltasXml(slidemoviename,texture.width,texture.height,row,col);
			frameStartindex=0;
			frameEndindex=row*col-1;
			
			
			movtextalt=new TextureAtlas(texture,textXml);
			
			super(movtextalt.getTextures(), 30);
			
			this.pivotX=this.width/2+pivotXdiff
			this.pivotY=this.height/2+pivotYdiff;
				
		}
		
		/*override public function advanceTime(passedTime:Number):void
		{
			// TODO Auto Generated method stub
			super.advanceTime(passedTime);
			
			
		}
		*/
		
		
		
		
		private static function buildTextureAltasXml(altasnametitle:String,width:int,height:int,row:int,col:int,totalframe:int=0):XML{
			
			var xml:XML=<TextureAtlas imagePath="{altasnametitle}"/>

			if(totalframe==0){
				totalframe=row*col;
			}
			
			for (var i:int = 0; i < totalframe; i++) 
			{
				
				var slideframe:int=i;			
				var slidewidth:int=width/col;
				var slidehight:int=height/row;
				
				var sliderect:Rectangle=new Rectangle();
				
				var rowint:int=slideframe / col;
				
				var colint:int=(slideframe-rowint*col)% col
				
				sliderect.x=colint*slidewidth;
				
				sliderect.y=rowint*slidehight;
				
				sliderect.width=slidewidth;
				sliderect.height=slidehight;
				
				var subtextxml:XML=getsubTextXml(altasnametitle,100+i,sliderect);
				
				xml.appendChild(subtextxml);
				
				
			}
			
			return xml;
			
		}
		
		private  static  function getsubTextXml(altasnametitle:String, i:int, sliderect:Rectangle):XML
		{
			// TODO Auto Generated method stub
			var xml:XML= <SubTexture name="moon" x="0" y="0" width="30" height="30"/>;
			xml.@name=altasnametitle+"_"+i;
			xml.@x=sliderect.x;
			xml.@y=sliderect.y;
			xml.@width=sliderect.width;
			xml.@height=sliderect.height;
			
			return xml;
		}		
		
		
		
		public function gotoAndPlay(labelinfo:*):void
		{
			// TODO Auto Generated method stub
			var labelfps:int=framelabels[labelinfo][0];
			var labelframeay:Array=framelabels[labelinfo][1];
			var textvect:Vector.<Texture>=new Vector.<Texture>();
			for (var i:int = 0; i < labelframeay.length; i++) 
			{
				var frameindex:int=labelframeay[i]+100;
				var framename:String=slidemoviename+"_"+frameindex;
				var frametextu:Texture=movtextalt.getTexture(framename);
				
				textvect.push(frametextu);
			}
			
			
			
			refushinit(textvect,labelfps);
			
		}
		
		
	}
}