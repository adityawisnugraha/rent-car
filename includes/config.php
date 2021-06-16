<?php 
// DB credentials.
define('DB_HOST','mysql.idhostinger.com');
define('DB_USER','u277999506_rent');
define('DB_PASS','u277999506_');
define('DB_NAME','u277999506_rent');
// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>