package js.html;
/**
	This Web Crypto API interface provides a number of low-level cryptographic functions. It is accessed via the Crypto.subtle properties available in a window context (via Window.crypto).
**/
@:native("SubtleCrypto") @tsInterface extern class SubtleCrypto {
	function new();
	function decrypt(algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<RsaOaepParams, haxe.extern.EitherType<AesCtrParams, haxe.extern.EitherType<AesCbcParams, haxe.extern.EitherType<AesCmacParams, haxe.extern.EitherType<AesGcmParams, AesCfbParams>>>>>>, key:CryptoKey, data:haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.DataView>>>>>>>>>>):js.lib.PromiseLike<js.lib.ArrayBuffer>;
	function deriveBits(algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<EcdhKeyDeriveParams, haxe.extern.EitherType<DhKeyDeriveParams, haxe.extern.EitherType<ConcatParams, haxe.extern.EitherType<HkdfCtrParams, Pbkdf2Params>>>>>, baseKey:CryptoKey, length:Float):js.lib.PromiseLike<js.lib.ArrayBuffer>;
	function deriveKey(algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<EcdhKeyDeriveParams, haxe.extern.EitherType<DhKeyDeriveParams, haxe.extern.EitherType<ConcatParams, haxe.extern.EitherType<HkdfCtrParams, Pbkdf2Params>>>>>, baseKey:CryptoKey, derivedKeyType:haxe.extern.EitherType<String, haxe.extern.EitherType<ConcatParams, haxe.extern.EitherType<HkdfCtrParams, haxe.extern.EitherType<Pbkdf2Params, haxe.extern.EitherType<AesDerivedKeyParams, HmacImportParams>>>>>, extractable:Bool, keyUsages:std.Array<String>):js.lib.PromiseLike<CryptoKey>;
	function digest(algorithm:haxe.extern.EitherType<String, Algorithm>, data:haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.DataView>>>>>>>>>>):js.lib.PromiseLike<js.lib.ArrayBuffer>;
	function encrypt(algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<RsaOaepParams, haxe.extern.EitherType<AesCtrParams, haxe.extern.EitherType<AesCbcParams, haxe.extern.EitherType<AesCmacParams, haxe.extern.EitherType<AesGcmParams, AesCfbParams>>>>>>, key:CryptoKey, data:haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.DataView>>>>>>>>>>):js.lib.PromiseLike<js.lib.ArrayBuffer>;
	@:overload(function(format:String, key:CryptoKey):js.lib.PromiseLike<js.lib.ArrayBuffer> { })
	@:overload(function(format:String, key:CryptoKey):js.lib.PromiseLike<haxe.extern.EitherType<js.lib.ArrayBuffer, JsonWebKey>> { })
	function exportKey(format:String, key:CryptoKey):js.lib.PromiseLike<JsonWebKey>;
	@:overload(function(algorithm:haxe.extern.EitherType<RsaHashedKeyGenParams, haxe.extern.EitherType<EcKeyGenParams, DhKeyGenParams>>, extractable:Bool, keyUsages:std.Array<String>):js.lib.PromiseLike<CryptoKeyPair> { })
	@:overload(function(algorithm:haxe.extern.EitherType<Pbkdf2Params, haxe.extern.EitherType<AesKeyGenParams, HmacKeyGenParams>>, extractable:Bool, keyUsages:std.Array<String>):js.lib.PromiseLike<CryptoKey> { })
	function generateKey(algorithm:String, extractable:Bool, keyUsages:std.Array<String>):js.lib.PromiseLike<haxe.extern.EitherType<CryptoKey, CryptoKeyPair>>;
	@:overload(function(format:String, keyData:haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.DataView>>>>>>>>>>, algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<HmacImportParams, haxe.extern.EitherType<RsaHashedImportParams, haxe.extern.EitherType<EcKeyImportParams, haxe.extern.EitherType<DhImportKeyParams, AesKeyAlgorithm>>>>>, extractable:Bool, keyUsages:std.Array<String>):js.lib.PromiseLike<CryptoKey> { })
	@:overload(function(format:String, keyData:haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.DataView, JsonWebKey>>>>>>>>>>>, algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<HmacImportParams, haxe.extern.EitherType<RsaHashedImportParams, haxe.extern.EitherType<EcKeyImportParams, haxe.extern.EitherType<DhImportKeyParams, AesKeyAlgorithm>>>>>, extractable:Bool, keyUsages:std.Array<String>):js.lib.PromiseLike<CryptoKey> { })
	function importKey(format:String, keyData:JsonWebKey, algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<HmacImportParams, haxe.extern.EitherType<RsaHashedImportParams, haxe.extern.EitherType<EcKeyImportParams, haxe.extern.EitherType<DhImportKeyParams, AesKeyAlgorithm>>>>>, extractable:Bool, keyUsages:std.Array<String>):js.lib.PromiseLike<CryptoKey>;
	function sign(algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<AesCmacParams, haxe.extern.EitherType<RsaPssParams, EcdsaParams>>>, key:CryptoKey, data:haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.DataView>>>>>>>>>>):js.lib.PromiseLike<js.lib.ArrayBuffer>;
	function unwrapKey(format:String, wrappedKey:haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.DataView>>>>>>>>>>, unwrappingKey:CryptoKey, unwrapAlgorithm:haxe.extern.EitherType<String, Algorithm>, unwrappedKeyAlgorithm:haxe.extern.EitherType<String, Algorithm>, extractable:Bool, keyUsages:std.Array<String>):js.lib.PromiseLike<CryptoKey>;
	function verify(algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<AesCmacParams, haxe.extern.EitherType<RsaPssParams, EcdsaParams>>>, key:CryptoKey, signature:haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.DataView>>>>>>>>>>, data:haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.DataView>>>>>>>>>>):js.lib.PromiseLike<Bool>;
	function wrapKey(format:String, key:CryptoKey, wrappingKey:CryptoKey, wrapAlgorithm:haxe.extern.EitherType<String, Algorithm>):js.lib.PromiseLike<js.lib.ArrayBuffer>;
	static var prototype : SubtleCrypto;
}