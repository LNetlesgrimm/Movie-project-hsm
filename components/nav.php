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

<?php

include_once('scripts_php/database.php');

$movieQuery = "SELECT * FROM movies";
$resultMovie = mysqli_query($conn, $movieQuery);
$movies = mysqli_fetch_all($resultMovie, MYSQLI_ASSOC);

$movieInput = htmlspecialchars(trim($_POST["search"]));

if (isset($_POST)) {
    foreach ($movies as $movie)
        if (strpos($movieInput, 0) == $movie) {
            echo $movie['title'];
        } else {
            echo "This category doesn't exist";
        }
}

?>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous">
</script>
<script>
    $(function() {
        $("#search").keyup(function() {
            let input = $("#search").val();
            $.get($movies, {
                movie: input
            }, function(data, status) {
                $('#movieResult').html(data);
            })
        })
    })
</script>