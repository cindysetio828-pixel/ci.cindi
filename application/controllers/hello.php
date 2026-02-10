<?php

class hello extends CI_Controller {

  public function index()
{
  $data['nama'] = "Queen Cindi";
  $this->load->view('hello_view',$data);
}
public function namasaya()
{
  $data['nama'] = "Queen";
  $this->load->view('hello_view',$data);
}
}