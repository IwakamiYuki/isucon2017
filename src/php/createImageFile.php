<?php

require 'vendor/autoload.php';

function getPDO()
{
	static $pdo = null;
	if ( ! is_null($pdo))
	{
		return $pdo;
	}

	$host = getenv('ISUBATA_DB_HOST') ?: 'db';
	$port = getenv('ISUBATA_DB_PORT') ?: '3306';
	$user = getenv('ISUBATA_DB_USER') ?: 'isucon';
	$password = getenv('ISUBATA_DB_PASSWORD') ?: 'isucon';
	$dsn = "mysql:host={$host};port={$port};dbname=isubata;charset=utf8mb4";

	$pdo = new PDO(
		$dsn,
		$user,
		$password,
		[
			PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
			PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
		]
	);
	$pdo->query("SET SESSION sql_mode='TRADITIONAL,NO_AUTO_VALUE_ON_ZERO,ONLY_FULL_GROUP_BY'");

	return $pdo;
}

$stmt = getPDO()->prepare("SELECT * FROM image ");
$stmt->execute();

$rows = $stmt->fetchall();
foreach ($rows as $row)
{
	$fp = fopen('/home/isucon/isubata/webapp/public/icons/' . $row['name'],'w');
	fwrite($fp,$row['data']);
	fclose($fp);
}
