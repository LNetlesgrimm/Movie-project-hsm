<?php
include_once('database.php');

$selectQuery = "SELECT * FROM categories";
$result = mysqli_query($conn, $selectQuery);
$categories = mysqli_fetch_all($result, MYSQLI_ASSOC);

foreach ($categories as $category) : ?>
    <option value="<?= $category['name']; ?>"><?= $category['name']; ?></option>
<?php
endforeach;
?>