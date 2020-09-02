<main>
    <header class="row tm-welcome-section">
        <h2 class="col-12 text-center tm-section-title">Tentang <?= $profil->profil_nama ?></h2>
        <p class="col-12 text-center">
            <?= $profil->profil_tentang ?>
        </p>
    </header>
    <div class="tm-container-inner tm-features">
        <div class="row">
            <div class="col-lg-4">
                <div class="tm-feature">
                    <i class="fas fa-4x fa-grip-vertical tm-feature-icon"></i>
                    <p class="tm-feature-description">
                        Kualitas Terjamin
                    </p>
                    <a href="https://api.whatsapp.com/send?phone=<?= $contact->contact_no_wa ?>" target="_blank" class="tm-btn tm-btn-primary">Hubungi Kami</a>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="tm-feature">
                    <i class="fas fa-4x fa-comment tm-feature-icon"></i>
                    <p class="tm-feature-description">
                        Relasi Mini Market yang Banyak
                    </p>
                    <a href="https://api.whatsapp.com/send?phone=<?= $contact->contact_no_wa ?>" target="_blank" class="tm-btn tm-btn-success">Hubungi Kami</a>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="tm-feature">
                    <i class="fas fa-4x fa-phone tm-feature-icon"></i>
                    <p class="tm-feature-description">
                        Pesan Sekarang Juga
                    </p>
                    <a href="https://api.whatsapp.com/send?phone=<?= $contact->contact_no_wa ?>" target="_blank" class="tm-btn tm-btn-danger">Hubungi Kami</a>
                </div>
            </div>
        </div>
    </div>
    <div class="tm-container-inner tm-history">
        <div class="row">
            <div class="col-12">
                <div class="tm-history-inner">
                    <div class="tm-history-text">
                        <h4 class="tm-history-title">Cara Pemesanan</h4>
                        <p class="tm-mb-p">
                            <?= $cara->cara_order ?>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>