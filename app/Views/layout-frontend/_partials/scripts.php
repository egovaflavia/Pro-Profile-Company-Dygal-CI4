<script src="<?= base_url() ?>/assets-frontend/js/jquery.min.js"></script>
<script src="<?= base_url() ?>/assets-frontend/js/parallax.min.js"></script>

<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="<?= base_url() ?>/assets-frontend/carousel/slick/slick.min.js"></script>


<script type="text/javascript">
    $(document).ready(function() {
        $('.your-class').slick({
            dots: true,
            infinite: true,
            speed: 500,
            fade: true,
            cssEase: 'linear',
            adaptiveHeight: true
        });
    });
</script>

<script>
    $(document).ready(function() {


        function tampil() {
            $.ajax({
                url: "<?= site_url('ajaxHome') ?>",
                dataType: "JSON",
                success: function(data) {
                    let content = '';
                    $.each(data.products, function(i, row) {
                        content += `
                    <div class=" col-md-4 col-lg-4 col-sm-6 col-12 tm-gallery-item">
                    <figure>
                        <img style="width: 250px; height: 250px;" src="<?php echo base_url() ?>/uploads/products/${row.product_foto}" alt="Image" class="img-fluid tm-gallery-img" />
                        <figcaption>
                            <h4 class="tm-gallery-title text-center">${row.product_nama}</h4>
                            <!-- <p class="tm-gallery-description">${row.product_desc}</p> -->
                            <p class="tm-gallery-description row ">
                                <center>
                                <a href="https://api.whatsapp.com/send?phone=${data.contact.contact_no_wa}" target="_blank" class="tm-btn-primary-hover 4"><b><i class="fab fa-whatsapp tm-contact-icon"> Pesan</i></b></a>
                                    <a href="tel:${data.contact.contact_no_tlp}" target="_blank" class="tm-btn-primary-hover 4"><i class="fas fa-phone tm-contact-icon"> Pesan</i></a>
                                    <a href="<?= base_url('detail') ?>/${row.products_id}" class="tm-btn-primary-hover 4">
                                        <i class="fas fa-search tm-contact-icon"> Detail</i>
                                    </a>
                                </center>
                            </p>
                        </figcaption>
                    </figure>
                </div>
                    `;
                    });

                    $('#data-home').html(content);
                }
            });
        }

        tampil();

        $('.tm-paging-link').on('click', function() {
            let kategori = $(this).html()
            $('.tm-paging-link').removeClass('active');
            $(this).addClass('active');

            if (kategori == 'All') {
                tampil();
                return;
            }

            $.ajax({
                url: "<?= site_url('ajaxHome') ?>",
                dataType: "JSON",
                success: function(data) {
                    let content = '';
                    $.each(data.products, function(i, row) {
                        console.log(row.category_nama);
                        if (row.category_nama == kategori) {
                            content += `
                    <div class="col-md-4 col-lg-4 col-sm-6 col-12 tm-gallery-item" style="margin-bottom: 50px;">
                    <figure>
                        <img style="width: 250px; height: 250px;" src="<?php echo base_url() ?>/uploads/products/${row.product_foto}" alt="Image" class="img-fluid tm-gallery-img" />
                        <figcaption>
                            <h4 class="tm-gallery-title text-center">${row.product_nama}</h4>
                            <!-- <p class="tm-gallery-description">${row.product_desc}</p> -->
                            <p class="tm-gallery-description row ">
                                <center>
                                <a href="https://api.whatsapp.com/send?phone=${data.contact.contact_no_wa}" target="_blank" class="tm-btn-primary-hover 4"><b><i class="fab fa-whatsapp tm-contact-icon"> Pesan</i></b></a>
                                    <a href="tel:${data.contact.contact_no_tlp}" target="_blank" class="tm-btn-primary-hover 4"><i class="fas fa-phone tm-contact-icon"> Pesan</i></a>
                                    <a href="<?= base_url('detail') ?>/${row.products_id}" class="tm-btn-primary-hover 4">
                                        <i class="fas fa-search tm-contact-icon"> Detail</i>
                                    </a>
                                </center>
                            </p>
                        </figcaption>
                    </figure> 
                </div>
                    `;
                        }
                    });

                    $('#data-home').html(content);
                }
            });
        });

    });
</script>

<!-- WhatsHelp.io widget -->
<script type="text/javascript">
    (function() {
        var options = {
            whatsapp: "+62<?= $contact->contact_no_wa ?>", // WhatsApp number
            call: "<?= $contact->contact_no_tlp ?>", // Call phone number
            call_to_action: "Hubungi Kami Disini", // Call to action
            button_color: "#E74339", // Color of button
            position: "right", // Position may be 'right' or 'left'
            order: "whatsapp,call", // Order of buttons
        };
        var proto = document.location.protocol,
            host = "whatshelp.io",
            url = proto + "//static." + host;
        var s = document.createElement('script');
        s.type = 'text/javascript';
        s.async = true;
        s.src = url + '/widget-send-button/js/init.js';
        s.onload = function() {
            WhWidgetSendButton.init(host, proto, options);
        };
        var x = document.getElementsByTagName('script')[0];
        x.parentNode.insertBefore(s, x);
    })();
</script>
<!-- /WhatsHelp.io widget -->

<!-- Owl Carousel, With Main-Slider -->
<script src="<?= base_url() ?>/assets-frontend/OwlCarousel/app.min.js"></script>
<script src="<?= base_url() ?>/assets-frontend/OwlCarousel/aos.js"></script>
<script src="<?= base_url() ?>/assets-frontend/OwlCarousel/owl.carousel.min.js"></script>