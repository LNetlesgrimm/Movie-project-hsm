<?php

include_once('database.php');

$query = "SELECT * FROM categories";
$result = mysqli_query($conn, $query);
$categories = mysqli_fetch_all($result, MYSQLI_ASSOC);

if (isset($_POST['category'])) {
    $input = htmlspecialchars(trim($_POST['category']));
    foreach ($categories as $category) :
        if (strpos($category['name'], $input) !== false) : ?>
            <div>
                <h2><?php echo $category['name']; ?></h2>
                <p><?php echo $category['description']; ?></p>
            </div>
        <?php  
        endif;
    endforeach;
}

?>