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
        <form action="" method="GET">
            <select name="categories" id="selectCategory">
                <option value="all">All movies</option>
            </select>
            <input type="submit" id="dateAsc" name="dateAsc" value="Sort by date ASC">
            <input type="submit" id="dateDesc" name="dateDesc" value="Sort by date DESC">
        </form>
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
                        $('#movies').append("<article><img src=" 
                        + movie.poster + "/img><br>" 
                        + movie.id + "<br>" 
                        + movie.title + "<br>" 
                        + movie.date_of_release + "<br>" 
                        + movie.synopsis + "</article><div><button>Details</button><br><button>Modify</button></div>");
                
                    })
                })
                .fail(function (result) {
                    console.log('AJAX failed');
                });
            $('#dateAsc').click(function (e) {
                e.preventDefault();
                $.ajax({
                    url: 'scripts_php/sortDateAsc.php',
                    dataType: 'json',
                })
                .done(function(result) {
                    $('#movies').html('');
                    $.each(result, function(key, movie) {
                        $('#movies').append("<article><img src=" 
                        + movie.poster + "/img><br>" 
                        + movie.id + "<br>" 
                        + movie.title + "<br>" 
                        + movie.date_of_release + "<br>" 
                        + movie.synopsis + "</article><div><button>Details</button><br><button>Modify</button></div>");
                    })
                })
                .fail(function (result) {
                    console.log('AJAX failed');
                });
            });
            $('#dateDesc').click(function (e) {
                e.preventDefault();
                $.ajax({
                    url: 'scripts_php/sortDateDesc.php',
                    dataType: 'json',
                })
                .done(function(result) {
                    $('#movies').html('');
                    $.each(result, function(key, movie) {
                        $('#movies').append("<article><img src=" 
                        + movie.poster + "/img><br>" 
                        + movie.id + "<br>" 
                        + movie.title + "<br>" 
                        + movie.date_of_release + "<br>" 
                        + movie.synopsis + "</article><div><button>Details</button><br><button>Modify</button></div>");
                    })
                })
                .fail(function (result) {
                    console.log('AJAX failed');
                });
            });
        })
    </script>
</body>

</html>