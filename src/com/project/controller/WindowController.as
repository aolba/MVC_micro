package com.project.controller {
	import com.bengalamedialab.mvc.Controller;
	import com.project.model.PopUpModel;
	import com.project.model.WindowModel;
	import com.project.view.PopUpView;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	/**
	* ...
	* @author Marcos Diaz / http://www.blogdev.bengalamedialab.com/
	*/
	public class WindowController extends Controller {
		public static const NAME:String = "WindowController";
		private var _windowControllerModel:WindowModel;
		private var _windowControllerViewComp:Object;
		protected var _windowControllerName:String;	
		private var _windowViewLayoutRef:Object;
		
		private var _popUpModel:PopUpModel;
		private var _popUpView:PopUpView;		
		private var _popUpController:PopUpController;
		
		
		public function WindowController(model:WindowModel, viewcomponent:Object=null, controllerName:String=null) {
			_windowControllerModel  = model;
			_windowControllerViewComp = viewcomponent;		
			_windowControllerName = (controllerName != null) ? controllerName:NAME;		
			super(_windowControllerModel, _windowControllerViewComp, _windowControllerName);	
		}
		override public function onRegister( ):void {
			_windowViewLayoutRef = _windowControllerViewComp;			
			makeButton(_windowViewLayoutRef.windowViewLayout.popBtn, clickFunction );
			
		}		
		
		private function clickFunction(e:MouseEvent):void {
			_popUpModel = new PopUpModel();
			_popUpView = new PopUpView(_popUpModel);
			_popUpController = new PopUpController(_popUpModel, _popUpView);
			_popUpView.x = ( randomNumber(33.50, 433) );
			_popUpView.y = ( randomNumber(26.05, 447.95) );
			_windowControllerViewComp.addChild (_popUpView);
		}
		
		private function randomNumber(low:Number = 0, high:Number = 1):Number {
		  return Math.floor(Math.random() * (1 + high - low)) + low;
		}		
		
		
		private function makeButton(which_mc:MovieClip, clickFunction:Function=null, overFunction:Function=null, outFunction:Function=null ):void {
			which_mc.buttonMode = true; 
			which_mc.useHandCursor = true;
			which_mc.mouseChildren = false;
			
			if ( clickFunction != null ) {
				which_mc.addEventListener(MouseEvent.CLICK, clickFunction);
			}
			if ( overFunction != null ) {
				which_mc.addEventListener(MouseEvent.MOUSE_OVER, overFunction);
			}
			if ( outFunction != null ) {
				which_mc.addEventListener(MouseEvent.MOUSE_OUT, outFunction);
			}			
			
		}		
	}

}