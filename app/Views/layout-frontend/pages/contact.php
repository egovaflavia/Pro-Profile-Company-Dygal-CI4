<main>
    <header class="row tm-faq tm-welcome-section">
        <h2 class="col-12 text-center tm-section-title">Contact <?= $profil->profil_nama ?></h2>
        <p class="col-12 text-center">
            <center> <?= $profil->profil_headline ?></center>
        </p>
    </header>

    <div class="tm-container-inner-2 tm-faq tm-contact-section">
        <div class="row">
            <div class="col-md-6">
                <form action="mailto:admin@dygalrakindo.com?subject=subject&message=message" target="_blank" method="GET" class="tm-contact-form">
                    <div class="form-group">
                        <input type="text" name="subject" class="form-control" placeholder="Subject" required="" />
                    </div>

                    <div class="form-group">
                        <textarea rows="5" name="message" class="form-control" placeholder="Message" required=""></textarea>
                    </div>

                    <div class="form-group tm-d-flex">
                        <button type="submit" class="tm-btn tm-btn-success tm-btn-right">
                            Send
                        </button>
                    </div>
                </form>
            </div>
            <div class="col-md-6">
                <div class="tm-address-box">
                    <h4 class="tm-info-title tm-text-success">Alamat</h4>
                    <address>
                        <?= $contact->contact_alamat ?>
                    </address>
                    
                    <ul>
                        <li>
                            <a href="https://api.whatsapp.com/send?phone=<?= $contact->contact_no_wa ?>" class="tm-contact-link">
                                <i class="fab fa-whatsapp tm-contact-icon"></i><?= $contact->contact_no_wa ?>
                            </a>
                        </li>
                        <li>
                            <a href="tel:<?= $contact->contact_no_tlp ?>" class="tm-contact-link">
                                <i class="fas fa-phone tm-contact-icon"></i><?= $contact->contact_no_tlp ?>
                            </a>
                        </li>
                        <li>
                            <a href="<?= $contact->contact_facebook ?>" class="tm-contact-link">
                                <i class="fab fa-facebook tm-contact-icon"></i><?= $profil->profil_nama ?>
                            </a>
                        </li>
                        <li>
                            <a href="<?= $contact->contact_instagram ?>" class="tm-contact-link">
                                <i class="fab fa-twitter tm-contact-icon"></i><?= $profil->profil_nama ?>
                            </a>
                        </li>
                        <li>
                            <a href="<?= $contact->contact_twitter ?>" class="tm-contact-link">
                                <i class="fab fa-instagram tm-contact-icon"></i><?= $profil->profil_nama ?>
                            </a>
                        </li>
                        <li>
                            <a href="mailto:<?= $contact->contact_email ?>" class="tm-contact-link">
                                <i class="fas fa-envelope tm-contact-icon"></i><?= $contact->contact_email ?>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </div>
    </div>

    <div class="tm-container-inner-2 tm-map-section">
        <div class="row">
            <div class="col-12">
                <div class="tm-map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15957.317295262663!2d100.3754075!3d-0.8970536!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcda1b7f682b603d5!2sDygal%20Rakindo!5e0!3m2!1sid!2sid!4v1598000469291!5m2!1sid!2sid" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
            </div>
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
    </div>
</main>