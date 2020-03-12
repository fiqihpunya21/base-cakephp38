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
?>
<!DOCTYPE html>
<html>
<head>
    <?= $this->Html->charset() ?>
    <title>
        <?= $this->fetch('title') ?>
    </title>
    <?= $this->Html->meta('icon') ?>
    <?= $this->Html->css('font-awesome/all.min.css') ?>
    <?= $this->Html->css('adminlte.min.css') ?>

    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <?= $this->Html->script([
        'jquery.min.js',
        'bootstrap/bootstrap.bundle.min.js',
        'chartjs/Chart.min.js',
        'moment/moment.min.js',
        'adminlte.min.js',
        'raphael/raphael.min.js',
        'jquery-mapael/jquery.mapael.min.js',
        'jquery-mapael/maps/usa_states.min.js',
        ]) ?>
    <?= $this->fetch('meta') ?>
    <?= $this->fetch('css') ?>
    <?= $this->fetch('script') ?>
</head>
<body class="hold-transition layout-top-nav">
<div class="wrapper">
    <?= $this->element('header-home') ?>
    <div class="content">
        <div class="container">
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6"><h1><?= $this->fetch('title') ?></h1></div>
                    </div>
                </div>
            </section>
        
            <?= $this->Flash->render() ?>

            <?= $this->fetch('content') ?>
        </div>
    </div>
</div>
</body>
</html>
