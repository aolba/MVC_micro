package com.bengalamedialab.mvc {
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	* ...
	* @author Marcos Diaz / http://www.blogdev.bengalamedialab.com/
	*/
	public class View extends Sprite {
		public static var NAME:String = "View";
		public static var SHOW:String = "Show";
		public static var HIDE:String = "Hide";
		
		private var _viewModel:Model;
		protected var _viewName:String;
		
		
		public function View(model:Model, viewName:String=null) {
			_viewModel = model;
			_viewName = (viewName != null) ? viewName : NAME;
			_viewModel.addEventListener(SHOW, show);
			_viewModel.addEventListener(HIDE, hide);
		}
		
		public function show(e:Event):void {
			_viewModel.removeEventListener(SHOW, show);
			this.visible = true;
		}
		
		public function hide(e:Event):void {
			_viewModel.removeEventListener(HIDE, hide);
			this.visible = false;
		}
		
		
		public function get viewModel():Model {
			return _viewModel;
		}
		
		public function get viewName():String {
			return _viewName;
		}
		
		public function set viewName(value:String):void {
			_viewName = value;
		}
		

		
	}

}