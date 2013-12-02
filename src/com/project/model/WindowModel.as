package com.project.model {
	import com.bengalamedialab.mvc.Model;
	
	/**
	* ...
	* @author Marcos Diaz / http://www.blogdev.bengalamedialab.com/
	*/
	public class WindowModel extends Model {
		public static const NAME:String = 'WindowModel';
		private var _windowModelName:String;
		
		public function WindowModel(modelName:String = null) {
			_windowModelName = (modelName != null) ? modelName : NAME;		
			super( _windowModelName);
		}
		
	}

}