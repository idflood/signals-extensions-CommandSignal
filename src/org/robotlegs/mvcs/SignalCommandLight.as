/*
* Copyright (c) 2009 the original author or authors
* 
* Permission is hereby granted to use, modify, and distribute this file 
* in accordance with the terms of the license agreement accompanying it.
*/

package org.robotlegs.mvcs
{
	
	import org.robotlegs.core.ICommandMap;
	import org.robotlegs.core.IInjector;
	import org.robotlegs.core.ISignalCommandMap;
	
	/**
	 * Abstract MVCS command implementation
	 */
	public class SignalCommandLight
	{
		[Inject]
		public var signalCommandMap:ISignalCommandMap;
		
		[Inject]
		public var injector:IInjector;
		
		public function Command()
		{
		}
		
		/**
		 * @inheritDoc
		 */
		public function execute():void
		{
		}
	}
}