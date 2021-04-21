<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>   
    <nav>
    <?php
    require_once "components/nav.php";
    ?>
    </nav>
    <main>

    <?php
    $movieId = $_GET['id'];
     include_once 'scripts_php/database.php';
     if ($conn) {
         $query = "SELECT * from movie_content mc 
         INNER JOIN movies m ON movie_id = m.id 
         INNER JOIN actors a ON a.id = actor_id 
         INNER JOIN categories c ON c.id = m.category_id 
         where movie_id =". $movieId;
         $results = mysqli_query($conn, $query);
         $movieDetails = mysqli_fetch_all($results, MYSQLI_ASSOC);
         $movieActors = mysqli_num_rows($results);
     }
     ?>
        <div>
            <img src="<?= $movieDetails[0]['poster']; ?>">
            <p>Date: <?= $movieDetails[0]['date_of_release']; ?></p>
        </div>
        <div>
            <div>
                <h3><?= $movieDetails[0]['title']; ?></h3>
                <h4>Category: <?= $movieDetails[0]['name']; ?></h2>
            </div>
            <p>Synopsis: <?= $movieDetails[0]['synopsis']; ?></p>
            <p>Actors: 
            <?php for ($i=0; $i < $movieActors; $i++) {
                echo $movieDetails[$i]['full_name'] . ', ';
            } ?>
            </p>
        </div>
        <a href="<?= $movieDetails[0]['movie_link']; ?>">Link</a>
    </main>

    <footer>
    <?php
        require_once "components/footer.html";
        ?>
    </footer>
</body>
</html>
