package org.robotlegs.mvcs
{
	import org.robotlegs.core.ISignalCommandMap;

	public class SignalActorLite
	{
		[Inject]
		public var commandMap:ISignalCommandMap;
		
		public function SignalActorLite()
		{
		}
	}
}
