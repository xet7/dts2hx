package js.html;
extern interface NavigatorID {
	final appCodeName : String;
	final appName : String;
	final appVersion : String;
	final oscpu : String;
	final platform : String;
	final product : String;
	final productSub : String;
	final userAgent : String;
	final vendor : String;
	final vendorSub : String;
	function taintEnabled():Bool;
}