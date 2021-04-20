<?php

session_start();

if (empty($_POST['email']))
    echo '<p style="color:red">email is mandatory</p>';
elseif (empty($_POST['password']))
    echo '<p style="color:red">password is mandatory</p>';

else {

    $email = htmlspecialchars(trim($_POST['email']));
    $password = htmlspecialchars(trim($_POST['password']));


    // Connect DB
    include_once('database.php');

    //query
    $query = "SELECT * FROM users WHERE $email == 'email';";

    $result = mysqli_query($conn, $query);

    if ($result == 1) {
        echo '<p style="color:green">connected successfully!</p>';
        $pass = $result['password'];
        if (password_verify($_POST['password'], $pass)) {
            echo 'Passwords match !';
        } else {
            echo 'Passwords DOEST NOT match !';
        }
    } else {
        echo '<p style="color:red">Problem with query</p>';
    }
}
