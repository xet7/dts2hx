package global.jquery;
typedef Queue<TElement> = {
	@:native("0")
	var Zero : String;
} & std.Array<(next:() -> Void) -> Void>;