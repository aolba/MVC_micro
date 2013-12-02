package com.project.controller {
	import com.bengalamedialab.mvc.Controller;
	import com.project.model.PopUpModel;
	
	/**
	* ...
	* @author Marcos Diaz / http://www.blogdev.bengalamedialab.com/
	*/
	public class PopUpController extends Controller {
		public static const NAME:String = "PopUpController";
		
		private var _popUpControllerModel:PopUpModel;
		private var _popUpControllerViewComp:Object;
		protected var _popUpControllerName:String;	
		
		public function PopUpController(model:PopUpModel, viewcomponent:Object=null, controllerName:String=null) {
			_popUpControllerModel  = model;
			_popUpControllerViewComp = viewcomponent;		
			_popUpControllerName = (controllerName != null) ? controllerName:NAME;		
			super(_popUpControllerModel, _popUpControllerViewComp, _popUpControllerName);	
		}
		
	}

}