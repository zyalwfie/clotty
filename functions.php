<?php
include_once 'connect.php';

function queryRead($query)
{
    global $connect;
    $results = mysqli_query($connect, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($results)) {
        $rows[] = $row;
    }

    return $rows;
}
