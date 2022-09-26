<?php
class Data_model extends CI_Model
{
  public function __construct()
  {
    parent::__construct();
    $this->load->database();
  }

  function article_wip()
  {
    return $this->db->query("SELECT * FROM article_wip");
  }
  function total_wip_article()
  {
    return $this->db->query("SELECT sum(article_wip.total_wipfactory) as total_factory, sum(article_wip.total_wipsby) as total_sby FROM article_wip");
  }
  function brand()
  {
    return $this->db->query("SELECT * FROM brand");
  }
  function dept()
  {
    return $this->db->query("SELECT * FROM dept");
  }
  function kategori()
  {
    return $this->db->query("SELECT * FROM kategori");
  }
  function stock_kota()
  {
    return $this->db->query("SELECT * FROM stock_kota");
  }
  function stock_store()
  {
    return $this->db->query("SELECT * FROM store");
  }
  function provinsi()
  {
    return $this->db->query("SELECT * FROM provinsi");
  }
  function article_result()
  {
    return $this->db->query("SELECT * FROM article_wip_copy INNER JOIN brand ON article_wip_copy.id_brand=brand.id_brand INNER JOIN dept ON article_wip_copy.id_dept=dept.id_dept INNER JOIN kategori ON article_wip_copy.id_kategori=kategori.id_kategori INNER JOIN bahan ON article_wip_copy.id_bahan=bahan.id_bahan INNER JOIN motif ON article_wip_copy.id_motif=motif.id_motif INNER JOIN warna ON article_wip_copy.id_warna=warna.id_warna INNER JOIN store ON article_wip_copy.id_store=store.id_store INNER JOIN stock_kota ON article_wip_copy.nama_kota=stock_kota.nama_kota");
  }
  function article () {
    return $this->db->query("SELECT article_name FROM article_wip_copy");
  }
};
