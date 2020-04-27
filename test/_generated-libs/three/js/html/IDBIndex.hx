package js.html;
/**
	IDBIndex interface of the IndexedDB API provides asynchronous access to an index in a database. An index is a kind of object store for looking up records in another object store, called the referenced object store. You use this interface to retrieve data.
**/
@:native("IDBIndex") @tsInterface extern class IDBIndex {
	function new();
	final keyPath : haxe.extern.EitherType<String, std.Array<String>>;
	final multiEntry : Bool;
	/**
		Returns the name of the index.
	**/
	var name : String;
	/**
		Returns the IDBObjectStore the index belongs to.
	**/
	final objectStore : js.lib.IDBObjectStore;
	final unique : Bool;
	/**
		Retrieves the number of records matching the given key or key range in query.
		
		If successful, request's result will be the count.
	**/
	function count(?key:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, haxe.extern.EitherType<js.lib.Date, haxe.extern.EitherType<IDBArrayKey, IDBKeyRange>>>>>>):IDBRequest<Float>;
	/**
		Retrieves the value of the first record matching the given key or key range in query.
		
		If successful, request's result will be the value, or undefined if there was no matching record.
	**/
	function get(key:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, haxe.extern.EitherType<js.lib.Date, haxe.extern.EitherType<IDBArrayKey, IDBKeyRange>>>>>>):IDBRequest<Any>;
	/**
		Retrieves the values of the records matching the given key or key range in query (up to count if given).
		
		If successful, request's result will be an Array of the values.
	**/
	function getAll(?query:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, haxe.extern.EitherType<js.lib.Date, haxe.extern.EitherType<IDBArrayKey, IDBKeyRange>>>>>>, ?count:Float):IDBRequest<std.Array<Any>>;
	/**
		Retrieves the keys of records matching the given key or key range in query (up to count if given).
		
		If successful, request's result will be an Array of the keys.
	**/
	function getAllKeys(?query:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, haxe.extern.EitherType<js.lib.Date, haxe.extern.EitherType<IDBArrayKey, IDBKeyRange>>>>>>, ?count:Float):IDBRequest<std.Array<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, haxe.extern.EitherType<js.lib.Date, IDBArrayKey>>>>>>>;
	/**
		Retrieves the key of the first record matching the given key or key range in query.
		
		If successful, request's result will be the key, or undefined if there was no matching record.
	**/
	function getKey(key:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, haxe.extern.EitherType<js.lib.Date, haxe.extern.EitherType<IDBArrayKey, IDBKeyRange>>>>>>):IDBRequest<Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, haxe.extern.EitherType<js.lib.Date, IDBArrayKey>>>>>>>;
	/**
		Opens a cursor over the records matching query, ordered by direction. If query is null, all records in index are matched.
		
		If successful, request's result will be an IDBCursorWithValue, or null if there were no matching records.
	**/
	function openCursor(?query:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, haxe.extern.EitherType<js.lib.Date, haxe.extern.EitherType<IDBArrayKey, IDBKeyRange>>>>>>, ?direction:String):IDBRequest<Null<IDBCursorWithValue>>;
	/**
		Opens a cursor with key only flag set over the records matching query, ordered by direction. If query is null, all records in index are matched.
		
		If successful, request's result will be an IDBCursor, or null if there were no matching records.
	**/
	function openKeyCursor(?query:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<js.lib.ArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, haxe.extern.EitherType<js.lib.Date, haxe.extern.EitherType<IDBArrayKey, IDBKeyRange>>>>>>, ?direction:String):IDBRequest<Null<IDBCursor>>;
	static var prototype : IDBIndex;
}