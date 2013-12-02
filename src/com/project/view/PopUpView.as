package com.project.view {
	import com.bengalamedialab.mvc.View;
	import com.project.model.PopUpModel;
	import flash.display.MovieClip;
	
	/**
	* ...
	* @author Marcos Diaz / http://www.blogdev.bengalamedialab.com/
	*/
	public class PopUpView extends View {
		public static var NAME:String = "PopUpView";
		public static var SHOW:String = "Show";
		public static var HIDE:String = "Hide";
		private var _popUpViewModel:PopUpModel;
		private var _popUpViewName:String;
		private var _popUpViewLayout:MovieClip;		
		
		
		public function PopUpView(model:PopUpModel, viewName:String=null) {
			_popUpViewModel = model;
			_popUpViewName =  (viewName != null) ? viewName : NAME;
			super(_popUpViewModel, _popUpViewName);
			init();
		}
		private function init():void {
			_popUpViewLayout = new PopUpLayout();
			addChild ( _popUpViewLayout );
		}		
		
	}

}