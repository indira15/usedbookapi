<?php

/**
 * Database config variables
 */
$mode = 'PROD';

if ($mode == 'PROD') {
	define("DB_HOST", "localhost");
	define("DB_USER", "indira15_migrate");
	define("DB_PASSWORD", "indira15");
	define("DB_DATABASE", "indira15_books");
} else {
	define("DB_HOST", "localhost");
	define("DB_USER", "id1123595_migrat");
	define("DB_PASSWORD", "indira123");
	define("DB_DATABASE", "id1123595_usedbooks");
}


?>