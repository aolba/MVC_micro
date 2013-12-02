package com.project.controller {
	import com.bengalamedialab.mvc.Controller;
	import com.bengalamedialab.mvc.View;
	import com.project.model.StageModel;
	import com.project.model.WindowModel;
	import com.project.view.WindowView;
	import flash.display.MovieClip;
	import flash.events.Event;
	/**
	* ...
	* @author Marcos Diaz / http://www.blogdev.bengalamedialab.com/
	*/
	public class StageController extends Controller {
		public static const NAME:String = "StageController";
		private var _windowModel:WindowModel
		private var _windowView:WindowView;
		private var _windowController:WindowController;
		private var _targetAll:Object;
		
		public function StageController(model:StageModel, viewcomponent:Object) {
			super(model, viewcomponent, NAME);	
			_targetAll = viewcomponent;
			_windowModel = new WindowModel();
			_windowView = new WindowView(_windowModel);
			_windowController = new WindowController(_windowModel, _windowView);			
			_targetAll.addChild( _windowView );				
		}
		
	}

}