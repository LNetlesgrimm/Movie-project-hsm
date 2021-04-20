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
        <br>
        <?php
        include_once('scripts_php/database.php');

        $playlistQuery = "SELECT * FROM playlist as p INNER JOIN users as u ON u.id = p.user_id";
        $result = mysqli_query($conn, $playlistQuery);
        $playlists = mysqli_fetch_all($result, MYSQLI_ASSOC); ?>

        <table>
            <?php foreach ($playlists as $playlist) { ?>
                <tr>
                    <td><?php echo  $playlist["name"] ?></td>
                </tr>
            <?php } ?>
        </table>
        <br>
        <?   endforeach;
                ?>
        <form action="" method="post">
            <input type="text" name="playlistName" placeholder="name your playlist" id="">
            <input type="submit" value="Create a new playlist">
            <?php
            if (isset($_POST["submit"])) {
                $name = htmlspecialchars(trim($_POST['playlistName']));
                $insertQuery = "INSERT INTO playlist(name) VALUES('$name')";
                $insertResult = mysqli_query($conn, $insertQuery);

                if ($insertResult) {
                    echo "new Playlist saved";
                } else {
                    echo '<p class = "error">Problem creating your playlist</p>';
                }
            }
            ?>
        </form>
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