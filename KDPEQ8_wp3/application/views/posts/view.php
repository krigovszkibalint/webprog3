<div class="post-content">
<h2><?php echo $post['title']; ?></h2>
<small class="post-date">Bejegyzés létrehozva: <?php echo $post['created_at']; ?></small><br>
<center><img src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>" width="100%"></center>
<div class="post-body">
<?php echo $post['body']; ?>
</div>
<?php if($this->session->userdata('user_id') == $post['user_id']): ?>
		<a class="btn btn-warning float-left" href="edit/<?php echo $post['slug']; ?>">Szerkesztés</a>
		<?php echo form_open('/posts/delete/'.$post['id']); ?>
			<input type="submit" value="Törlés" class="btn btn-danger float-right">
		</form>
	<div class="comments">
	<hr>
<?php endif; ?>
<h3>Hozzászólások</h3>
<?php if($comments) : ?>
	<?php foreach($comments as $comment) : ?>
		<div class="comment-name">
			<b>
				<div class="float-right">
					<small>
						<?php echo $comment['created_at']; ?>
					</small>
				</div>
				<?php echo $comment['name']; ?>
			</b>
		</div>
		<div class="comment-body">
			<?php echo $comment['body']; ?>
		</div>
	<?php endforeach; ?>
<?php else : ?>
	<p>Nincs megjeleníthető hozzászólás</p>
<?php endif; ?>
<hr>
<h3>Szólj hozzá</h3>
<?php echo validation_errors(); ?>
<?php echo form_open('comments/create/'.$post['id']); ?>
	<div class="form-group">
		<label>Név</label>
		<input type="text" name="name" class="form-control">
	</div>
	<div class="form-group">
		<label>E-mail</label>
		<input type="text" name="email" class="form-control">
	</div>
	<div class="form-group">
		<label>Hozzászólás</label>
		<textarea name="body" class="form-control" rows="4"></textarea>
	</div>
	<input type="hidden" name="slug" value="<?php echo $post['slug']; ?>">
	<button class="btn btn-primary" type="submit">Küldés</button>
	</div>
</div>