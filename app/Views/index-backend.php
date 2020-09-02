<?php
echo view('layout-backend/v_header.php');
echo view('layout-backend/v_navbar.php');
echo view('layout-backend/v_sidebar.php');
echo view('layout-backend/pages/' . $content);
echo view('layout-backend/v_footer.php');
echo view('layout-backend/v_js.php');
