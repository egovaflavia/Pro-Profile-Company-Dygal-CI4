<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class News extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'news_id'          => [
				'type'           => 'INT',
				'constraint'     => 11,
				'unsigned'       => true,
				'auto_increment' => true,
			],
			'news_judul'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '200',
			],
			'news_isi'       => [
				'type'           => 'TEXT',
				'null'           => true,
			],
			'news_tgl'       => [
				'type'           => 'DATE',
				'null'           => true,
			],
			'news_foto' => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
		]);
		$this->forge->addKey('news_id', true);
		$this->forge->createTable('news');
	}

	//--------------------------------------------------------------------

	public function down()
	{
		$this->forge->dropTable('news');
	}
}
