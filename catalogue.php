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
    <article>

        <table>
            <tr id="movies">

            </tr>

        </table>
    </article>

    <div id="prevNext">
        <button id="prev">&lt;-- Previous</button>
        <p>Page<span id="page">

            </span></p>
        <button id="next">Next --&gt;</button>
    </div>

    <?php



    ?>

    <footer>
        <?php
        require_once "components/footer.html";
        ?>
    </footer>

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
                .fail(function(result) {
                    console.log('AJAX failed');
                });
            $.ajax({
                    url: 'scripts_php/movies.php',
                    dataType: 'json',
                })
                .done(function(result) {
                    $("#next").click(function() {
                        alert("show the next 8 movies")
                    })
                    $("#prev").click(function() {
                        alert("show the previous 8 movies")
                    })

                    $.each(result, function(key, movie) {
                        $('#movies').append("<td><img src=" +
                            movie.poster + "/img>" +
                            movie.id +
                            movie.title +
                            movie.date_of_release +
                            movie.synopsis + "</td><div><button>Details</button><button>Modify</button></div>");

                    })
                })
                .fail(function(result) {
                    console.log('AJAX failed');
                });
            $('#dateAsc').click(function(e) {
                e.preventDefault();
                $.ajax({
                        url: 'scripts_php/sortDateAsc.php',
                        dataType: 'json',
                    })
                    .done(function(result) {
                        $("#next").click(function() {
                            alert("show the next 8 movies")
                        })
                        $("#prev").click(function() {
                            alert("show the previous 8 movies")
                        })
                        $('#movies').html('');
                        $.each(result, function(key, movie) {
                            $('#movies').append("<article><img src=" +
                                movie.poster + "/img><br><div>" +
                                movie.id + '<br>' +
                                movie.title + "<br>" +
                                movie.date_of_release + "<br>" +
                                movie.synopsis + '</div><div> <a href="details_movie.php?id=' + movie.id + '">Details </a>');

                            /*  <br><a href="
                              movie.php ? id =  ">Read more </a><br></div></article>");*/
                        })
                    })
                    .fail(function(result) {
                        console.log('AJAX failed');
                    });
            });
            $('#dateDesc').click(function(e) {
                e.preventDefault();
                $.ajax({
                        url: 'scripts_php/sortDateDesc.php',
                        dataType: 'json',
                    })
                    .done(function(result) {
                        $("#next").click(function() {
                            alert("show the next 8 movies")
                        })
                        $("#prev").click(function() {
                            alert("show the previous 8 movies")
                        })
                        $('#movies').html('');
                        $.each(result, function(key, movie) {
                            $('#movies').append("<article><img src=" +
                                movie.poster + "/img><br>" +
                                movie.id + "<br>" +
                                movie.title + "<br>" +
                                movie.date_of_release + "<br>" +
                                movie.synopsis + "</article><div><button>Details</button><br><button>Modify</button></div>");
                        })
                    })
                    .fail(function(result) {
                        console.log('AJAX failed');
                    });
            });
        })
    </script>
    <script>
        $(function() {
            $.ajax({

            })
        });
    </script>

</body>

</html>