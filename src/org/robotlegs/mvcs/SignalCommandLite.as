package org.robotlegs.mvcs
{
	
	import org.robotlegs.core.ICommandMap;
	import org.robotlegs.core.IInjector;
	import org.robotlegs.core.ISignalCommandMap;
	
	public class SignalCommandLite
	{
		[Inject]
		public var signalCommandMap:ISignalCommandMap;
		
		[Inject]
		public var injector:IInjector;
		
		public function Command()
		{
		}
		
		public function execute():void
		{
		}
	}
}
