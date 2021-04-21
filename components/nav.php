<?php
session_start()
?>

<img id="mainlogo" src="movie-club.jpg" alt="Movie Club logo">

<ul>
    <li><a href="index.php">Home</a></li>
    <li><a href="catalogue.php">Movies</a></li>
    <li><a href="">Manage categories</a></li>
    <li><a href="">Add movie</a></li>
    <?php
    if (!isset($_SESSION['email'])) {
        echo '<li><a href="login.php">Login</a></li>
                <br>
                <li><a href="register.php">Register</a></li>';
    } else {
        echo '<li><a href="logout.php">Logout</a></li>';
    }
    ?>
</ul>

<form action="" method="post">
    <input type="search" placeholder="find movie" name="search" id="search">
    <input type="submit" value="Go!">
</form>