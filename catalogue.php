<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie website</title>
    <link rel="stylesheet" href="../style/style.css">
</head>

<body>
    <nav>

        <?php
        require_once 'components/nav.php';
        ?>
    </nav>
    <h1>Catalogue</h1>
    <select name="categories" id="selectCategory">
    </select>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous">
    </script>
    <script>
        $(function() {
            $.ajax({
                    url: '../scripts_php/catalogue.php'
                })
                .done(function(result) {
                    $('#selectCategory').html(result);
                })
        })
    </script>
</body>

</html>