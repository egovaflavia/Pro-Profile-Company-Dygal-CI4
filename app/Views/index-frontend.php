<?php echo view('layout-frontend/_partials/head.php') ?>

<body style="background-color: rgb(82 200 244);">
	<!-- <div class="tes">
		<a style="padding: 10px 27px;height: 100%; text-align: center;" href="https://api.whatsapp.com/send?phone=<?= $contact->contact_no_wa ?>" target="_blank" class="tm-btn tm-btn-success">Hubungi Kami Melalui WhatsApp</a>
	</div> -->
	<div class="container">

		<?= view('layout-frontend/_partials/banner.php') ?>

		<?= view('layout-frontend/pages/' . $content) ?>

		<?= view('layout-frontend/_partials/footer.php') ?>
	</div>
	<!-- <a href="https://api.whatsapp.com/send?phone=<?= $contact->contact_no_wa ?>" target="_blank" class="tm-btn sticky tm-btn-success">Hubungi Kami Melalui WhatsApp</a> -->
	<?= view('layout-frontend/_partials/scripts.php') ?>
</body>

</html>