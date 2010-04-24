package org.robotlegs.mvcs
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import org.robotlegs.base.ContextBase;
	import org.robotlegs.base.MediatorMap;
	import org.robotlegs.base.SignalCommandMap;
	import org.robotlegs.core.IInjector;
	import org.robotlegs.core.IMediatorMap;
	import org.robotlegs.core.ISignalCommandMap;
	import org.robotlegs.core.ISignalContext;
	
	public class SignalContextLite extends ContextBase implements ISignalContext
	{
		protected var _signalCommandMap:ISignalCommandMap;
		
		public function SignalContextLite(autoStartup:Boolean = true)
		{
			if(autoStartup)
				startup();
		}
		
		protected function startup():void
		{
			injector.mapValue( ISignalCommandMap, signalCommandMap );
			injector.mapValue( IInjector, injector );
		}
		
		public function get signalCommandMap():ISignalCommandMap
		{
			return _signalCommandMap || (_signalCommandMap = new SignalCommandMap(injector));
		}
		
		public function set signalCommandMap(value:ISignalCommandMap):void
		{
			_signalCommandMap = value;
		}
	}
}
