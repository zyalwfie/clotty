<?php
include_once 'connect.php';

function readQuery($query)
{
    global $connect;

    $rows = [];

    $results = mysqli_query($connect, $query);

    while ($row = mysqli_fetch_assoc($results)) {
        $rows[] = $row;

        return $rows;
    }
}
