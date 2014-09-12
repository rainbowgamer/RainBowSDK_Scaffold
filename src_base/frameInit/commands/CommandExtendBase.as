package frameInit.commands
{
	import R2Command.extendFrame.Command_FrameBase;
	
	import R2Event.Robert2CommandEvent;
	
	import gameapi.statics.Static_Event;
	import gameapi.statics.Static_FrameType;
	
	public class CommandExtendBase extends Command_FrameBase
	{
		
		
		
		public function CommandExtendBase(e:Robert2CommandEvent)
		{
			super(e);
		}
		
		/**
		 *command 日志管理 
		 * @param args
		 * 
		 */		
		override public function command_Loger(...args):void{
			
			super.command_Loger.apply(null,args);
			
			var logerstr:String=args.join("\t")
			
			logerstr+="\n";
			
			var viewlogere:Robert2CommandEvent=new Robert2CommandEvent(Static_Event.EVENT_VIEW_CHANGE,
				[[Static_FrameType.VIEW_UILOGGER,Static_FrameType.VIEW_COMPLOGGER].join("."),logerstr]);
			
			dispatchCommandEvent(viewlogere);
			
		}
	}
}