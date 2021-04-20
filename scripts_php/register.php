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


    // Cleaning
    $firstname = htmlspecialchars(trim($_POST['firstname']));
    $lastname = htmlspecialchars(trim($_POST['lastname']));
    $email = htmlspecialchars(trim($_POST['email']));
    $password = htmlspecialchars(trim($_POST['password']));
    $confirm_password = htmlspecialchars(trim($_POST['confirm_password']));
    // hash
    if ($password ===  $confirm_password) {
        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

        // Connect DB
        include_once('database.php');

        //query
        $query = "INSERT INTO users(email, password, firstname, lastname)
    VALUES('$email', '$hashedPassword', '$firstname', '$lastname');";

        $result = mysqli_query($conn, $query);

        if ($result)
            echo '<p style="color:green">Inserted successfully!</p>';
        else
            echo '<p style="color:red">Problem with query</p>';
    } else {
        echo '<p style="color:red">password and the confirmation must be the same </p>';
    }
}
