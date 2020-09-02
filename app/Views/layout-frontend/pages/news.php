<main>
    <header class="row tm-welcome-section">
        <h2 class="col-12 text-center tm-section-title">Welcome to <?= $profil->profil_nama ?></h2>
        <p class="col-12 text-center">
            <?= $profil->profil_headline ?>
        </p>
    </header>

    <!-- <div class="tm-paging-links">
        <nav>
            <ul>
                <?php foreach ($categorys as $no => $row) : ?>
                    <li class="tm-paging-item"><a href="#" class="tm-paging-link "><?= $row->category_nama ?></a></li>
                <?php endforeach ?>
            </ul>
        </nav>
    </div> -->

    <!-- Gallery -->
    <div class="row tm-gallery">
        <!-- gallery page 1 -->
        <div id="tm-gallery-page-pizza" class="tm-gallery-page">
            <?php foreach ($products as $no => $row) :  ?>
                <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                    <figure>
                        <img style="width: 250px; height: 250px;" src="<?php echo base_url('uploads/products/' . $row->product_foto) ?>" alt="Image" class="img-fluid tm-gallery-img" />
                        <figcaption>
                            <h4 class="tm-gallery-title text-center"><?= $row->product_nama ?></h4>
                            <!-- <p class="tm-gallery-description"><?= $row->product_desc ?></p> -->
                            <p class="tm-gallery-description row">
                                <a target="_blank" href="https://api.whatsapp.com/send?phone=<?= $contact->contact_no_wa ?>" class="tm-paging-link  col-md-6">
                                    <i class="fas fa-phone tm-contact-icon"></i>
                                    Pesan
                                </a>
                                <a href="" class="tm-paging-link  col-md-6">
                                    <i class="fas fa-search tm-contact-icon"></i>
                                    Detail
                                </a>
                            </p>
                            <p class="tm-gallery-price"><?= ($row->product_harga = '') ? '' : $row->product_harga ?></p>
                        </figcaption>
                    </figure>
                </article>
            <?php endforeach ?>
        </div> <!-- gallery page 1 -->

        <!-- gallery page 2 -->
        <div id="tm-gallery-page-salad" class="tm-gallery-page hidden">
            <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                <figure>
                    <img src="<?= base_url() ?>/assets-frontend/img/gallery/04.jpg" alt="Image" class="img-fluid tm-gallery-img" />
                    <figcaption>
                        <h4 class="tm-gallery-title">Salad Menu One</h4>
                        <p class="tm-gallery-description">Proin eu velit egestas, viverra sapien eget, consequat nunc. Vestibulum tristique</p>
                        <p class="tm-gallery-price">$25</p>
                    </figcaption>
                </figure>
            </article>
            <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                <figure>
                    <img src="<?= base_url() ?>/assets-frontend/img/gallery/03.jpg" alt="Image" class="img-fluid tm-gallery-img" />
                    <figcaption>
                        <h4 class="tm-gallery-title">Second Title Salad</h4>
                        <p class="tm-gallery-description">Proin eu velit egestas, viverra sapien eget, consequat nunc. Vestibulum tristique</p>
                        <p class="tm-gallery-price">$30</p>
                    </figcaption>
                </figure>
            </article>
            <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                <figure>
                    <img src="<?= base_url() ?>/assets-frontend/img/gallery/05.jpg" alt="Image" class="img-fluid tm-gallery-img" />
                    <figcaption>
                        <h4 class="tm-gallery-title">Third Salad Item</h4>
                        <p class="tm-gallery-description">Proin eu velit egestas, viverra sapien eget, consequat nunc. Vestibulum tristique</p>
                        <p class="tm-gallery-price">$45</p>
                    </figcaption>
                </figure>
            </article>
            <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                <figure>
                    <img src="<?= base_url() ?>/assets-frontend/img/gallery/01.jpg" alt="Image" class="img-fluid tm-gallery-img" />
                    <figcaption>
                        <h4 class="tm-gallery-title">Superior Salad</h4>
                        <p class="tm-gallery-description">Proin eu velit egestas, viverra sapien eget, consequat nunc. Vestibulum tristique</p>
                        <p class="tm-gallery-price">$50</p>
                    </figcaption>
                </figure>
            </article>
            <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                <figure>
                    <img src="<?= base_url() ?>/assets-frontend/img/gallery/08.jpg" alt="Image" class="img-fluid tm-gallery-img" />
                    <figcaption>
                        <h4 class="tm-gallery-title">Sed ultricies dui</h4>
                        <p class="tm-gallery-description">Proin eu velit egestas, viverra sapien eget, consequat nunc. Vestibulum tristique</p>
                        <p class="tm-gallery-price">$55 / $60</p>
                    </figcaption>
                </figure>
            </article>
            <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                <figure>
                    <img src="<?= base_url() ?>/assets-frontend/img/gallery/07.jpg" alt="Image" class="img-fluid tm-gallery-img" />
                    <figcaption>
                        <h4 class="tm-gallery-title">Maecenas eget justo</h4>
                        <p class="tm-gallery-description">Proin eu velit egestas, viverra sapien eget, consequat nunc. Vestibulum tristique</p>
                        <p class="tm-gallery-price">$75</p>
                    </figcaption>
                </figure>
            </article>
        </div> <!-- gallery page 2 -->

        <!-- gallery page 3 -->
        <div id="tm-gallery-page-noodle" class="tm-gallery-page hidden">
            <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                <figure>
                    <img src="<?= base_url() ?>/assets-frontend/img/gallery/08.jpg" alt="Image" class="img-fluid tm-gallery-img" />
                    <figcaption>
                        <h4 class="tm-gallery-title">Noodle One</h4>
                        <p class="tm-gallery-description">Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                        <p class="tm-gallery-price">$12.50</p>
                    </figcaption>
                </figure>
            </article>
            <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                <figure>
                    <img src="<?= base_url() ?>/assets-frontend/img/gallery/07.jpg" alt="Image" class="img-fluid tm-gallery-img" />
                    <figcaption>
                        <h4 class="tm-gallery-title">Noodle Second</h4>
                        <p class="tm-gallery-description">Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                        <p class="tm-gallery-price">$15.50</p>
                    </figcaption>
                </figure>
            </article>
            <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                <figure>
                    <img src="<?= base_url() ?>/assets-frontend/img/gallery/06.jpg" alt="Image" class="img-fluid tm-gallery-img" />
                    <figcaption>
                        <h4 class="tm-gallery-title">Third Soft Noodle</h4>
                        <p class="tm-gallery-description">Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                        <p class="tm-gallery-price">$20.50</p>
                    </figcaption>
                </figure>
            </article>
            <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                <figure>
                    <img src="<?= base_url() ?>/assets-frontend/img/gallery/05.jpg" alt="Image" class="img-fluid tm-gallery-img" />
                    <figcaption>
                        <h4 class="tm-gallery-title">Aliquam sagittis</h4>
                        <p class="tm-gallery-description">Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                        <p class="tm-gallery-price">$30.25</p>
                    </figcaption>
                </figure>
            </article>
            <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                <figure>
                    <img src="<?= base_url() ?>/assets-frontend/img/gallery/04.jpg" alt="Image" class="img-fluid tm-gallery-img" />
                    <figcaption>
                        <h4 class="tm-gallery-title">Maecenas eget justo</h4>
                        <p class="tm-gallery-description">Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                        <p class="tm-gallery-price">$35.50</p>
                    </figcaption>
                </figure>
            </article>
            <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                <figure>
                    <img src="<?= base_url() ?>/assets-frontend/img/gallery/03.jpg" alt="Image" class="img-fluid tm-gallery-img" />
                    <figcaption>
                        <h4 class="tm-gallery-title">Quisque et felis eros</h4>
                        <p class="tm-gallery-description">Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                        <p class="tm-gallery-price">$40.50</p>
                    </figcaption>
                </figure>
            </article>

        </div> <!-- gallery page 3 -->
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