package ts.lib;
/**
	Used to represent a list of the video tracks contained within a <video> element, with each track represented by a separate VideoTrack object in the list.
**/
@:native("VideoTrackList") extern class VideoTrackList {
	function new();
	final length : Float;
	var onaddtrack : Null<(ev:ts.html.ITrackEvent) -> Any>;
	var onchange : Null<(ev:ts.html.IEvent) -> Any>;
	var onremovetrack : Null<(ev:ts.html.ITrackEvent) -> Any>;
	final selectedIndex : Float;
	function getTrackById(id:String):Null<ts.html.IVideoTrack>;
	function item(index:Float):ts.html.IVideoTrack;
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<ts.html.EventListener, ts.html.EventListenerObject>, ?options:haxe.extern.EitherType<Bool, ts.html.AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, ts.html.AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<ts.html.EventListener, ts.html.EventListenerObject>, ?options:haxe.extern.EitherType<Bool, ts.html.EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, ts.html.EventListenerOptions>):Void;
	static var prototype : IVideoTrackList;
}