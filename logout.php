<?php
include_once('components/nav.php');
session_destroy();
header('location: login.php');
?>