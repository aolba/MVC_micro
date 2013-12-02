package com.bengalamedialab.mvc {
	import flash.events.EventDispatcher;
	/**
	* ...
	* @author Marcos Diaz / http://www.blogdev.bengalamedialab.com/
	*/
	public class Model extends EventDispatcher {
		public static const NAME:String = 'Model';
		protected var _modelName:String;
		
		public function Model(modelName:String=null) {
				_modelName = (modelName != null) ? modelName : NAME;
		}
		
				
		
		public function get modelName():String {
			return _modelName;
		}
		
		public function set modelName(value:String):void {
			_modelName = value;
		}
		
	}

}