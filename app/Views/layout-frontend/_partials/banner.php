<!-- <div class="placeholder your-class parallax-window" style="margin-bottom: 0px;" data-parallax="scroll">
    <div><img style="height: 460px; width: 100%;" src="<?= base_url() ?>/assets-frontend/img/simple-house-01.jpg" alt=""></div>
</div> -->

<div class="main-slider owl-carousel owl-theme">
    <?php foreach ($sliders as $no => $row) : ?>
        <div class="item"><img src="<?= base_url('uploads/sliders/' . $row->slider_foto) ?>" alt=""></div>
    <?php endforeach ?>
</div>

<div style="background-color: white; margin-left: 0px;margin-right: 0px; position: relative;" class="row tm-header-inner">
    <div class="col-md-6 col-12">
        <img src="<?= base_url() ?>/assets-frontend/img/simple-house-logoBlack.png" alt="Logo" class="tm-site-logo" />
        <div class="tm-site-text-box">
            <h1 class="tm-site-title"><?= $profil->profil_nama ?></h1>
            <h6 class="tm-site-description">distributor rak dan perlengkapan toko</h6>
        </div>
    </div>
    <nav class="col-md-6 col-12 tm-nav">
        <ul class="tm-nav-ul">
            <li class="tm-nav-li"><a style="color: black;" href="<?= base_url('/') ?>" class="tm-nav-link <?= ($menu == "home") ? "active" : "" ?>">Home</a></li>
            <li class="tm-nav-li"><a style="color: black;" href="<?= base_url('profil') ?>" class="tm-nav-link <?= ($menu == "profil") ? "active" : "" ?>">Profil</a></li>
            <!-- <li class="tm-nav-li"><a href="<?= base_url('news') ?>" class="tm-nav-link <?= ($menu == "news") ? "active" : "" ?>">News</a></li> -->
            <li class="tm-nav-li"><a style="color: black;" href="<?= base_url('gallery') ?>" class="tm-nav-link <?= ($menu == "gallery") ? "active" : "" ?>">Gallery</a></li>
            <li class="tm-nav-li"><a style="color: black;" href="<?= base_url('contact') ?>" class="tm-nav-link <?= ($menu == "contact") ? "active" : "" ?>">Contact</a></li>
        </ul>
    </nav>
</div>