<?php

include_once('database.php');

$movieQuery = "SELECT * FROM movies";
$resultMovie = mysqli_query($conn, $movieQuery);
$movies = mysqli_fetch_all($resultMovie, MYSQLI_ASSOC);

if (isset($_POST['search'])) {
    $movieInput = htmlspecialchars(trim($_POST['search']));
    foreach ($movies as $movie) :
        if (strpos($movie['title'], $movieInput) !== false) : ?>
            <div>
                <h2><?php echo $movie['title']; ?></h2>
                <img src="<?= $movie['poster'] ?>" alt=""/>
                <p><?php echo $movie['date_of_release']; ?></p>
            </div>
        <?php  
        endif;
    endforeach;
}

?>