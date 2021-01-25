<center>
<div class="register-form">
<h2><?= $title; ?></h2>
<?php echo validation_errors(); ?>

<?php echo form_open('users/register'); ?>
	<div class="form-group">
		<label>Név</label>
		<input type="text" class="form-control" name="name" placeholder="Név">
	</div>
	<div class="form-group">
		<label>E-mail</label>
		<input type="email" class="form-control" name="email" placeholder="E-mail cím">
	</div>
	<div class="form-group">
		<label>Felhasználónév</label>
		<input type="text" class="form-control" name="username" placeholder="Felhasználónév">
	</div>
	<div class="form-group">
		<label>Jelszó</label>
		<input type="password" class="form-control" name="password" placeholder="Jelszó">
	</div>
	<div class="form-group">
		<label>Jelszó megerősítése</label>
		<input type="password" class="form-control" name="password2" placeholder="Jelszó megerősítése">
	</div>
	<button type="submit" class="btn btn-primary">Regisztráció</button>
<?php echo form_close(); ?>
</div>
</center>