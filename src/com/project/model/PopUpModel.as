package com.project.model {
	import com.bengalamedialab.mvc.Model;
	
	/**
	* ...
	* @author Marcos Diaz / http://www.blogdev.bengalamedialab.com/
	*/
	public class PopUpModel extends Model {
		public static const NAME:String = 'PopUpModel';
		private var _popUpModelName:String;
		
		public function PopUpModel(modelName:String = null) {
			_popUpModelName = (modelName != null) ? modelName : NAME;
			super ( _popUpModelName );			
		}
		
	}

}