package three;
@:jsRequire("three", "Line") extern class Line extends Object3D {
	function new(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:haxe.extern.EitherType<Material, std.Array<Material>>, ?mode:Float);
	var geometry : haxe.extern.EitherType<Geometry, BufferGeometry>;
	var material : haxe.extern.EitherType<Material, std.Array<Material>>;
	var type : String;
	var isLine : Bool;
	function computeLineDistances():Line;
	function raycast(raycaster:Raycaster, intersects:std.Array<Intersection>):Void;
}