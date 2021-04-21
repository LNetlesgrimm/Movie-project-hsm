<?php


// inputs
if (empty($_POST['title']))
    $_POST['title'] = $movieDetails[0]['title'];
elseif (empty($_POST['poster']))
    $_POST['poster'] = $movieDetails[0]['poster'];
elseif (empty($_POST['date_of_release']))
    $_POST['date_of_release'] = $movieDetails[0]['date_of_release'];
elseif (empty($_POST['category']))
    $_POST['category'] = $movieDetails[0]['category'];
elseif (empty($_POST['movie_link']))
    $_POST['movie_link'] = $movieDetails[0]['movie_link'];
elseif (empty($_POST['synopsis']))
    $_POST['synopsis'] = $movieDetails[0]['synopsis'];

else {


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
}
