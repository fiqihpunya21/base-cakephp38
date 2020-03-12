<?php
if (!isset($params['escape']) || $params['escape'] !== false) {
    $message = h($message);
}
?>
<div class="alert alert-danger alert-dismissible" onclick="this.classList.add('hidden');">
	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
	<?= $message ?>
</div>
