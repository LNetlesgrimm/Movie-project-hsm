<?php
include_once('database.php');

$movieQuery = "SELECT * FROM movies";
$resultMovie = mysqli_query($conn, $movieQuery);
$movies = mysqli_fetch_all($resultMovie, MYSQLI_ASSOC);

$json_movies = json_encode($movies, JSON_PRETTY_PRINT);

echo $json_movies;

