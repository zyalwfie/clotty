<?php
session_start();

if (!$_SESSION['value']) {
  header('Location:login.php');
}

if (isset($_POST['logout'])) {
  session_unset();
  header('Location: login.php');
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
  <link rel="stylesheet" href="home.css" />
  <title>Zy Style</title>
</head>

<style>
  body {
    height: 100vh;
    background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("img/banner.jpg");
    background-position: center;
    background-size: cover;
  }

  .menu {
    margin-left: 9px;
    margin-right: 9px;
  }

  .dropdown {
    margin-right: 60px;
    margin-left: 0;
  }

  nav .menu a:hover {
    color: #fff;
  }

  nav .menu a::after {
    content: "";
    display: block;
    border-bottom: 1px solid #fff;
    transform: scaleX(0);
    transition: 0.2s linear;
  }

  nav .menu a:hover::after {
    transform: scaleX(1);
  }

  nav ul .dropdown .nav-link:hover {
    color: #fff;
  }
</style>

<body>
  <!-- Navbar -->
  <nav class="navbar navbar-dark navbar-expand-lg fixed-top">
    <div class="container-fluid">
      <a class="navbar-brand ms-3" href="#"><img class="rounded-circle" src="img//logo/logo.png" width="80" height="80" alt="logo" /></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto fs-4">
          <li class="nav-item menu">
            <a class="nav-link" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item menu">
            <a class="nav-link" href="clothes.php">Clothes</a>
          </li>
          <li class="nav-item menu">
            <a class="nav-link" href="trousers.php">Trousers</a>
          </li>
          <li class="nav-item menu">
            <a class="nav-link" href="shoes.php">Shoes</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Transaction</a>
            <ul class="dropdown-menu dropdown-menu-end fs-5">
              <li><a class="dropdown-item" href="transaction_c.php">Transaction Clothes</a></li>
              <li><a class="dropdown-item" href="transaction_t.php">Transaction Trousers</a></li>
              <li><a class="dropdown-item" href="transaction_s.php">Transaction Shoes</a></li>
              <li>
                <hr class="dropdown-divider" />
              </li>
              <li><a class="dropdown-item" href="customer.php">Details Customer</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
    <form action="" method="post">
      <button type="submit" name="logout">Logout</button>
    </form>
  </nav>
  <!-- Navbar End -->

  <script src="js/bootstrap.bundle.min.js"></script>
</body>

</html>