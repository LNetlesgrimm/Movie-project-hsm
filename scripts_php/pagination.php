<?php
include_once('database.php');

$movieQuery = "SELECT * FROM movies LIMIT 8";

$page = $_GET["numpage"];
echo $page;
