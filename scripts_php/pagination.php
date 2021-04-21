<?php
include_once('database.php');

$movieQuery = "SELECT * FROM movies LIMIT 8";
$page = 1;
if (isset("#next")) {
    $page = $page + 1;
}
if (isset("#next")) {
    $page = $page - 1;
    if ($page == 0) {
        $page = 1;
    }
}
$resultMovie = mysqli_query($conn, $movieQuery);
$movies = mysqli_fetch_all($resultMovie, MYSQLI_ASSOC);
