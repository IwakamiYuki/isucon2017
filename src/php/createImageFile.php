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

$dbh = getPDO();
$stmt = $dbh->query('SELECT id FROM image');
$rows = $stmt->fetchall();
$imageIds = [];
foreach ($rows as $row)
{
	$imageIds[] = (int)$row['id'];
}


for($i = 0; $i < count($imageIds); $i++) {

	$stmt = getPDO()->prepare("SELECT * FROM image where id = ?");
	$stmt->execute([$imageIds[$i]]);

	$rows = $stmt->fetchall();
	foreach ($rows as $row)
	{
		$fp = fopen('/home/isucon/isubata/webapp/public/icons/' . $row['name'], 'w');
		fwrite($fp, $row['data']);
		fclose($fp);
	}
}
