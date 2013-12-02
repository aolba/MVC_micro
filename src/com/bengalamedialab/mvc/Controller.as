package com.bengalamedialab.mvc {
	/**
	* ...
	* @author Marcos Diaz / http://www.blogdev.bengalamedialab.com/
	*/
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	public class Controller {
		public static const NAME:String = "Controller";
		private var _controllerModel:Model;
		private var _controllerViewComp:Object;
		protected var _controllerName:String;
		
		public function Controller(model:Model, viewcomponent:Object=null, controllerName:String=null) {
			_controllerModel  = model;
			_controllerViewComp = viewcomponent;		
			_controllerName = (controllerName != null) ? controllerName:NAME;			
			_controllerViewComp.addEventListener(Event.ADDED_TO_STAGE, _addedView);
			_controllerViewComp.addEventListener(Event.REMOVED_FROM_STAGE, _removedView);
		}
		
		
		private function _removedView(e:Event):void {
			_controllerViewComp.removeEventListener(Event.REMOVED_FROM_STAGE, _removedView);
			onRemove();
		}
		
		private function _addedView(e:Event):void {
			_controllerViewComp.removeEventListener(Event.ADDED_TO_STAGE, _addedView);
			onRegister();
		}


		public function onRegister( ):void { }
		

		public function onRemove( ):void {}		
		
		
		
		public function get controllerViewComp():Object {
			return _controllerViewComp;
		}
		
		public function get controllerModel():Model {
			return _controllerModel;
		}
		
		public function get controllerName():String {
			return _controllerName;
		}
		
		public function set controllerName(value:String):void {
			_controllerName = value;
		}
		
	}

}