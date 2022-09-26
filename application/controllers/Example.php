<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Example extends CI_Controller
{

	/**
	 * Index Page for this controller.
	 */

	public function __construct()
	{
		parent::__construct();
		$this->load->model('data_model');
		$this->load->database();
		$this->load->helper('url');
	}

	function index()
	{
		// $data['provinsi'] = $this->data_model->provinsi()->result();
		$data['article_result'] = $this->data_model->article_result()->result();
		$data['total_wip_article'] = $this->data_model->total_wip_article()->result();
		$data['stock_store'] = $this->data_model->stock_store()->result();
		$data['stock_kota'] = $this->data_model->stock_kota()->result();
		$data['kategori'] = $this->data_model->kategori()->result();
		$data['dept'] = $this->data_model->dept()->result();
		$data['brand'] = $this->data_model->brand()->result();
		$data['article'] = $this->data_model->article_wip()->result();
		$data['title'] = 'Dashboard';
		$data['subview'] = $this->load->view('Dashboard', $data, true);
		$this->load->view('_layout_index', $data);
	}

	function sales()
	{
		$data['title'] = 'Sales';
		$data['subview'] = $this->load->view('Sales', $data, true);
		$this->load->view('_layout_index', $data);
	}

	function article()
	{
		$data['article'] = $this->data_model->article()->result();
		$data['article_result'] = $this->data_model->article_result()->result();
		$data['title'] = 'Article';
		$data['subview'] = $this->load->view('Article', $data, true);
		$this->load->view('_layout_index', $data);
	}
}
