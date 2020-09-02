<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1><?= $title; ?></h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="/admin/home">Home</a></li>
                        <li class="breadcrumb-item"><a href="/admin/rent"><?= $title; ?></a></li>
                        <li class="breadcrumb-item active">Tambah Data <?= $title; ?></li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <!-- left column -->
                <div class="col-md-12">
                    <!-- general form elements -->
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Detail Data <?= $title; ?></h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <div class="card-body">
                            <div class="row">
                                <div class="col mb-4">
                                    <div class="card">
                                        <img src="<?php echo base_url('uploads/products/' . $products->product_foto) ?>" class="card-img-top" alt="...">
                                        <div class="card-body">
                                            <h5 class="card-title text-bold">Foto</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="nama">Nama Product</label>
                                        <input value="<?= $products->products_id ?>" type="hidden" name="id">
                                        <input readonly value="<?= $products->product_nama ?>" type="text" class="form-control" id="nama" name="nama" placeholder="Nama Product" required>
                                    </div>
                                    <div class="card">
                                        <div class="card-header text-bold">
                                            Deskripsi
                                        </div>
                                        <div class="card-body">
                                            <p class="card-text"><?= $products->product_desc ?></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="harga">Harga</label>
                                        <input readonly value="<?= $products->product_harga ?>" type="number" class="form-control" id="harga" name="harga" placeholder="Harga Boleh di Kosongkang" required>
                                    </div>
                                    <div class="card">
                                        <div class="card-header text-bold">
                                            Spesifikasi
                                        </div>
                                        <div class="card-body">
                                            <p class="card-text"><?= $products->product_spec ?></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->

                </div>
                <!--/.col (left) -->
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->

</div>
<!-- /.content-wrapper -->