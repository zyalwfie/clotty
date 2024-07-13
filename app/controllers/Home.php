<?php

class Home extends Controller
{
  public function index()
  {
    $data = [
      'title' => 'Welcome'
    ];

    $this->view('templates/header', $data);
    $this->view('welcome');
    $this->view('templates/footer');
  }
}
