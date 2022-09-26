<div class="x_panel bg-dark text-white">
  <div class="x_title">
    <h2>Article</h2>
    <ul class="nav navbar-right panel_toolbox">
      <li>
        <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
      </li>
      <li>
        <a class="close-link"><i class="fa fa-close"></i></a>
      </li>
    </ul>
    <div class="clearfix"></div>
  </div>
  <div class="x_content">
    <form>
      <select id="article" class="js-example-placeholder-single" style="width: 100%;">
        <option value=""></option>
        <?php foreach ($article as $r) : ?>
          <option value="<?php echo $r->article_name ?>"><?php echo $r->article_name ?></option>
        <?php endforeach ?>
      </select><br><br>

      <select id="brand" class="js-example-placeholder-single" style="width: 100%;">
        <option value=""></option>
      </select> <br><br>

      <select id="dept" class="js-example-placeholder-single" style="width: 100%;">
        <option value=""></option>
      </select> <br><br>

      <select id="kategori" class="js-example-placeholder-single" style="width: 100%;">
        <option value=""></option>
      </select> <br><br>

      <select id="bahan" class="js-example-placeholder-single" style="width: 100%;">
        <option value=""></option>
      </select> <br><br>

      <select id="store" class="js-example-placeholder-single" style="width: 100%;">
        <option value=""></option>
      </select> <br><br>

      <select id="kota" class="js-example-placeholder-single" style="width: 100%;">
        <option value=""></option>
      </select>
    </form><br><br>

    
    
    <h2>contoh</h2>
    <div class="table-responsive">
      <table id="resultArticlee" class="table text-white">
        <thead>
          <th>No</th>
          <th>Article</th>
          <th>Brand</th>
          <th>Dept</th>
          <th>Kategori</th>
          <th>Bahan</th>
          <th>Motif</th>
          <th>Warna</th>
          <th>Store</th>
          <th>Kota</th>
        </thead>
        <tbody>
          <?php $no = 1 ?>
          <?php $tess = "" ?>
          <?php $tes= "'%$tess%'" ?>
          <?php $db = $this->db->query("SELECT * FROM article_wip_copy INNER JOIN brand ON article_wip_copy.id_brand=brand.id_brand INNER JOIN dept ON article_wip_copy.id_dept=dept.id_dept INNER JOIN kategori ON article_wip_copy.id_kategori=kategori.id_kategori INNER JOIN bahan ON article_wip_copy.id_bahan=bahan.id_bahan INNER JOIN motif ON article_wip_copy.id_motif=motif.id_motif INNER JOIN warna ON article_wip_copy.id_warna=warna.id_warna INNER JOIN store ON article_wip_copy.id_store=store.id_store INNER JOIN stock_kota ON article_wip_copy.nama_kota=stock_kota.nama_kota WHERE article_name LIKE $tes") ?>
          <?php foreach ($db->result() as $ar) : ?>
            <tr>
              <th><?php echo $no++ ?></th>
              <td><?php echo $ar->article_name ?></td>
              <td><?php echo $ar->brand_name ?></td>
              <td><?php echo $ar->dept_name ?></td>
              <td><?php echo $ar->kategori_name ?></td>
              <td><?php echo $ar->bahan_name ?></td>
              <td><?php echo $ar->motif_name ?></td>
              <td><?php echo $ar->warna_name ?></td>
              <td><?php echo $ar->name_store ?></td>
              <td><?php echo $ar->nama_kota ?></td>
            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
    </div>
  </div>
</div>