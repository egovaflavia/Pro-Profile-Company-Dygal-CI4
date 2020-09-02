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
                        <li class="breadcrumb-item"><a href="/admin/contact"><?= $title; ?></a></li>
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
                        <?php echo form_open_multipart('admin/contact/update') ?>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Link Facebook</label>
                                        <input value="<?= $contacts->contact_id ?>" type="hidden" class="form-control" name="id">
                                        <input value="<?= $contacts->contact_facebook ?>" type="text" class="form-control" name="fb" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Link Twitter</label>
                                        <input value="<?= $contacts->contact_twitter ?>" type="text" class="form-control" name="tw" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Link Instagram</label>
                                        <input value="<?= $contacts->contact_instagram ?>" type="text" class="form-control" name="ig" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input value="<?= $contacts->contact_email ?>" type="email" class="form-control" name="email" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Alamat</label>
                                        <input value="<?= $contacts->contact_alamat ?>" type="text" class="form-control" name="alamat" required>
                                    </div>
                                    <div class="form-group">
                                        <label>No. Telp.</label>
                                        <input value="<?= $contacts->contact_no_wa ?>" type="text" class="form-control" name="tlp" required>
                                    </div>
                                    <div class="form-group">
                                        <label>No. What'sApp</label>
                                        <input value="<?= $contacts->contact_no_wa ?>" type="text" class="form-control" name="wa" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer">
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                        <?php echo form_close() ?>
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