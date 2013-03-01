<?php
## Let's check the PHP Version, and die ungracefully if it doesn't meet the minimum requirements
if (version_compare(PHP_VERSION, '5.2.3', '<')) {
	die('<strong>ERROR!</strong><br />CubeCart requires <a href="http://www.php.net">PHP</a> Version 5.2 or better. Your server is currently running PHP Version '.PHP_VERSION);
}

## Don't let anything be cached
header('Cache-Control: no-store, no-cache, must-revalidate');
header('Cache-Control: pre-check=0, post-check=0, max-age=0');
header("Expires: -1");
header("Pragma: no-cache");
header('X-Frame-Options: SAME-ORIGIN'); // Do NOT allow iframes

## Include the ini file (required)
require 'ini.inc.php';

define('CC_IN_ADMIN', true);

## Include core functions
require 'includes'.CC_DS.'functions.inc.php';

## Let's bootstrap the encoded files
if (file_exists('admin_no_enc.php')) {
	## Looks like we're in development mode
	require 'admin_no_enc.php';
} else {
	if ($glob['encoder'] == 'zend') {
		$php_version = (PHP_5_3) ? '5.3' : '5.2';
		require 'admin_php'.$php_version.'_enc_zend.php';
	} else {
		require 'admin_enc_ion.php';
	}
}