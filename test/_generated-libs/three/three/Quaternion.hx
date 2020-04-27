package three;
/**
	Implementation of a quaternion. This is used for rotating things without incurring in the dreaded gimbal lock issue, amongst other advantages.
**/
@:jsRequire("three", "Quaternion") extern class Quaternion {
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float);
	var x : Float;
	var y : Float;
	var z : Float;
	var w : Float;
	/**
		Sets values of this quaternion.
	**/
	function set(x:Float, y:Float, z:Float, w:Float):Quaternion;
	/**
		Clones this quaternion.
	**/
	function clone():Quaternion;
	/**
		Copies values of q to this quaternion.
	**/
	function copy(q:Quaternion):Quaternion;
	/**
		Sets this quaternion from rotation specified by Euler angles.
	**/
	function setFromEuler(euler:Euler):Quaternion;
	/**
		Sets this quaternion from rotation specified by axis and angle.
		Adapted from http://www.euclideanspace.com/maths/geometry/rotations/conversions/angleToQuaternion/index.htm.
		Axis have to be normalized, angle is in radians.
	**/
	function setFromAxisAngle(axis:Vector3, angle:Float):Quaternion;
	/**
		Sets this quaternion from rotation component of m. Adapted from http://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToQuaternion/index.htm.
	**/
	function setFromRotationMatrix(m:Matrix4):Quaternion;
	function setFromUnitVectors(vFrom:Vector3, vTo:Vector3):Quaternion;
	function angleTo(q:Quaternion):Float;
	function rotateTowards(q:Quaternion, step:Float):Quaternion;
	/**
		Inverts this quaternion.
	**/
	function inverse():Quaternion;
	function conjugate():Quaternion;
	function dot(v:Quaternion):Float;
	function lengthSq():Float;
	/**
		Computes length of this quaternion.
	**/
	function length():Float;
	/**
		Normalizes this quaternion.
	**/
	function normalize():Quaternion;
	/**
		Multiplies this quaternion by b.
	**/
	function multiply(q:Quaternion):Quaternion;
	function premultiply(q:Quaternion):Quaternion;
	/**
		Sets this quaternion to a x b
		Adapted from http://www.euclideanspace.com/maths/algebra/realNormedAlgebra/quaternions/code/index.htm.
	**/
	function multiplyQuaternions(a:Quaternion, b:Quaternion):Quaternion;
	function slerp(qb:Quaternion, t:Float):Quaternion;
	function equals(v:Quaternion):Bool;
	@:overload(function(xyzw:std.Array<Float>, ?offset:Float):Quaternion { })
	function fromArray(n:std.Array<Float>):Quaternion;
	@:overload(function(?xyzw:std.Array<Float>, ?offset:Float):std.Array<Float> { })
	function toArray():std.Array<Float>;
	function _onChange(callback:js.lib.Function):Quaternion;
	var _onChangeCallback : js.lib.Function;
	function multiplyVector3(v:Any):Any;
	/**
		Adapted from http://www.euclideanspace.com/maths/algebra/realNormedAlgebra/quaternions/slerp/.
	**/
	@:native("slerp")
	static function slerp_(qa:Quaternion, qb:Quaternion, qm:Quaternion, t:Float):Quaternion;
	static function slerpFlat(dst:std.Array<Float>, dstOffset:Float, src0:std.Array<Float>, srcOffset:Float, src1:std.Array<Float>, stcOffset1:Float, t:Float):Quaternion;
}