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
    WHERE email = '$email'";

    $result = mysqli_query($conn, $query);


    // How many records did I get ?
    $nb_records = mysqli_num_rows($result);

    // Does the user exists in my db ?
    if ($nb_records > 0) {

        $user = mysqli_fetch_assoc($result);

        // Check if passwords matches
        if (password_verify($password, $user['password'])) {

            // Save the mail (from my form) into the session
            $_SESSION['email'] = $_POST['email'];
            echo 'ca fonctione té tré tré bien';
        } else {
            echo 'Password doesnt match';
        }
    } else {
        echo "Wrong credentials.";
    }
}
