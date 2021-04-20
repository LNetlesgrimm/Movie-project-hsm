<?php

// Make sure inputs are not empty
if (empty($_POST['firstname']))
    echo '<p style="color:red">Firstname is mandatory</p>';
elseif (empty($_POST['lastname']))
    echo '<p style="color:red">lastname is mandatory</p>';
elseif (empty($_POST['email']))
    echo '<p style="color:red">email is mandatory</p>';
elseif (empty($_POST['password']))
    echo '<p style="color:red">password is mandatory</p>';
else {
    // If all inputs are ok


    if ($_POST['password'] === $_POST['confirm_password'] ) {
        hash
    }else{
        echo '<p style="color:red">password and the confirmation must be the same </p>';
    }

    // Cleaning
    $title = htmlspecialchars(trim($_POST['title']));
    $date_of_release = htmlspecialchars(trim($_POST['date_of_release']));
    $poster = htmlspecialchars(trim($_POST['poster']));
    $director_id = htmlspecialchars(trim($_POST['directors']));

    // Connect DB
    $conn = mysqli_connect('localhost', 'root', '', 'movie_db');

    $query = "INSERT INTO movies(title, date_of_release, poster, director_id)
    VALUES('$title', '$date_of_release', '$poster', $director_id);";

    $result = mysqli_query($conn, $query);

    if ($result)
        echo '<p style="color:green">Inserted successfully!</p>';
    else
        echo '<p style="color:red">Problem with query</p>';
}
