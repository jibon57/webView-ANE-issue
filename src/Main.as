package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.text.TextField;
	import flash.events.*;
	
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	import flash.display.MovieClip;
	import flash.media.StageWebView;
	import flash.geom.Rectangle;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	import flash.desktop.NativeApplication;
	import mx.events.FlexEvent;
	
	import com.myflashlab.air.extensions.webView.RichWebView;
	import com.myflashlab.air.extensions.webView.RichWebViewEvent;
	
	/**
	 * ...
	 * @author jibon
	 */
	public class Main extends Sprite 
	{
		private var button:Sprite = new Sprite();
		private var browser:StageWebView;
		private var _ex:RichWebView;

		public function Main() 
		{
			super();
			
			
			drawButton()
			button.addEventListener(MouseEvent.MOUSE_DOWN, mouseDownHandler);
			addChild(button);
			
			// Entry point
			// New to AIR? Please read *carefully* the readme.txt files!
		}
		
		private function deactivate(e:Event):void 
		{
			// make sure the app behaves well (or exits) when in background
			//NativeApplication.nativeApplication.exit();
		}
		
		private function drawButton():void {
			var textLabel:TextField = new TextField()
			button.graphics.clear();
			button.graphics.beginFill(0xD4D4D4); // grey color
			button.graphics.drawRoundRect(0, 0, 80, 25, 10, 10); // x, y, width, height, ellipseW, ellipseH
			button.graphics.endFill();
			textLabel.text = "Click Me!";
			textLabel.x = 10;
			textLabel.y = 5;
			textLabel.height = 320;
			textLabel.width = 370;
			textLabel.selectable = false;
			button.addChild(textLabel)
		}
		
		private function mouseDownHandler(event:MouseEvent):void {
			_ex = new RichWebView(stage);
			_ex.openWebViewURL(0, 0, stage.stageWidth, stage.stageHeight, "https://google.com/");
			/*browser = new StageWebView();
			browser.stage = this.stage;
			browser.viewPort = new Rectangle( 0, 70, stage.stageWidth, stage.stageHeight);
			browser.loadURL("https://cnpro1.rosettastone.cn");*/
		}
		
	}
	
}