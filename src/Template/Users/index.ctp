<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User[]|\Cake\Collection\CollectionInterface $users
 */
$this->assign('title', 'Users');
?>

<section class="content">
    <!-- Default box -->
    <div class="card">
        <div class="card-header">
            <h3 class="card-title"><?= $this->fetch('title') ?></h3>

            <div class="card-tools">
                <button class="btn btn-outline-primary btn-sm" data-toggle="modal" data-target="#dfModal" data-remote="/Users/add" data-backdrop="static"><i class="fa fa-user-plus"></i> Add New User</button>
                <!-- <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fas fa-minus"></i></button> -->
                <!-- <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove"><i class="fas fa-times"></i></button> -->
            </div>
        </div>
        <div class="card-body">
            <table class="table table-striped table-hover" id="tableUsers">
                <thead>
                    <tr>
                        <th><?= __('ID') ?></th>
                        <th><?= __('Avatar') ?></th>
                        <th><?= __('Username') ?></th>
                        <th><?= __('Firstname') ?></th>
                        <th><?= __('Lastname') ?></th>
                        <th><?= __('Email') ?></th>
                        <th><?= __('Link') ?></th>
                        <th><?= __('Role') ?></th>
                        <th class="text-center"><?= __('Active') ?></th>
                        <th class="text-center"><?= __('Actions') ?></th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($users as $user): ?>
                        <tr>
                            <td><?= $this->Number->format($user->id) ?></td>
                            <td><?= !empty($user->avatar) ? '<img src="/uploads/avatar/'.$user->avatar.'" class="thumbnail" width="40px">' : '' ?></td>
                            <td><?= h($user->username) ?></td>
                            <td><?= h($user->first_name) ?></td>
                            <td><?= h($user->last_name) ?></td>
                            <td><?= h($user->email) ?></td>
                            <td><?= h($user->link) ?></td>
                            <td><?= h($user->role) ?></td>
                            <td class="text-center"><?= h($user->active) == '1' ? '<i class="fas fa-check" style="color:green"></i>' : '<i class="fas fa-times" style="color:red"></i>' ?></td>
                            <td class="text-center">
                                <div class="btn-group btn-group-sm" role="group" aria-label="Button Actions">
                                    <button class="btn btn-primary" data-toggle="modal" data-target="#dfModal" data-remote="/Users/edit/<?= $user->id ?>" title="Edit <?= $user->username ?>" data-backdrop="static"><i class="fa fa-edit"></i></button>
                                    <button class="btn btn-success" data-toggle="modal" data-target="#dfModal" data-remote="/Users/changePassword/<?= $user->id ?>" data-backdrop="static" title="Change Password <?= $user->username ?>"><i class="fa fa-lock"></i></button>
                                    <?= $this->Form->postLink(__('<i class="fa fa-trash-alt"></i>'), ['action' => 'delete', $user->id], ['confirm' => __('Are you sure you want to delete {0}?', $user->username), 'escape' => false, 'class' => 'btn btn-danger', 'title' => 'Delete ' . $user->username]) ?>
                                </div>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->

    <div class="card">
        <div class="card-header">
            <h3 class="card-title"><i class="fas fa-envelope"></i> Send Email Example AJAX</h3>

            <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fas fa-minus"></i></button>
                <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove"><i class="fas fa-times"></i></button>
            </div>
        </div>
        <div class="card-body">
            <form id="frmSendmail" class="form-horizontal" role="form">
                <div class="form-group row">
                    <div class="col-md-3"><label for="to">To</label></div>
                    <div class="col-md-9"><?= $this->Form->control('to', ['class' => 'form-control', 'required' => true, 'label' => false, 'empty' => false, 'type' => 'email', 'value' => 'epri@sbm-itb.ac.id']); ?></div>
                </div>
                <div class="form-group row">
                    <div class="col-md-3"><label for="subject">Subject</label></div>
                    <div class="col-md-9"><?= $this->Form->control('subject', ['class' => 'form-control', 'required' => true, 'label' => false, 'empty' => false, 'value' => 'Subject']); ?></div>
                </div>
                <div class="form-group row">
                    <div class="col-md-3"><label for="message">Message</label></div>
                    <div class="col-md-9">
                        <textarea id="tMessage" name="message" class="form-control" required></textarea>
                    </div>
                </div>
                <?= $this->Form->button(__('Send Message <i class="fas fa-paper-plane"></i>'), ['id' => 'btnSubmit', 'class' => 'btn btn-primary', 'escape' => false]) ?>
            </form>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</section>

<script>
$(function () {
    // load TinyMCE
    loadEditor('tMessage');
    
    $('#tableUsers').DataTable({
        'paging': true,
        'lengthChange': true,
        'delay': 600,
        'searching': true,
        'ordering': true,
        'info': true,
        'autoWidth': false,
        'responsive': false,
        'pagingType': 'full_numbers',
        'columnDefs' : [{'orderable' : false, 'targets' : [1, 8, 9]}],
        'scrollX': true,
        // 'scrollY': '500px',
        'dom': 'Bfrtip',
        'buttons': [
            {
                extend: 'excel',
                text: ' <i class="fa fa-file-excel"></i> Export Excel',
                title: 'Users Data <?= date("Y") ?> - AdminLTE 3',
                className: 'btn btn-default btn-sm',
                exportOptions: {
                    columns: ':visible'
                }
            },
            {
                extend: 'pdf',
                text: ' <i class="fa fa-file-pdf"></i> Export PDF',
                title: 'Users Data <?= date("Y") ?> - AdminLTE 3',
                className: 'btn btn-default btn-sm',
                exportOptions: {
                    columns: ':visible'
                }
            },
            {
                extend: 'print',
                text: ' <i class="fa fa-print"></i> Print',
                title: 'Users Data <?= date("Y") ?> - AdminLTE 3',
                className: 'btn btn-default btn-sm',
                exportOptions: {
                    columns: ':visible'
                }
            },
            {
                extend: 'colvis',
                text: ' <i class="fa fa-columns"></i> Col Visibility',
                className: 'btn btn-default btn-sm',
            },
        ]
    });
});

$('#frmSendmail').on('submit', function() {
    // CakePHP > 3.6 ajax POST harus pakai CSRF Token untuk security disimpan di parameter headers
    token = '<?= $this->request->getParam('_csrfToken'); ?>';

    form_data = {
        to: $('#to').val(),
        subject: $('#subject').val(),
        message: tinymce.get('tMessage').getContent()
    };
    // console.log(tinymce.get('tMessage').getContent());

    $.ajax({ 
        type: 'POST', 
        url: '/Users/sendMailAjax',
        cache: false,
        data: {form_data},
        headers : {'X-CSRF-Token': token},
        beforeSend: function(){
            $('#btnSubmit').attr('disabled', true);
            $('#btnSubmit').html('<i class="fas fa-spinner fa-spin"></i> Sending...');
        },
        success: function(response){
            var obj = $.parseJSON(response);

            sweetAlertMessage(obj);

            if (obj == 'success')
                $(this).trigger('reset');
        },
        error: function(){
            sweetAlertMessage('error');
        }
    }).done(function() {
        $('#btnSubmit').attr('disabled', false);
        $('#btnSubmit').html('Send Message <i class="fas fa-paper-plane"></i>');
    });

    return false;
})

function sweetAlertMessage(stat) {
    const Toast = Swal.mixin({
        toast: false,
        position: 'center',
        timer: 3000,
        showConfirmButton: true,
        confirmButtonText: 'OK',
    });

    switch(stat) {
        case 'success':
            hsl = 'success';
            hslT = 'Your message has been sent';
            break;
        case 'failed':
            hsl = 'warning';
            hslT = 'Something wrong while sending the email, please call administrator';
            break;
        case 'error':
            hsl = 'error';
            hslT = 'Error appear, please call administrator';
            break;
    }

    Toast.fire({
        title: hslT,
        type: hsl,
    });
}
</script>
