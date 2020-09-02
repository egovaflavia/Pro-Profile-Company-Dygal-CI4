<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Category extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'category_id'          => [
				'type'           => 'INT',
				'constraint'     => 11,
				'unsigned'       => true,
				'auto_increment' => true,
				'constraint'     => '100',
			],
			'category_nama'        => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			]
		]);
		$this->forge->addKey('category_id', true);
		$this->forge->createTable('categorys');
	}

	//--------------------------------------------------------------------

	public function down()
	{
		$this->forge->dropTable('categorys');
	}
}
