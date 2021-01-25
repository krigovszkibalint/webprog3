<center>
<h2><?= $title; ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open_multipart('categories/create'); ?>
	<div class="form-group">
		<label>Kategória cím</label>
		<input type="text" class="form-control" name="name" placeholder="Add meg a kategória címét">
	</div>
	<button type="submit" class="btn btn-primary">Létrehozás</button>
</form>
</center>