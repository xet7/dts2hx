package js.html;
/**
	Part of the WebGL API and represents the information returned by calling the WebGLRenderingContext.getShaderPrecisionFormat() method.
**/
@:native("WebGLShaderPrecisionFormat") @tsInterface extern class WebGLShaderPrecisionFormat {
	function new();
	final precision : Float;
	final rangeMax : Float;
	final rangeMin : Float;
	static var prototype : WebGLShaderPrecisionFormat;
}