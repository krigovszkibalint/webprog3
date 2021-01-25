<center>
<div class="new-post">
<h2><?= $title; ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open_multipart('posts/create'); ?>
  <div class="form-group">
    <label>Cím</label>
    <input type="text" class="form-control" placeholder="Adj címet a bejegyzésnek" name="title">
  </div>
  <div class="form-group">
    <label>Leírás</label>
    <textarea class="form-control" placeholder="Adj leírást a bejegyzéshez" name="body" rows="8"></textarea>
  </div>
  <div class="form-group">
  	<label>Kategória</label>
  	<select name="category_id" class="form-control">
  		<?php foreach($categories as $category): ?>
  			<option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
  		<?php endforeach; ?>
  	</select>
  </div>
  <div class="form-group">
  	<label>Kép feltöltése</label><br>
  	<input type="file" name="userfile" size="20"><br>
  	<small>Maximum kép méret: 4096x2160 (4K)</small>
  </div>
  <button type="submit" class="btn btn-primary">Bejegyzés létrehozása</button>
</form>
</div>
</center>