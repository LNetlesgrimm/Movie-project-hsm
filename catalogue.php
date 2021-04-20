<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie website</title>
    <link rel="stylesheet" href="style/style.css">
</head>

<body>
    <nav>

        <?php
        require_once 'components/nav.php';
        ?>
    </nav>
    <h1>Catalogue</h1>
    <div id="filters">
        <select name="categories" id="selectCategory">
            <option value="all">All movies</option>
        </select>
        <button>Sort by date ASC</button>
        <button>Sort by date DESC</button>
    </div>
    <div id="movies">

    </div>
    <div id="prevNext">
        <a href="">Previous</a>
        Page X
        <a href="">Next</a>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous">
    </script>
    <script>
        $(function() {
            $.ajax({
                    url: 'scripts_php/select_cat.php',
                })
                .done(function(result) {
                    $('#selectCategory').html(result);
                })
                .fail(function (result) {
                    console.log('AJAX failed');
                });
            $.ajax({
                url: 'scripts_php/movies.php',
                dataType: 'json',
                })
                .done(function(result) {
                    $.each(result, function(key, movie) {
                        $('#movies').append("<img src=" + movie.poster + "/>");
                        $('#movies').append(movie.id);
                        $('#movies').append(movie.title);
                        $('#movies').append(movie.date_of_release);
                        $('#movies').append(movie.synopsis);
                    })
                })
                .fail(function (result) {
                    console.log('AJAX failed');
                })
        })
    </script>
</body>

</html>