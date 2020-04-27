package js.html;
/**
	Corresponds to the preserveAspectRatio attribute, which is available for some of SVG's elements.
**/
@:native("SVGPreserveAspectRatio") @tsInterface extern class SVGPreserveAspectRatio {
	function new();
	var align : Float;
	var meetOrSlice : Float;
	final SVG_MEETORSLICE_MEET : Float;
	final SVG_MEETORSLICE_SLICE : Float;
	final SVG_MEETORSLICE_UNKNOWN : Float;
	final SVG_PRESERVEASPECTRATIO_NONE : Float;
	final SVG_PRESERVEASPECTRATIO_UNKNOWN : Float;
	final SVG_PRESERVEASPECTRATIO_XMAXYMAX : Float;
	final SVG_PRESERVEASPECTRATIO_XMAXYMID : Float;
	final SVG_PRESERVEASPECTRATIO_XMAXYMIN : Float;
	final SVG_PRESERVEASPECTRATIO_XMIDYMAX : Float;
	final SVG_PRESERVEASPECTRATIO_XMIDYMID : Float;
	final SVG_PRESERVEASPECTRATIO_XMIDYMIN : Float;
	final SVG_PRESERVEASPECTRATIO_XMINYMAX : Float;
	final SVG_PRESERVEASPECTRATIO_XMINYMID : Float;
	final SVG_PRESERVEASPECTRATIO_XMINYMIN : Float;
	static var prototype : SVGPreserveAspectRatio;
	@:native("SVG_MEETORSLICE_MEET")
	static final SVG_MEETORSLICE_MEET_ : Float;
	@:native("SVG_MEETORSLICE_SLICE")
	static final SVG_MEETORSLICE_SLICE_ : Float;
	@:native("SVG_MEETORSLICE_UNKNOWN")
	static final SVG_MEETORSLICE_UNKNOWN_ : Float;
	@:native("SVG_PRESERVEASPECTRATIO_NONE")
	static final SVG_PRESERVEASPECTRATIO_NONE_ : Float;
	@:native("SVG_PRESERVEASPECTRATIO_UNKNOWN")
	static final SVG_PRESERVEASPECTRATIO_UNKNOWN_ : Float;
	@:native("SVG_PRESERVEASPECTRATIO_XMAXYMAX")
	static final SVG_PRESERVEASPECTRATIO_XMAXYMAX_ : Float;
	@:native("SVG_PRESERVEASPECTRATIO_XMAXYMID")
	static final SVG_PRESERVEASPECTRATIO_XMAXYMID_ : Float;
	@:native("SVG_PRESERVEASPECTRATIO_XMAXYMIN")
	static final SVG_PRESERVEASPECTRATIO_XMAXYMIN_ : Float;
	@:native("SVG_PRESERVEASPECTRATIO_XMIDYMAX")
	static final SVG_PRESERVEASPECTRATIO_XMIDYMAX_ : Float;
	@:native("SVG_PRESERVEASPECTRATIO_XMIDYMID")
	static final SVG_PRESERVEASPECTRATIO_XMIDYMID_ : Float;
	@:native("SVG_PRESERVEASPECTRATIO_XMIDYMIN")
	static final SVG_PRESERVEASPECTRATIO_XMIDYMIN_ : Float;
	@:native("SVG_PRESERVEASPECTRATIO_XMINYMAX")
	static final SVG_PRESERVEASPECTRATIO_XMINYMAX_ : Float;
	@:native("SVG_PRESERVEASPECTRATIO_XMINYMID")
	static final SVG_PRESERVEASPECTRATIO_XMINYMID_ : Float;
	@:native("SVG_PRESERVEASPECTRATIO_XMINYMIN")
	static final SVG_PRESERVEASPECTRATIO_XMINYMIN_ : Float;
}