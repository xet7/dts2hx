package three;

@:enum @:jsRequire("three") extern abstract DepthModes(Int) from Int to Int {
	var NeverDepth : DepthModes;
	var AlwaysDepth : DepthModes;
	var LessDepth : DepthModes;
	var LessEqualDepth : DepthModes;
	var EqualDepth : DepthModes;
	var GreaterEqualDepth : DepthModes;
	var GreaterDepth : DepthModes;
	var NotEqualDepth : DepthModes;
}