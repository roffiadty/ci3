<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('template/page_header'); ?>
<body class="nav-md bg-dark">
  <?php $this->load->view("template/page_menu"); ?>
  <?php $this->load->view('template/page_top'); ?>
<div class="right_col bg-black" role="main">
<div class="clearfix">

</div>
<?php echo $subview ?>
</div>

<?php $this->load->view('template/page_footer'); ?>