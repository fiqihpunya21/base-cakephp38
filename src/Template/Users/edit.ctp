<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $user
 */
?>
<div class="modal-header">
    <h5 class="modal-title"><?= __('Edit User') ?></h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>

<?= $this->Form->create($user, ['class' => 'form-horizontal', 'enctype' => 'multipart/form-data']) ?>
<div class="modal-body">
    <div class="form-group row">
        <div class="col-md-3"><label for="avatar">Avatar</label></div>
        <div class="col-md-9"><?= $this->Form->control('avatar', ['id' => 'poster', 'type' => 'file', 'class'=>'form-control', 'label'=>false, 'required'=>false, 'onchange' => 'ValidateSingleInput(this)']) ?></div>
    </div>
    <div class="form-group row">
        <div class="col-md-3"><label for="username">Username</label></div>
        <div class="col-md-9"><?= $this->Form->control('username', ['class' => 'form-control', 'required' => true, 'label' => false, 'empty' => false]); ?></div>
    </div>
    <div class="form-group row">
        <div class="col-md-3"><label for="fullname">Firstname</label></div>
        <div class="col-md-9"><?= $this->Form->control('first_name', ['class' => 'form-control', 'required' => true, 'label' => false, 'empty' => false]); ?></div>
    </div>
    <div class="form-group row">
        <div class="col-md-3"><label for="fullname">Lastname</label></div>
        <div class="col-md-9"><?= $this->Form->control('last_name', ['class' => 'form-control', 'required' => true, 'label' => false, 'empty' => false]); ?></div>
    </div>
    <div class="form-group row">
        <div class="col-md-3"><label for="email">Email</label></div>
        <div class="col-md-9"><?= $this->Form->control('email', ['class' => 'form-control', 'required' => true, 'label' => false, 'empty' => false]); ?></div>
    </div>
    <div class="form-group row">
        <div class="col-md-3"><label for="role">Role</label></div>
        <div class="col-md-9">
            <?php $optRole = ['user' => 'user', 'admin' => 'admin', 'superadmin' => 'superadmin'] ?>
            <?= $this->Form->control('role', ['class' => 'form-control select2bs4', 'required' => true, 'label' => false, 'empty' => false, 'options' => $optRole]); ?>
        </div>
    </div>
    <div class="form-group row">
        <div class="col-md-3"></div>
        <div class="col-md-9">
            <div class="icheck-primary d-inline">
                <input type="checkbox" id="active" name="active" <?= $user->active == '1' ? 'checked' : '' ?> >
                <label for="active">Active</label>
            </div>
        </div>
    </div>
</div>

<div class="modal-footer">
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
    <?= $this->Form->button(__('Save Changes'), ['class' => 'btn btn-primary']) ?>
</div>
<?= $this->Form->end() ?>

<script type="text/javascript">
function ValidateSingleInput(oInput) {
    var sFileSize = document.getElementById('poster').files[0].size;
    var _validFileExtensions = [".jpg", ".jpeg", ".png"];

    if (oInput.type == "file") {
        var sFileName = oInput.value;
         if (sFileName.length > 0) {
            var blnValid = false;
            for (var j = 0; j < _validFileExtensions.length; j++) {
                var sCurExtension = _validFileExtensions[j];
                if (sFileName.substr(sFileName.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
                    blnValid = true;
                    break;
                }
            }
             
            if (!blnValid) {
                // alert("Sorry, " + sFileName + " is invalid, allowed extensions are: " + _validFileExtensions.join(", "));
                alert("File type is invalid, allowed extensions are: " + _validFileExtensions.join(", "));
                oInput.value = "";
                return false;
            }
        }
    }

    if (sFileSize > 5242880) {
        alert('File size is more than 5MB, please use another file.');
        oInput.value = "";
        return false;
    }

    return true;
}

//Initialize Select2 Elements
$('.select2').select2();

//Initialize Select2 Elements
$('.select2bs4').select2({
  theme: 'bootstrap4'
});
</script>
