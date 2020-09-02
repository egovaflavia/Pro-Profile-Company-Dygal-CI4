<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Gellery extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'gallery_id'          => [
				'type'           => 'INT',
				'constraint'     => 11,
				'unsigned'       => true,
				'auto_increment' => true,
			],
			'gallery_nama'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'gallery_tgl'       => [
				'type'           => 'DATE',
				'null'           => true,
			],
			'gallery_foto' => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
		]);
		$this->forge->addKey('gallery_id', true);
		$this->forge->createTable('gallery');
	}

	//--------------------------------------------------------------------

	public function down()
	{
		$this->forge->dropTable('gallery');
	}
}
