<?php

// Cleaning
$title = htmlspecialchars(trim($_POST['title']));
$poster = htmlspecialchars(trim($_POST['poster']));
$date = htmlspecialchars(trim($_POST['date_of_release']));
$category = htmlspecialchars(trim($_POST['categories']));
$link = htmlspecialchars(trim($_POST['movie_link']));
$synopsis = htmlspecialchars(trim($_POST['synopsis']));
echo $title;
// hash

// Connect DB
include_once('database.php');
$movieId = $_POST['id'];
echo $movieId;
//query
$query = 'UPDATE movies
        SET 
        title ="' . $title . '",
        poster = "' . $poster . '",
        date_of_release = "' . $date . '",
        category_id = "' . $category . '",
        movie_link= "' . $link . '",
        synopsis= "' . $synopsis . '"
        WHERE id =' . $movieId;
echo $query;

$result = mysqli_query($conn, $query);

if ($result)
    echo 'OK';
else
    echo '<p style="color:red">Problem with query</p>';
