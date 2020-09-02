<main>
    <header class="row tm-welcome-section">
        <h2 class="col-12 text-center tm-section-title">Welcome to <?= $profil->profil_nama ?></h2>
        <p class="col-12 text-center">
           <center> <?= $profil->profil_headline ?></center>
        </p>
    </header>

    <!-- Gallery -->
    <div class="row tm-gallery">
        <!-- gallery page 1 -->
        <div id="tm-gallery-page-pizza" class="tm-gallery-page">

            <?php foreach ($gallerys as $no => $row) :  ?>
                <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                    <figure>
                        <img style="width: 250px; height: 250px;" src="<?php echo base_url('uploads/gallery/' . $row->gallery_foto) ?>" alt="Image" class="img-fluid tm-gallery-img" />
                        <figcaption>
                            <h4 class="tm-gallery-title text-center"><?= $row->gallery_nama ?></h4>
                        </figcaption>
                    </figure>
                </article>
            <?php endforeach ?>
        </div> <!-- gallery page 1 -->

    </div>
    <div class="tm-section tm-container-inner">
        <div class="row">
            <!-- FAQ -->
            <div class="col-12 tm-faq">
                <h2 class="text-center tm-section-title">Cara Pemesanan</h2>
                <p class="text-center">
                    Berikut Tata Cara Pemesanan Rak yang Anda Inginkan</p>
                <div class="tm-accordion">
                    <p>
                        <?= $cara->cara_order ?>
                    </p>
                </div>
            </div>
        </div>
    </div>
</main>