<?php //*** PathX » Tydi™ Framework © 2024 ∞ AO™ • @iamodao • www.osawere.com ∞ Apache License ***//

class PathX {

	// • property
	private static $ORIG;





	// • ==== call → handler - undefined method » error
	public function __call($method, $argument) {
		$caller = __CLASS__ . '→' . $method . '()';
		return DebugX::oversight(__CLASS__, 'method unreachable', $caller);
	}





	// • ==== callStatic → handler - undefined static method » error
	public static function __callStatic($method, $argument) {
		$caller = __CLASS__ . '::' . $method . '()';
		return DebugX::oversight(__CLASS__, 'static: method unreachable', $caller);
	}





	// • ==== init → ... »
	public static function init(array $config = []) {
		if (isset($config['ORIG'])) {
			self::$ORIG = $config['ORIG'];
		} else {
			self::$ORIG = RD . 'orig' . DS;
		}
		return;
	}




	// • ==== to → ... »
	public static function to($source = null) {
		if (is_null($source)) {
			return RD;
		}
	}





	// • ==== routzr → ... »
	public static function routzr($routzr = 'SITE') {
		$routzr = strtolower($routzr) . '.php';
		$file = self::$ORIG . PATH['BACKEND']['ROUT'] . $routzr;
		if (!is_file($file)) {
			$error = '<strong>' . FRAMEWORK . '™</strong> • Routzr Unavailable! → [<em>' . $file . '</em>]';
			exit($error);
		}
		return $file;
	}





	// • ==== debug → ... »
	public static function debug() {
		return RD . 'debug.php';
	}





	// • ==== load → ... »
	public static function load($source) {
		if ($source === 'DEBUG') {
			$file = self::debug();
			if (file_exists($file)) {
				require $file;
			}
		}
		return;
	}

} //> end of PathX