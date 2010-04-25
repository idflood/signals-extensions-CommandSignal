package org.robotlegs.mvcs
{
	import org.robotlegs.base.ContextBase;
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
			mapInjections();
			if(autoStartup)
				startup();
		}
		
		protected function startup():void
		{
			
		}
		
		protected function mapInjections():void
		{
			injector.mapValue( IReflector, reflector );
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
