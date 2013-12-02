package com.project.view {
	import com.bengalamedialab.mvc.View;
	import com.project.model.WindowModel;
	import flash.display.MovieClip;
	
	/**
	* ...
	* @author Marcos Diaz / http://www.blogdev.bengalamedialab.com/
	*/
	public class WindowView extends View {
		public static var NAME:String = "WindowView";
		public static var SHOW:String = "Show";
		public static var HIDE:String = "Hide";
		private var _windowViewModel:WindowModel;
		private var _windowViewName:String;
		private var _windowViewLayout:MovieClip;
		
		
		public function WindowView(model:WindowModel, viewName:String=null) {
			_windowViewModel = model;
			_windowViewName = (viewName != null) ? viewName : NAME;		
			super(_windowViewModel, _windowViewName);
			init();
		}	
		private function init():void {
			_windowViewLayout = new WindowViewLayout();
			addChild ( _windowViewLayout );
		}
		
		public function get windowViewLayout():MovieClip {
			return _windowViewLayout;
		}
		
	}

}