<?php
/**
  * @var \App\View\AppView $this
  */
?>
<div class="modal-header">
    <h4 class="modal-title"><?= __('Change Password ') . $user->username ?></h4>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>

<?= $this->Form->create($user, ['role' => 'form', 'class' => 'form-horizontal']) ?>
<div class="modal-body">
    <?php
        echo $this->Form->control('password1', ['id' => 'password1', 'type' => 'password', 'class' => 'form-control', 'required' => true, 'label' => 'New Password']);
        echo $this->Form->control('password2', ['id' => 'password2', 'type' => 'password', 'class' => 'form-control', 'required' => true, 'label' => 'Retype Password']);
    ?>

    <div class="eror alert alert-dismissible" style="margin-top:10px" role="alert">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <p>This is warning</p>
    </div>
</div>

<div class="modal-footer">
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
    <?= $this->Form->button(__('Change Password'), ['id' => 'btnChange', 'class' => 'btn btn-primary']) ?>
</div>
<?= $this->Form->end() ?>

<script type="text/javascript">
$(document).ready(function() {
    $("#password1").focus();
    $('#btnChange').attr('disabled', true);
    $('.eror').hide();
});

$(function (){
    $('#password1').keyup(function(){
        $('#btnChange').attr('disabled', true);

        if ($(this).val() !== '') {
            if ($(this).val().length < 8) {
                $('.eror').removeClass('alert-success');
                $('.eror').addClass('alert-warning');
                $('.eror').html('<p>Minimal 8 characters password !</p>');
                $('.eror').show();
            } else {
                $('.eror').removeClass('alert-warning');
                $('.eror').addClass('alert-success');
                $('.eror').html('<p>Password passed !</p>');
                $('.eror').show();
            }
        }
    });

    $('#password2').keyup(function(){
        if ($(this).val() !== '') {
            if ($(this).val() !== $('#password1').val()) {
                $('.eror').removeClass('alert-success');
                $('.eror').addClass('alert-warning');
                $('.eror').html('<p>Password did not match !</p>');
                $('.eror').show();

                $('#btnChange').attr('disabled', true);
            } else {
                $('.eror').removeClass('alert-warning');
                $('.eror').addClass('alert-success');
                $('.eror').html('<p>Password match !</p>');
                $('.eror').show();

                $('#btnChange').removeAttr('disabled');
            }
        }
    });
});
</script>
