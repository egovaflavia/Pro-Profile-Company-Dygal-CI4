<main>
    <header class="row tm-faq tm-welcome-section">
        <h2 class="col-12 text-center tm-section-title">Detail <?= $detail->product_nama ?></h2>
        <center>
            <p class="col-12 text-center"><?= $detail->product_desc ?></p>
        </center>
    </header>

    <div class="tm-container-inner tm-persons">
        <div class="row">
            <article class="col-lg-12">
                <figure class="tm-person">
                    <img style="width: 250px; height: 250px;" src="<?= base_url('/uploads/products/' . $detail->product_foto) ?>" alt="Image" class="img-fluid tm-person-img" />
                    <figcaption class="tm-person-description">
                        <h4 class="tm-person-name"><?= $detail->product_nama ?></h4>
                        <p class="tm-person-title"><?= $detail->product_desc ?></p>
                        <p class="tm-person-about">
                            <?= $detail->product_spec ?>
                        </p>
                        <br>
                        <div>
                            <a href="https://api.whatsapp.com/send?phone=<?= $contact->contact_no_wa ?>" target="_blank" class="tm-btn-primary-hover 4"><b><i class="fab fa-whatsapp tm-contact-icon"> Pesan</i></b></a>
                            <a href="tel:<?= $contact->contact_no_tlp ?>" target="_blank" class="tm-btn-primary-hover 4"><i class="fas fa-phone tm-contact-icon"> Pesan</i></a></b>
                        </div>
                    </figcaption>
                </figure>
            </article>
        </div>
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
        <!-- <div class="row">
            <div class="col-md-6">
                <figure class="tm-description-figure">
                    <img src="<?= base_url() ?>/assets-frontend/img/img-01.jpg" alt="Image" class="img-fluid" />
                </figure>
            </div>
            <div class="col-md-6">
                <div class="tm-description-box">
                    <h4 class="tm-gallery-title">Maecenas nulla neque</h4>
                    <p class="tm-mb-45">Redistributing this template as a downloadable ZIP file on any template collection site is strictly prohibited. You will need to <a rel="nofollow" href="https://templatemo.com/contact">talk to us</a> for additional permissions about our templates. Thank you.</p>
                    <a href="about.html" class="tm-btn tm-btn-default tm-right">Read More</a>
                </div>
            </div>
        </div> -->
    </div>
</main>