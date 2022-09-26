<!-- footer content -->
<footer class="bg-dark">
  <div class="pull-right">
    <span class="text-white text-bold" style="letter-spacing: 1px;">FOOTER©2022</span>
  </div>
  <div class="clearfix"></div>
</footer>
<!-- /footer content -->
</div>
</div>


<!-- jQuery -->
<script src="<?php echo base_url('assets/vendors/jquery/dist/jquery.min.js') ?>"></script>
<!-- Bootstrap -->
<script src="<?php echo base_url('assets/vendors/bootstrap/dist/js/bootstrap.min.js') ?>"></script>
<!-- FastClick -->
<script src="<?php echo base_url('assets/vendors/fastclick/lib/fastclick.js') ?>"></script>
<!-- NProgress -->
<script src="<?php echo base_url('assets/vendors/nprogress/nprogress.js') ?>"></script>
<!-- Chart.js -->
<script src="<?php echo base_url('assets/vendors/Chart.js/dist/Chart.min.js') ?>"></script>
<!-- gauge.js -->
<script src="<?php echo base_url('assets/vendors/gauge.js/dist/gauge.min.js') ?>"></script>
<!-- bootstrap-progressbar -->
<script src="<?php echo base_url('assets/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js') ?>"></script>
<!-- iCheck -->
<script src="<?php echo base_url('assets/vendors/iCheck/icheck.min.js') ?>"></script>
<!-- Skycons -->
<script src="<?php echo base_url('assets/vendors/skycons/skycons.js') ?>"></script>
<!-- Flot -->
<script src="<?php echo base_url('assets/vendors/Flot/jquery.flot.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/Flot/jquery.flot.pie.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/Flot/jquery.flot.time.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/Flot/jquery.flot.stack.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/Flot/jquery.flot.resize.js') ?>"></script>
<!-- Flot plugins -->
<script src="<?php echo base_url('assets/vendors/flot.orderbars/js/jquery.flot.orderBars.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/flot-spline/js/jquery.flot.spline.min.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/flot.curvedlines/curvedLines.js') ?>"></script>
<!-- DateJS -->
<script src="<?php echo base_url('assets/vendors/DateJS/build/date.js') ?>"></script>
<!-- raphael -->
<script src="<?php echo base_url('assets/vendors/raphael/raphael.min.js') ?>"></script>
<!-- JQVMap -->
<script src="<?php echo base_url('assets/vendors/jqvmap/dist/jquery.vmap.min.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/jqvmap/dist/maps/jquery.vmap.indonesia.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/jqvmap/dist/maps/jquery.vmap.world.js') ?>"></script>
<script>
  // const idPath = document.getElementById('path').textContent
  // const arrPath = idPath.split("x")
  // const arr = arrPath.join(' ')

  // let icon = '📍, '
  // for(i=1; i < arrPath.length; i++) {
  //   // pin = arrPath.join(' ')
  //   pin = arrPath.join(':'+icon)
  //   // gas = (pin+icon)
  // }
  // let arrr = pin.split(" ")
  // let pinArrr = {
  //   arrr
  // }

  // console.log(pinArrr.arrr[0])

  jQuery(document).ready(function() {
    jQuery('#vmap').vectorMap({
      map: 'indonesia_id',
      color: '#fff',
      enableZoom: true,
      selectedColor: null,
      showTooltip: true,
      pins: {

        // bikin looping untuk array nya
        // [arrPath[2]]:"📍",
        "path2": "📍",
        "path3": "📍",
        "path4": "📍",
        "path5": "📍",
        "path11": "📍",
        "path12": "📍",
        "path14": "📍"
      },
      onRegionClick: function(event, code, region) {
        var message = 'You clicked "' +
          region +
          '" which has the code: ' +
          code + ' / ' +
          arr;

        alert(message);
      },

      onLabelShow: function(event, label, code, region) {
        if (region == 'id') {
          // Hide the label
          event.preventDefault();
        } else if (code == 'path12') {
          // Plain TEXT labels
          label.text('contoh harus diisi');

        }
      },
    });
  });
</script>

<!-- Datatables -->
<script src="<?php echo base_url('assets/vendors/datatables.net/js/jquery.dataTables.min.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/datatables.net-buttons/js/dataTables.buttons.min.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/datatables.net-buttons/js/buttons.flash.min.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/datatables.net-buttons/js/buttons.html5.min.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/datatables.net-buttons/js/buttons.print.min.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/datatables.net-responsive/js/dataTables.responsive.min.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/datatables.net-scroller/js/dataTables.scroller.min.js') ?>"></script>
<script type="text/javascript">
  $(document).ready(function() {
    $('#tableKota').DataTable({
      info: false,
      paging: false,
      searching: false,
      scrollY: '25vh',
      scrollCollapse: true,
    });
  });

  $(document).ready(function() {
    $('#tableA').DataTable({
      info: false,
      paging: false,
      searching: false,
      scrollY: '25vh',
      scrollCollapse: true,
    });
  });

  $(document).ready(function() {
    $('#tableB').DataTable({
      info: false,
      paging: false,
      searching: false,
      scrollY: '25vh',
      scrollCollapse: true,
    });
  });

  $(document).ready(function() {
    $('#tableC').DataTable({
      info: false,
      paging: false,
      searching: false,
      scrollY: '25vh',
      scrollCollapse: true,
    });
  });

  $(document).ready(function() {
    $('#tableD').DataTable({
      info: false,
      paging: false,
      searching: false,
      scrollY: '25vh',
      scrollCollapse: true,
    });
  });

  $(document).ready(function() {
    $('#tableStore').DataTable({
      info: false,
      paging: false,
      searching: false,
      scrollY: '25vh',
      scrollCollapse: true,
    });
  });

  $(document).ready(function() {
    $('#tableWip').DataTable({
      info: false,
      paging: false,
      searching: false,
      scrollY: '25vh',
      scrollCollapse: true,
    });
  });

  $(document).ready(function() {
    $('#resultArticle').DataTable({
      info: true,
      paging: true,
      searching: true,
      lengthMenu: [
        [5, 10, 30, 50, -1],
        [5, 10, 30, 50, 'All'],
      ]
    });
  });

  $(document).ready(function() {
    $('#resultArticlee').DataTable({
      info: true,
      paging: true,
      searching: false,
      lengthMenu: [
        [5, 10, 30, 50, -1],
        [5, 10, 30, 50, 'All'],
      ]
    });
  });
</script>

<!-- select2 (jQuery combobox) -->
<script src="<?php echo base_url('assets/vendors/select2/dist/js/select2.min.js') ?>"></script>
<script>
  $(document).ready(function() {
    $('#article').select2({
      placeholder: "Pilih Article",
      allowClear: true,
    });
  });

  $(document).ready(function() {
    $('#dept').select2({
      placeholder: "Pilih Dept",
      allowClear: true,
    });
  });

  $(document).ready(function() {
    $('#kategori').select2({
      placeholder: "Pilih Kategori",
      allowClear: true,
    });
  });

  $(document).ready(function() {
    $('#bahan').select2({
      placeholder: "Pilih Bahan",
      allowClear: true,
    });
  });

  $(document).ready(function() {
    $('#brand').select2({
      placeholder: "Pilih Brand",
      allowClear: true,
    });
  });

  $(document).ready(function() {
    $('#store').select2({
      placeholder: "Pilih Store",
      allowClear: true,
    });
  });

  $(document).ready(function() {
    $('#kota').select2({
      placeholder: "Pilih Kota",
      allowClear: true,
    });
  });

  $(document).ready(function() {
    $("#article").change(function() {
      var postForm = {
        'article_name': document.getElementById("article").value,
        'op': 1
      };
      // console.log(postForm)
      $.ajax({
        type: "post",
        url: "<?php echo base_url("application/views/Article_api") ?>",
        data: postForm,
        success: function(data) {
          $("#brand").html(data);
        }
      });
    });
    $("#brand").change(function() {
      var postForm = {
        'article_name': document.getElementById("brand").value,
        'op': 2
      };
      $.ajax({
        type: "post",
        url: "<?php echo base_url("application/views/Article_api") ?>",
        data: postForm,
        success: function(data) {
          $("#dept").html(data);
        }
      });
    });
  })
</script>
<!-- bootstrap-daterangepicker -->
<script src="<?php echo base_url('assets/vendors/moment/min/moment.min.js') ?>"></script>
<script src="<?php echo base_url('assets/vendors/bootstrap-daterangepicker/daterangepicker.js') ?>"></script>

<!-- Custom Theme Scripts -->
<script src="<?php echo base_url('assets/build/js/custom.min.js') ?>"></script>

<script>
  // button result article
  const resArt = document.getElementById("resultArt")

  function visibleResArt() {
    if (resArt.className == 'hidden') {
      resArt.className = 'visible'
    } else {
      resArt.className = 'hidden'
    }
  }
</script>

</body>

</html>