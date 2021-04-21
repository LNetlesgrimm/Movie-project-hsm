<?php

// Cleaning
$title = htmlspecialchars(trim($_POST['title']));
$poster = htmlspecialchars(trim($_POST['poster']));
$date = htmlspecialchars(trim($_POST['date_of_release']));
$category = htmlspecialchars(trim($_POST['category']));
$link = htmlspecialchars(trim($_POST['movie_link']));
$synopsis = htmlspecialchars(trim($_POST['synopsis']));
// hash

// Connect DB
include_once('database.php');

//query
$query = "UPDATE movies
        SET 
        title =$title,
        poster = $poster,
        date_of_release = $date,
        category_id = $category,
        movie_link=$link,
        synopsis= $synopsis
        WHERE id =" . $movieId;


$result = mysqli_query($conn, $query);

if ($result)
    echo '<p style="color:green">modif successfully!</p>';
else
    echo '<p style="color:red">Problem with query</p>';
