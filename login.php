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

        <input type="email" name="email" placeholder="enter email">
        <input type="password" name="password" placeholder="enter password">

        <input type="submit" value="submit">

    </form>
    <div id="results"></div>

    <footer>
    <?php
        require_once "components/footer.html";
        ?>
    </footer>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <script>
        $(function() {
            $('input[type="submit"]').click(function(e) {
                e.preventDefault();
                $.ajax({
                        url: 'scripts_php/login.php',
                        method: 'post',
                        data: $('form').serialize()
                    })
                    .done(function(result) {
                        $("#results").html(result);
                    })
                    .fail(function(result) {
                        console.log('AJAX Failed');
                    });
            });

        });
    </script>
</body>

</html>