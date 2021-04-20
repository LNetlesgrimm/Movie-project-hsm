<?php

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <title>Movie Club</title>
</head>

<body>
    <nav>
        <?php
        require_once "components/nav.php";
        ?>


    </nav>
    <main>
        <h1>Movie Master</h1>

        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae ipsa impedit iusto alias. Cum nostrum nesciunt earum obcaecati explicabo eos? Debitis quia quae sapiente temporibus ipsa officia dolores nobis possimus?
            Laudantium officiis voluptatem architecto! Itaque cumque modi eligendi veritatis, similique sint obcaecati. Earum, dolorum veniam. Magnam amet nulla natus, accusamus nobis in molestias, obcaecati earum corrupti error deleniti et dolorum.</p>

        <form action="" method="post" id="mainsearch">
            <input type="text" name="find" id="find">
            <input type="submit" value="Go!">

        </form>

        Or go to <a href="playlist.php">your playlist</a>.

    </main>
    <footer>
        <?php
        require_once "components/footer.html";
        ?>

    </footer>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</body>

</html>