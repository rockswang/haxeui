package haxe.ui.popup;
import haxe.ui.core.Component;

class CustomPopup extends Popup {
	public var customContent:Component;
	
	public function new() {
		super();
	}
	
	//************************************************************
	//                  OVERRIDES
	//************************************************************
	public override function initialize():Void {
		super.initialize();
		
		content.addChild(customContent);
		
		height = content.padding.top + content.padding.bottom + customContent.height;
		Popup.centerPopup(this);
	}
}