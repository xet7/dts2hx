package express_serve_static_core;
typedef IRoute = {
	var path : String;
	var stack : Dynamic;
	var all : IRouterHandler<IRoute>;
	var get : IRouterHandler<IRoute>;
	var post : IRouterHandler<IRoute>;
	var put : IRouterHandler<IRoute>;
	var delete : IRouterHandler<IRoute>;
	var patch : IRouterHandler<IRoute>;
	var options : IRouterHandler<IRoute>;
	var head : IRouterHandler<IRoute>;
	var checkout : IRouterHandler<IRoute>;
	var copy : IRouterHandler<IRoute>;
	var lock : IRouterHandler<IRoute>;
	var merge : IRouterHandler<IRoute>;
	var mkactivity : IRouterHandler<IRoute>;
	var mkcol : IRouterHandler<IRoute>;
	var move : IRouterHandler<IRoute>;
	@:native("m-search")
	var m_search : IRouterHandler<IRoute>;
	var notify : IRouterHandler<IRoute>;
	var purge : IRouterHandler<IRoute>;
	var report : IRouterHandler<IRoute>;
	var search : IRouterHandler<IRoute>;
	var subscribe : IRouterHandler<IRoute>;
	var trace : IRouterHandler<IRoute>;
	var unlock : IRouterHandler<IRoute>;
	var unsubscribe : IRouterHandler<IRoute>;
};