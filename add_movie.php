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

    <form action="" method="POST">

        <input type="text" name="title" placeholder=" movie title">

        <input type="text" name="poster" placeholder="Poster's URL">

        <input type="date" name="date_of_release">

        <select name="categories" id="selectCategory"></select>

        <input type="text" name="movie_link" placeholder=" link to the movie">

        <input type="textarea" name="synopsis" placeholder="synopsis">

        <input type="submit" name="submit_btn" placeholder="sub">

    </form>


    <script>
        <?php

        // Make sure inputs are not empty
        if (empty($_POST['title']))
            echo '<p style="color:red">title is mandatory</p>';
        elseif (empty($_POST['poster']))
            echo '<p style="color:red">poster is mandatory</p>';
        elseif (empty($_POST['date_of_release']))
            echo '<p style="color:red">date is mandatory</p>';
        elseif (empty($_POST['movie_link']))
            echo '<p style="color:red">movie link is mandatory</p>';
        elseif (empty($_POST['synopsis']))
            echo '<p style="color:red">movie synopsis is mandatory</p>';
        else {


            // Cleaning
            $title = htmlspecialchars(trim($_POST['title']));
            $poster = htmlspecialchars(trim($_POST['poster']));
            $movie = htmlspecialchars(trim($_POST['movie_link']));
            $synopsis = htmlspecialchars(trim($_POST['synopsis']));
            $date = htmlspecialchars(trim($_POST['date_of_release']));
            // hash

            // Connect DB
            include_once('database.php');

            //query
            $query = "INSERT INTO movies(title, poster, date_of_release, movie_link, synopsis)
    VALUES('$title', '$poster', '$date', '$movie', '$synopsis');";

            $result = mysqli_query($conn, $query);

            if ($result)
                echo '<p style="color:green">Inserted successfully!</p>';
            else
                echo '<p style="color:red">Problem with query</p>';
        }

        ?>
    </script>
</body>

</html>