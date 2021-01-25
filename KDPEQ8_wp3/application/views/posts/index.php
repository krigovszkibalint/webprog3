<div class="post-content">
<center><h2><?= $title ?></h2><br></center>
<?php foreach($posts as $post) : ?>
	<h3><?php echo $post['title']; ?></h3>
	<div class="row">
		<div class="col-md-4">
			<img src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>" width="240px">
		</div>
		<div class="col-md-8">
			<small class="post-date">
				Bejegyzés létrehozva: <?php echo $post['created_at']; ?> a <strong><?php echo $post['name']; ?></strong> kategóriában
			</small><br>
		<?php echo word_limiter($post['body'], 25); ?><br><br>
		<p class="float-right">
			<a class="btn btn-primary btn-sm" href="<?php echo site_url('/posts/'.$post['slug']); ?>">Részletek</a>
		</p>
		</div>
	</div>
	<hr>
<?php endforeach; ?>
<div class="pagination-links">
	<center>
		<?php echo $this->pagination->create_links(); ?>
	</center>
</div>
</div>