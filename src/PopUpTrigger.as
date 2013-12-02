package {
	import com.project.controller.StageController;
	import com.project.model.StageModel;
	import flash.display.Sprite;
	import flash.events.Event;

	
	[SWF(width="500",height="500",frameRate="30",backgroundColor="#D5EAFF")]
	
	public class PopUpTrigger extends Sprite {
		
		private var _stageModel:StageModel;
		private var _stageController:StageController;
		
		public function PopUpTrigger():void {
			this.addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE, init);
			_stageModel = new StageModel();
			_stageController = new StageController(_stageModel, this);
		}
	}
}