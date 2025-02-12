<?php
include "functions.php";

$trousers = queryRead("SELECT trousers.*, category_t.kind FROM trousers LEFT JOIN category_c ON trousers.ctgry_code_t = category_c.ctgry_code_t");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
    <title>Trousers</title>
</head>

<style>
    body {
        height: 100vh;
        background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("img/trousers.jpg");
        background-position: center;
        background-size: cover;
    }

    h3 a {
        color: #38E54D !important;
        border-color: #38E54D !important;
    }

    h3 a:hover {
        color: black !important;
        background-color: #38E54D !important;
    }
</style>

<body>
    <div class="container-fluid home">
        <div class="container mt-3">
            <a href="/" class="btn btn-outline-light"><i class="bi bi-arrow-left"></i> Back</a>
            <h1 class="display-1 text-center text-white">Trousers</h1>
            <h3><a href="input_trousers.php" class="btn btn-outline-success"><i class="bi bi-plus-lg"></i> Input</a></h3>
            <table class="table text-white text-center">
                <thead>
                    <tr class="align-middle">
                        <th rowspan="2">#</th>
                        <th rowspan="2">Code</th>
                        <th rowspan="2">Brand</th>
                        <th rowspan="2">Kind</th>
                        <th colspan="2">Description</th>
                        <th rowspan="2">Picture</th>
                        <th rowspan="2">Price</th>
                        <th rowspan="2" colspan="2">Option</th>
                    </tr>
                    <tr>
                        <th>Size</th>
                        <th>About</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $index = 1; ?>
                    <?php foreach ($trousers as $row) : ?>
                        <tr class="align-middle">
                            <th><?= $index++; ?></th>
                            <td><?= $row['code_t'] ?></td>
                            <td><?= $row['brand'] ?></td>
                            <td><?= $row['kind'] ?></td>
                            <td><?= $row['size'] ?></td>
                            <td><?= $row['about'] ?></td>
                            <td><img src="img/trousers/<?= $row['picture'] ?>" alt="foto" style="width: 75px;"></td>
                            <td><?= $row['price'] ?></td>
                            <td class="text-end">
                                <a href="edit_trousers.php?code_t=<?php echo $row['code_t'] ?>"><button type='button' class='btn btn-info text-white'><i class="bi bi-pen"></i></button></a>
                            </td>
                            <td class="text-start">
                                <a href="delete_trousers.php?code_t=<?php echo $row['code_t'] ?>"><button type='button' class='btn btn-danger'><i class="bi bi-trash3"></i></button></a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>

        <script>
            $(document).ready(function() {
                $('#example').DataTable();
            });
        </script>
        <script src="js/bootstrap.bundle.min.js"></script>
    </div>
</body>

</html>