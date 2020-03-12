<?php
$class = 'alert alert-info alert-dismissible';
if (!empty($params['class'])) {
    $class .= ' ' . $params['class'];
}
if (!isset($params['escape']) || $params['escape'] !== false) {
    $message = h($message);
}
?>
<div class="<?= h($class) ?>" onclick="this.classList.add('hidden');">
	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
	<?= $message ?>
</div>
