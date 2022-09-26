<?php $article = $_POST["article_name"] ?>
    <?php $option = $_POST["op"] ?>
    <?php if($option == "1"){
      $query = $this->db->query("SELECT article_wip_copy.article_name,article_wip_copy.id_brand FROM article_wip_copy INNER JOIN brand ON article_wip_copy.id_brand=brand.id_brand WHERE article_name LIKE '%$article%'");
      echo "<option value=''>Pilih Brand</option>";
      foreach ($query->result() as $brd) {
        echo "<option value='".$brd->brand_name."'>".$brd->article_name."</option>";
      }
    } else {
      $queryy = $this->db->query("SELECT article_wip_copy.article_name,article_wip_copy.id_dept FROM article_wip_copy INNER JOIN dept ON article_wip_copy.id_dept=dept.id_dept WHERE article_name LIKE '%$article%'");
      echo "<option value=''>Pilih Dept</option>";
      foreach ($queryy->result() as $dpt) {
        echo "<option value='".$dpt->dept_name."'>".$dpt->article_name."</option>";
      }
    } ?>