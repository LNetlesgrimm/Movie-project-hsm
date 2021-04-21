<nav>
<?php
require_once "components/nav.php";
$movieId = $_GET['id'];
include_once 'database.php';
if ($conn) {
    $query = "SELECT * from movie_content mc 
    INNER JOIN movies m ON movie_id = m.id 
    INNER JOIN actors a ON a.id = actor_id 
    INNER JOIN categories c ON c.id = m.category_id 
    where movie_id =" . $movieId;
    $results = mysqli_query($conn, $query);
    $movieDetails = mysqli_fetch_all($results, MYSQLI_ASSOC);
}
?>
</nav>
<main>
    <div>
        <img src="<?= $movieDetails[0]['poster']; ?>" width="100px">
        <p>Date: <?= $movieDetails[0]['date_of_release']; ?></p>
    </div>
    <div>
        <div>
            <h3><?= $movieDetails[0]['title']; ?></h3>
            <h2>Category: <?= $movieDetails[0]['name']; ?></h2>
        </div>
        <p>Synopsis: <?= $movieDetails[0]['synopsis']; ?></p>
        <p>Actors: <?= $movieDetails[0]['full_name']; ?></p>
    </div>
    <p>Link: <?= $movieDetails[0]['movie_link']; ?></p>
</main>

<footer>
<?php
    require_once "components/footer.html";
    ?>
</footer>