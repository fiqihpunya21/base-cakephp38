<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User[]|\Cake\Collection\CollectionInterface $users
 */
?>

<div class="login-box">
	<div class="login-logo">
		<a href="/"><b>Admin</b>LTE</a>
	</div>
	<!-- /.login-logo -->
	<div class="card">
		<div class="card-body login-card-body">
			<p class="login-box-msg">Sign in to start your session</p>
			<?= $this->Flash->render() ?>

    		<?= $this->Form->create() ?>
				<div class="input-group mb-3">
        			<input type="text" name="username" class="form-control" placeholder="Username" required>
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-user"></span>
						</div>
					</div>
				</div>
				<div class="input-group mb-3">
					<input type="password" name="password" class="form-control" placeholder="Password" required>
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-lock"></span>
						</div>
					</div>
				</div>
				<!-- OPTIONAL -->
				<div class="input-group mb-3">
					<?= $this->Recaptcha->display() ?>
				</div>
				<div class="row">
					<div class="col-8">
						<div class="icheck-primary">
							<input type="checkbox" id="remember">
							<label for="remember">
								Remember Me
							</label>
						</div>
					</div>
					<!-- /.col -->
					<div class="col-4">
						<?= $this->Form->button('Sign In <i class="fas fa-sign-in"></i>', ['class' => 'btn btn-primary btn-block', 'escape' => false]) ?>
					</div>
					<!-- /.col -->
				</div>
			<?= $this->Form->end() ?>

			<div class="social-auth-links text-center mb-3 mt-3">
				<!-- <a href="#" class="btn btn-block btn-primary"><i class="fab fa-facebook mr-2"></i> Sign in using Facebook</a> -->
				<a href="<?= $this->Url->build(['controller' => 'Users', 'action' => 'googlelogin']) ?>" class="btn btn-block btn-outline-danger"><i class="fab fa-google-plus mr-2"></i> Sign in using G-Suite</a>
				<a href="<?= $this->Url->build(['controller' => 'Pages', 'action' => 'display', 'dashboard']) ?>" class="btn btn-block btn-outline-secondary"><i class="fas fa-home mr-2"></i> Home</a>
			</div>
			<!-- /.social-auth-links -->

			<p class="mb-1">
				<a href="#">I forgot my password</a>
			</p>
		</div>
		<!-- /.login-card-body -->
	</div>
</div>