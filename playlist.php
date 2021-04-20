<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <title>Document</title>
</head>

<body>
    <nav>
        <?php
        require_once "components/nav.php";
        ?>
    </nav>
    <main>
        <h1>Your playlists</h1>
        <p>Here you can find all your saved playlists</p>
        <form action="" method="post">
            <input type="submit" value="Create a new playlist">
        </form>
        <br>
        <?php
        include_once('database.php');

        $selectQuery = "SELECT * FROM playlist WHERE users.id = user_id";
        $result = mysqli_query($conn, $selectQuery);
        $playlists = mysqli_fetch_all($result, MYSQLI_ASSOC);

        foreach ($playlists as $playlist) : ?>
            < option value="<?= $playlist['name']; ?>"> <?= $playlist['name']; ?> < /option>
                <?php
            endforeach;
                ?>
    </main>
    <footer>
        <?php
        require_once "components/footer.html";
        ?>
    </footer>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <script>

    </script>

</body>

</html>