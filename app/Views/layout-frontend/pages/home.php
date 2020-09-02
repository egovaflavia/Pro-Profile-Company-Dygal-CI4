<main>
    <header class="row tm-faq tm-welcome-section">
        <h2 class="col-12 text-center tm-section-title">Welcome to <?= $profil->profil_nama ?></h2>
        <p class="col-12">
            <center>
                <?= $profil->profil_headline ?>
            </center>
        </p>
    </header>

    <div class="tm-paging-links">
        <nav>
            <ul>
                <li class="tm-paging-item"><a href="javascript:void(0)" class="tm-paging-link active">All</a></li>
                <?php foreach ($categorys as $no => $row) : ?>
                    <li class="tm-paging-item"><a id="data-category" href="javascript:void(0)" class="tm-paging-link "><?= $row->category_nama ?></a></li>
                <?php endforeach ?>
            </ul>
        </nav>
    </div>

    <!-- Gallery -->
    <div class="tm-gallery">
        <!-- gallery page 1 -->
        <div id="data-home" class="tm-gallery-page">
            <!-- Isinya ajax -->
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