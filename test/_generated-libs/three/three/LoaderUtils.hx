package three;
@:jsRequire("three", "LoaderUtils") extern class LoaderUtils {
	static function decodeText(array:haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Float32Array, js.lib.Float64Array>>>>>>>>):String;
	static function extractUrlBase(url:String):String;
}