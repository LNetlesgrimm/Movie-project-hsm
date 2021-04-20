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
    $query = "SELECT * 
    FROM users
    WHERE email = '$mail'";

    $result = mysqli_query($conn, $query);


    // How many records did I get ?
    $nb_records = mysqli_num_rows($results);

    // Does the user exists in my db ?
    if ($nb_records > 0) {

        $user = mysqli_fetch_assoc($results);

        // Check if passwords matches
        if (password_verify($password, $user['password'])) {
            session_start();
            // Save the mail (from my form) into the session
            $_SESSION['mail'] = $_POST['email'];
            echo '<a href="account.php">Go to account page</a>';
        } else {
            echo 'Password doesnt match';
        }
    } else {
        echo "Wrong credentials.";
    }




    /*
    if ($result == 1) {
        echo '<p style="color:green">connected successfully!</p>';
        $pass = $result['password'];
        if (password_verify($_POST['password'], $pass)) {
            echo 'Passwords match !';
            $_SESSION['email'] = $_POST['email'];
        } else {
            echo 'Passwords DOEST NOT match !';
        }
    } else {
        echo '<p style="color:red">Problem with query</p>';
    }*/
}
