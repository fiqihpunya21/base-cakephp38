<?php
/**
 * CakePHP(tm) : Rapid Development Framework (https://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 * @link          https://cakephp.org CakePHP(tm) Project
 * @since         0.10.0
 * @license       https://opensource.org/licenses/mit-license.php MIT License
 */

$cakeDescription = 'CakePHP: the rapid development php framework';
?>
<!DOCTYPE html>
<html>
<head>
    <?= $this->Html->charset() ?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        <?= $cakeDescription ?>:
        <?= $this->fetch('title') ?>
    </title>
    <?= $this->Html->meta('icon') ?>

    <?= $this->Html->css('font-awesome/all.min.css') ?>
    <?= $this->Html->css('overlayscrollbar/OverlayScrollbars.min.css') ?>
    <?= $this->Html->css('datatables/dataTables.bootstrap4.min.css') ?>
    <?= $this->Html->css('datatables/buttons.bootstrap4.min.css') ?>
    <!-- <?= $this->Html->css('datatables/responsive.bootstrap4.min.css') ?> -->
    <?= $this->Html->css('icheck-bootstrap/icheck-bootstrap.min.css') ?>
    <?= $this->Html->css('select2/select2.min.css') ?>
    <?= $this->Html->css('select2/select2-bootstrap4.min.css') ?>
    <?= $this->Html->css('toastr/toastr.min.css') ?>
    <?= $this->Html->css('sweetalert/bootstrap-4.min.css') ?>
    <?= $this->Html->css('adminlte.min.css') ?>
    <?= $this->Html->css('custom.css') ?>

    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <?= $this->Html->script([
        'jquery.min.js',
        'popper.min.js',
        'bootstrap/bootstrap.min.js',
        'datatables/jquery.dataTables.min.js',
        'datatables/dataTables.bootstrap4.min.js',
        'datatables/dataTables.buttons.min.js', 
        'datatables/buttons.bootstrap4.min.js',
        'datatables/buttons.colVis.min.js',
        'datatables/buttons.html5.min.js',
        'datatables/buttons.print.min',
        'datatables/jszip.min.js',
        'datatables/buttons.flash.min.js',
        'datatables/pdfmake.min.js',
        'datatables/vfs_fonts.js',
        // 'datatables/responsive.bootstrap4.min.js',
        'toastr/toastr.min.js',
        'sweetalert/sweetalert2.min.js',
        'adminlte.min.js',
        // 'summernote/summernote-bs4.min.js',
        'tinymce/tinymce.min.js',
        'jquery.mousewheel.js',
        'raphael/raphael.min.js',
        'jquery-mapael/jquery.mapael.min.js',
        'jquery-mapael/maps/usa_states.min.js',
        'overlayscrollbar/jquery.overlayScrollbars.min.js',
        'chartjs/Chart.min.js',
        'select2/select2.full.min.js',
        'moment/moment.min.js',
        'inputmask/min/jquery.inputmask.bundle.min.js',
        'customjs.js',
        ]) ?>

    <?= $this->fetch('meta') ?>
    <?= $this->fetch('css') ?>
    <?= $this->fetch('script') ?>
</head>
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="wrapper">
    <!-- HEADER -->
    <?= $this->element('header') ?>

    <!-- SIDEBAR -->
    <?= $this->element('sidebar') ?>

    <!-- CONTENT -->
    <div class="content-wrapper">
        <section class="content-header">
            <!-- <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1><?= $this->fetch('title') ?></h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#"><i class="fas fa-dashboard"></i> Dashboard</a></li>
                            <li class="breadcrumb-item active"><?= $this->fetch('title') ?></li>
                        </ol>
                    </div>
                </div>
            </div> -->
        </section>
        <?= $this->fetch('content') ?>
    </div>

    <!-- CONTROL SIDEBAR -->
    <?= $this->element('csidebar') ?>

    <!-- FOOTER -->
    <?= $this->element('footer') ?>

    <!-- MODAL BOX -->
    <div id="xlModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl modal-dialog-scrollable"> <!-- modal-dialog-centered -->
            <div class="modal-content">
            </div>
        </div>
    </div>
    <div id="lgModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-scrollable"> <!-- modal-dialog-centered -->
            <div class="modal-content">
            </div>
        </div>
    </div>
    <div id="dfModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myDefaultModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable"> <!-- modal-dialog-centered -->
            <div class="modal-content">
            </div>
        </div>
    </div>
    <div id="smModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm modal-dialog-scrollable"> <!-- modal-dialog-centered -->
            <div class="modal-content">
            </div>
        </div>
    </div>
    <!-- ./MODAL BOX -->
</div>

<script type="text/javascript">
$(function() {    
    // SIDE NAVIGATION ACTIVE
    var a = $('a[href="<?= $this->request->getPath() ?>"]');
    if (!a.parent().hasClass('has-treeview')) {
        a.addClass('active').parents('li.has-treeview').addClass('menu-open');
    }

    // MODAL LOAD DATA-REMOTE
    $('.modal').on('show.bs.modal', function (e) {
        $(this).find('.modal-content').html('<p class="text-center" style="padding:20px 0">loading ...</p>').load($(e.relatedTarget).attr('data-remote'));
    });

    // TOOLTIP
    $('[data-toggle="tooltip"]').tooltip();
})
</script>
</body>
</html>
