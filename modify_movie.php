<form action="" method="POST">
    <input type="number" name="id" value="<?= $movieDetails[0]['movie_id']; ?>">
    <input type="text" name="title" placeholder=" movie title" value="<?= $movieDetails[0]['title']; ?>">

    <input type="text" name="poster" placeholder="Poster's URL" value="<?= $movieDetails[0]['poster']; ?>">

    <input type="date" name="date_of_release" value="<?= $movieDetails[0]['date_of_release']; ?>">

    <select name="categories" id="selectCategory"></select>

    <input type="text" name="movie_link" placeholder=" link to the movie" value="<?= $movieDetails[0]['movie_link']; ?>">

    <input type="textarea" name="synopsis" placeholder="synopsis" value="<?= $movieDetails[0]['synopsis']; ?>">

    <input type="submit" name="submit_btn" placeholder="sub">

</form>


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
        $('input[type="submit"]').click(function(e) {
            e.preventDefault();
            $.ajax({
                    url: 'scripts_php/modif.php',
                    method: 'post',
                    data: $('form').serialize()
                })
                .done(function(result) {
                    console.log('AJAX succes');
                    console.log(result);

                })
                .fail(function(result) {
                    console.log('AJAX Failed');
                });
        });

    });
</script>