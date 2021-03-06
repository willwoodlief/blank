<?php
$isRunningFromBrowser = !isset($GLOBALS['argv']);
if ($isRunningFromBrowser) {
    die('Cannot run this particular script from the web');
}

$localroot =   realpath( dirname( __FILE__ ) );

require_once $localroot.'/../users/private_init.php';
global $abs_us_root;
$abs_us_root = $localroot;

// Set config
$GLOBALS['config'] = array(
    'mysql'      => array(
        'host'         => getenv('DB_HOST'),
        'username'     => getenv('DB_USERNAME'),
        'password'     => getenv('DB_PASSWORD'),
        'db'           =>  getenv('DB_NAME'),
        'charset'       => getenv('DB_CHARSET'),
    ),
    'remember'        => array(
        'cookie_name'   => 'pmqesoxiw318374csb',
        'cookie_expiry' => 604800  //One week, feel free to make it longer
    ),
    'session' => array(
        'session_name' => 'user',
        'token_name' => 'token',
    )
);


require_once $localroot.'/../users/classes/Config.php';
require_once $localroot.'/../users/classes/DB.php';
require_once $localroot.'/../lib/aws/aws-autoloader.php';
require_once $localroot.'/../pages/helpers/pages_helper.php';
require_once $localroot.'/../pages/helpers/mime_type.php';

$db = DB::getInstance();
$settingsQ = $db->query("Select * FROM settings");
$settings = $settingsQ->first();

$web_url =  $settings->website_url;



print "$web_url\n\n";