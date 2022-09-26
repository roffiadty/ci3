<!-- page content -->
<div class="container bg-black">
	<h3 class="text-center text-bold text-white">WIP MONITORING</h3>
	<br>
	<div class="row">
		<div class="col-md-3">

			<!-- collection -->
			<div class="x_panel bg-dark">
				<div class="x_title text-white">
					<h2>Collection</h2>
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

					<div class="row">
						<div class="col-md-12">
							<button type="button" class="btn btn-primary text-bold" onClick="visibleResArt()">Article</button>
							<br><br>

							<form>
								<!-- <select id="articleName"  class="js-example-placeholder-single" style="width: 75%;">
									<option value=""></option>
									<?php // foreach ($article as $a) : 
									?>
										<option value="<?php // echo $a->article_name 
																		?>"><?php // echo $a->article_name 
																				?></option>
									<?php // endforeach;
									?>
								</select><br><br> -->

								<a href="<?php echo base_url('Example/Article') ?>" class="btn btn-primary text-bold"> Article Page </a>

								<!-- <select id="form2" class="js-example-basic-single" style="width: 75%;">
							<option value=""></option>
						</select><br><br>
						<select id="form3" class="js-example-basic-single" style="width: 75%;">
							<option value=""></option>
						</select> -->
							</form> <br>




							<!-- <div class="btn-group">
								<button
									type="button"
									class="btn btn-primary dropdown-toggle text-bold"
									data-toggle="dropdown"
									aria-haspopup="true"
									aria-expanded="false"
								>
									Article <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" style="border:0px;">
									<li>
										<div class="table-responsive bg-accent">
											<table id="tableA" class="table text-white">
												<thead>
													<th>Article</th>
												</thead>
												<tbody>
													<?php	// foreach($article as $a) : 
													?>
													<tr>
														<td><?php	// echo $a->article_name 
																?></td>
													</tr>
													<?php	// endforeach ;
													?>
												</tbody>
											</table>
										</div>
									</li>
								</ul>
							</div>
							<br><br> -->
						</div>

						<div class="col-md-12">
							<div class="btn-group">
								<button type="button" class="btn btn-primary dropdown-toggle text-bold" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									Brand <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" style="border:0px;">
									<li>
										<div class="table-responsive bg-accent">
											<table id="tableB" class="table text-white">
												<thead>
													<tr>
														<th>Brand</th>
													</tr>
												</thead>
												<tbody>
													<?php foreach ($brand as $b) : ?>
														<tr>
															<td><?php echo $b->brand_name ?></td>
														</tr>
													<?php endforeach; ?>
												</tbody>
											</table>
										</div>
									</li>
								</ul>
							</div>
							<br><br>
						</div>
						<div class="col-md-12">
							<div class="btn-group">
								<button type="button" class="btn btn-primary dropdown-toggle text-bold" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									Category <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" style="border:0px;">
									<li>
										<div class="table-responsive bg-accent">
											<table id="tableC" class="table text-white">
												<thead>
													<tr>
														<th>Category</th>
													</tr>
												</thead>
												<tbody>
													<?php foreach ($kategori as $d) : ?>
														<tr>
															<td><?php echo $d->kategori_name ?></td>
														</tr>
													<?php endforeach; ?>
												</tbody>
											</table>
										</div>
									</li>
								</ul>
							</div>
							<br><br>
						</div>
						<div class="col-md-12">
							<div class="btn-group">
								<button type="button" class="btn btn-primary dropdown-toggle text-bold" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									Dept <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" style="border:0px;">
									<li>
										<div class="table-responsive bg-accent">
											<table id="tableD" class="table text-white">
												<thead>
													<tr>
														<th>Dept</th>
													</tr>
												</thead>
												<tbody>
													<?php foreach ($dept as $c) : ?>
														<tr>
															<td><?php echo $c->dept_name ?></td>
														</tr>
													<?php endforeach; ?>
												</tbody>
											</table>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>


		</div>

		<div class="col-md-6">
			<!-- map -->
			<div class="x_panel bg-dark">
				<div class="x_title text-white">
					<h2>Map</h2>
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
					<!-- <label class="text-white">Add Pin</label>
						<form class="form-inline" action="" method="POST" id="myForm">
						<select class="btn btn-default" name="isi">
							<option value=""> --------- Pilih Kota --------- </option>
						<?php // foreach ($stock_kota as $city)	: 
						?>
						<?php	// $id_kot = $city->id_kota 
						?>
						<?php	// $kotaa = $city->nama_kota 
						?>
						<?php	// $stocks = $city->stock_kota 
						?>
						<?php	// if($stocks!==NULL) {

						// echo $kota ;
						// echo $stock ;
						//echo '<option ' . 'value='. '"' . $id_kot . '"' . '>' . $kotaa . '</option>';
						//} ;
						?>
					
						<?php	// endforeach ;
						?>
						</select>
						<input class="btn btn-primary" type="submit" name="submit" value="Add Pin"/>
						<a href="<?php	// echo base_url() 
											?>" class="btn btn-danger">Remove Pin</a>
						</form><br> -->
					<?php
					// if (isset($_POST['submit'])) {
					// 	$gas = $_POST['isi'];
					// 	echo $gas;
					// }
					?>

					<div id="vmap" style="height: 400px"></div>
				</div>
			</div>
		</div>

		<div class="col-md-3">
			<!-- stock per kota -->
			<div class="x_panel bg-dark">
				<div class="x_title text-white">
					<h2>Kota</h2>
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
					<div class="table-responsive">
						<table id="tableKota" class="table text-white">
							<thead>
								<tr>
									<th>No</th>
									<th>Kota</th>
									<th>Stock</th>
								</tr>
							</thead>
							<tbody>
								<?php $i = 1 ?>
								<tr>
									<?php foreach ($stock_kota as $e) : ?>
										<?php $kota = $e->nama_kota ?>
										<?php $stock = $e->stock_kota ?>
										<?php if ($stock !== NULL) {
											// echo '<div' . ' id="' . 'path' . '"' . ' class="' . 'hidden' . '"' . '>' . implode($id_kota," ") . '</div>';
											// echo '<div' . ' id="' . $id_kota . '"' . '>'  . '</div>';

											echo '<th>' . $i++ . '</th>';
											echo '<td>' . $kota . '</td>';
											echo '<td>' . $stock . '</td>';


											// echo '<th>'. $i++ . '</th>';
											// echo '<td>'. $kota .'</td>';
											// echo '<td>'. $stock .'</td>';
											// $id_kota[] = $e->id_kota;
											// $arr_id_kota[]=$id_kota;
										}; ?>

								</tr>
							<?php endforeach; ?>

							<div id="path" class="hidden"><?php // echo implode('x',$id_kota)."x" ;
																						?></div>
							<?php // var_dump(implode('x',$id_kota)."x") 
							?>
							</tbody>
						</table>
					</div>
					<div>
						<?php // foreach ($provinsi as $prov) : 
						?>
						<?php // print_r($prov->nama_provinsi) 
						?>
						<?php // endforeach ;
						?>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-12">
			<div id="resultArt" class="hidden">
				<div class="x_panel bg-dark">
					<div class="x_title text-white">
						<h2>Article Result</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li>
								<button type="button" class="bg-red" style="border-radius:2px !important;" onClick="visibleResArt()"><i class="fa fa-close"></i></button>
								<!-- <a class="collapse-link"><i class="fa fa-chevron-up"></i></a> -->
							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<div class="table-responsive">
							<table id="resultArticle" class="table text-white">
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
									<?php foreach ($article_result as $ar) : ?>
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
			</div>
		</div>
	</div>


	<div class="x_panel bg-dark">
		<div class="x_title text-white">
			<h2>Article Result</h2>
			<ul class="nav navbar-right panel_toolbox">
				<li>
					<button type="button" class="bg-red" style="border-radius:2px !important;" onClick="visibleResArt()"><i class="fa fa-close"></i></button>
					<!-- <a class="collapse-link"><i class="fa fa-chevron-up"></i></a> -->
				</li>
			</ul>
			<div class="clearfix"></div>
		</div>
		<div class="x_content">
			<div class="table-responsive">
				<table id="resultArticle" class="table text-white">
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
						<?php $kopi = '<div id="kol"></div>' ?>
						<?php $kopii = $kopi ?>
						<?php var_dump($kopii)  ?>
						<?php
						$result_article = $this->db->query("SELECT * FROM article_wip_copy INNER JOIN brand ON article_wip_copy.id_brand=brand.id_brand INNER JOIN dept ON article_wip_copy.id_dept=dept.id_dept INNER JOIN kategori ON article_wip_copy.id_kategori=kategori.id_kategori INNER JOIN bahan ON article_wip_copy.id_bahan=bahan.id_bahan INNER JOIN motif ON article_wip_copy.id_motif=motif.id_motif INNER JOIN warna ON article_wip_copy.id_warna=warna.id_warna INNER JOIN store ON article_wip_copy.id_store=store.id_store INNER JOIN stock_kota ON article_wip_copy.nama_kota=stock_kota.nama_kota WHERE article_name LIKE '%%'");
						?>


						<?php $num = 1 ?>
						<?php foreach ($result_article->result() as $kok) : ?>
							<tr>
								<th><?php echo $num++ ?></th>
								<td><?php echo $kok->article_name ?></td>
								<td><?php echo $kok->brand_name ?></td>
								<td><?php echo $kok->dept_name ?></td>
								<td><?php echo $kok->kategori_name ?></td>
								<td><?php echo $kok->bahan_name ?></td>
								<td><?php echo $kok->motif_name ?></td>
								<td><?php echo $kok->warna_name ?></td>
								<td><?php echo $kok->name_store ?></td>
								<td><?php echo $kok->nama_kota ?></td>
							</tr>
						<?php endforeach; ?>
					</tbody>
				</table>
			</div>

		</div>
	</div>


	<div class="row">

		<div class="col-md-6">
			<!-- stock per store -->
			<div class="x_panel bg-dark">
				<div class="x_title text-white">
					<h2>Store</h2>
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
					<div class="table-responsive">
						<table id="tableStore" class="table text-white">
							<thead>
								<tr>
									<th>No</th>
									<th>Store</th>
									<th>Stock</th>
									<th>%</th>
								</tr>
							</thead>
							<tbody>
								<!-- jumlahin total stock -->
								<?php $jumlah = 0 ?>
								<?php foreach ($stock_store as $hitung_jumlah) : ?>
									<?php $sum = $hitung_jumlah->stock_store ?>
									<?php $jumlah += $sum ?>
								<?php endforeach; ?>

								<!-- persentase stock per store -->
								<?php $p = 1 ?>
								<?php foreach ($stock_store as $g) : ?>
									<?php $persen = $g->stock_store / $jumlah * 100 ?>
									<tr>
										<th><?php echo $p++ ?></th>
										<td><?php echo $g->name_store ?></td>
										<td><?php echo $g->stock_store ?></td>
										<td><?php echo $int_persen = (int)$persen ?> %</td>
									</tr>
								<?php endforeach; ?>
							</tbody>
						</table>
						<div class="table-responsive">
							<table class="table table-bordered text-white">
								<tr>
									<th class="text-center">Grand Total</th>
									<th class="text-center"><?php echo $jumlah ?></th>
									<!-- persentase stock seluruh store -->
									<?php $hasil_total_persen = 0 ?>
									<?php foreach ($stock_store as $ttl_prsn) : ?>
										<?php $total_persen = $ttl_prsn->stock_store / $jumlah * 100 ?>
										<?php $hasil_total_persen += $total_persen ?>
									<?php endforeach; ?>
									<th class="text-center"><?php echo $hasil_total_persen ?> %</th>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-6">
			<!-- article per wip factory & wip sby -->
			<div class="x_panel bg-dark">
				<div class="x_title text-white">
					<h2>WIP Article</h2>
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
					<div class="table-responsive">
						<table id="tableWip" class="table text-white">
							<thead>
								<th>No</th>
								<th>Article</th>
								<th>WIP Factory</th>
								<th>WIP SBY</th>
							</thead>
							<tbody>
								<?php $x = 1; ?>
								<?php foreach ($article as $f) : ?>
									<tr>
										<th><?php echo $x++ ?></th>
										<td><?php echo $f->article_name ?></td>
										<td><?php echo $f->total_wipfactory ?></td>
										<td><?php echo $f->total_wipsby ?></td>
									</tr>
								<?php endforeach; ?>
							</tbody>
						</table>
					</div>
					<div class="table-responsive">
						<table class="table table-bordered text-white">
							<tr>
								<th class="text-center">Grand Total</th>
								<?php foreach ($total_wip_article as $q) : ?>
									<th class="text-center"><?php echo $q->total_factory ?></th>
									<th class="text-center"><?php echo $q->total_sby ?></th>
								<?php endforeach; ?>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- /page content -->