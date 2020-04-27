package js.html;
/**
	This interface also inherits properties from EventTarget.
**/
@:native("TextTrack") @tsInterface extern class TextTrack {
	function new();
	final activeCues : js.lib.TextTrackCueList;
	final cues : js.lib.TextTrackCueList;
	final inBandMetadataTrackDispatchType : String;
	final kind : String;
	final label : String;
	final language : String;
	var mode : haxe.extern.EitherType<Float, String>;
	var oncuechange : Null<(ev:Event) -> Any>;
	var onerror : Null<(ev:Event) -> Any>;
	var onload : Null<(ev:Event) -> Any>;
	final readyState : Float;
	final sourceBuffer : Null<SourceBuffer>;
	function addCue(cue:TextTrackCue):Void;
	function removeCue(cue:TextTrackCue):Void;
	final DISABLED : Float;
	final ERROR : Float;
	final HIDDEN : Float;
	final LOADED : Float;
	final LOADING : Float;
	final NONE : Float;
	final SHOWING : Float;
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
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:Event):Bool;
	static var prototype : TextTrack;
	@:native("DISABLED")
	static final DISABLED_ : Float;
	@:native("ERROR")
	static final ERROR_ : Float;
	@:native("HIDDEN")
	static final HIDDEN_ : Float;
	@:native("LOADED")
	static final LOADED_ : Float;
	@:native("LOADING")
	static final LOADING_ : Float;
	@:native("NONE")
	static final NONE_ : Float;
	@:native("SHOWING")
	static final SHOWING_ : Float;
}