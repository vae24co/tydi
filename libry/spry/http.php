<?php //*** HttpX » Tydi™ Framework © 2024 ∞ AO™ • @iamodao • www.osawere.com ∞ Apache License ***//

namespace Tydi\Spry;

class HttpX {

	private static $init = false;
	protected static $port;
	protected static $scheme;
	protected static $domain;
	protected static $uri;





	// • ==== init → ... »
	public static function init() {
		if (self::$init === false) {
			self::$port = ServerX::port();
			self::$scheme = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? 'https://' : 'http://';
			self::$domain = ServerX::name();
			self::$uri = UriX::is();
			self::$init = true;
		}
		return;
	}





	// • ==== port → ... »
	public static function port() {
		self::init();
		return self::$port;
	}





	// • ==== scheme → ... »
	public static function scheme() {
		self::init();
		return self::$scheme;
	}





	// • ==== domain → ... »
	public static function domain() {
		self::init();
		return self::$domain;
	}




	// • ==== uri → ... »
	public static function uri($withParam = true) {
		self::init();
		if (!$withParam) {
			// TODO: Implement Stringx::before()
			$uri = StringX::before(self::$uri, '?');
			if (!empty($uri)) {
				return $uri;
			}
		}
		return self::$uri;
	}





	// • ==== url → ... »
	public static function url($withParam = false) {
		self::init();
		return self::scheme() . self::domain() . self::uri($withParam);
	}





	// • ==== urlBase → ... »
	public static function urlBase() {
		self::init();
		return self::scheme() . self::domain();
	}





	// • ==== urlWithPort → ... »
	public static function urlWithPort($withParam = false) {
		self::init();
		return self::scheme() . self::domain() . ':' . self::port() . self::uri($withParam);
	}

} //> end of HttpX