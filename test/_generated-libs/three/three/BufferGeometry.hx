package three;
/**
	This is a superefficent class for geometries because it saves all data in buffers.
	It reduces memory costs and cpu cycles. But it is not as easy to work with because of all the nessecary buffer calculations.
	It is mainly interesting when working with static objects.
**/
@:jsRequire("three", "BufferGeometry") extern class BufferGeometry extends EventDispatcher {
	/**
		This creates a new BufferGeometry. It also sets several properties to an default value.
	**/
	function new();
	/**
		Unique number of this buffergeometry instance
	**/
	var id : Float;
	var uuid : String;
	var name : String;
	var type : String;
	var index : BufferAttribute;
	var attributes : { };
	var morphAttributes : Any;
	var groups : std.Array<{ var start : Float; var count : Float; @:optional
	var materialIndex : Float; }>;
	var boundingBox : Box3;
	var boundingSphere : Sphere;
	var drawRange : { var start : Float; var count : Float; };
	var userData : { };
	function getIndex():BufferAttribute;
	function setIndex(index:haxe.extern.EitherType<std.Array<Float>, BufferAttribute>):Void;
	@:overload(function(name:Any, array:Any, itemSize:Any):Any { })
	function addAttribute(name:String, attribute:haxe.extern.EitherType<BufferAttribute, InterleavedBufferAttribute>):BufferGeometry;
	function getAttribute(name:String):haxe.extern.EitherType<BufferAttribute, InterleavedBufferAttribute>;
	function removeAttribute(name:String):BufferGeometry;
	function addGroup(start:Float, count:Float, ?materialIndex:Float):Void;
	function clearGroups():Void;
	function setDrawRange(start:Float, count:Float):Void;
	/**
		Bakes matrix transform directly into vertex coordinates.
	**/
	function applyMatrix(matrix:Matrix4):BufferGeometry;
	function rotateX(angle:Float):BufferGeometry;
	function rotateY(angle:Float):BufferGeometry;
	function rotateZ(angle:Float):BufferGeometry;
	function translate(x:Float, y:Float, z:Float):BufferGeometry;
	function scale(x:Float, y:Float, z:Float):BufferGeometry;
	function lookAt(v:Vector3):Void;
	function center():BufferGeometry;
	function setFromObject(object:Object3D):BufferGeometry;
	function setFromPoints(points:haxe.extern.EitherType<std.Array<Vector3>, std.Array<Vector2>>):BufferGeometry;
	function updateFromObject(object:Object3D):Void;
	function fromGeometry(geometry:Geometry, ?settings:Any):BufferGeometry;
	function fromDirectGeometry(geometry:DirectGeometry):BufferGeometry;
	/**
		Computes bounding box of the geometry, updating Geometry.boundingBox attribute.
		Bounding boxes aren't computed by default. They need to be explicitly computed, otherwise they are null.
	**/
	function computeBoundingBox():Void;
	/**
		Computes bounding sphere of the geometry, updating Geometry.boundingSphere attribute.
		Bounding spheres aren't' computed by default. They need to be explicitly computed, otherwise they are null.
	**/
	function computeBoundingSphere():Void;
	/**
		Computes vertex normals by averaging face normals.
	**/
	function computeVertexNormals():Void;
	function merge(geometry:BufferGeometry, offset:Float):BufferGeometry;
	function normalizeNormals():Void;
	function toNonIndexed():BufferGeometry;
	function toJSON():Any;
	function clone():BufferGeometry;
	function copy(source:BufferGeometry):BufferGeometry;
	/**
		Disposes the object from memory.
		You need to call this when you want the bufferGeometry removed while the application is running.
	**/
	function dispose():Void;
	var drawcalls : Any;
	var offsets : Any;
	function addIndex(index:Any):Void;
	function addDrawCall(start:Any, count:Any, ?indexOffset:Any):Void;
	function clearDrawCalls():Void;
	static var MaxIndex : Float;
}