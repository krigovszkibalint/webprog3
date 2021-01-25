<?php echo form_open('users/login'); ?>
<center>
	<div class="login-form">
	<h2><?= $title; ?></h2>
		<div class="form-group">
			<input type="text" name="username" class="form-control" placeholder="Felhasználónév" required autofocus>
		</div>
		<div class="form-group">
			<input type="password" name="password" class="form-control" placeholder="Jelszó" required autofocus>
		</div>
		<button type="submit" class="btn btn-primary">Bejelentkezés</button>
	</div>
</center>
<?php echo form_close(); ?>