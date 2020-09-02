<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Cara extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'cara_id'          => [
				'type'           => 'INT',
				'constraint'     => 11,
				'unsigned'       => true,
				'auto_increment' => true,
			],
			'cara_order'       => [
				'type' => 'TEXT',
				'null' => true,
			]
		]);
		$this->forge->addKey('cara_id', true);
		$this->forge->createTable('caras');
	}

	//--------------------------------------------------------------------

	public function down()
	{
		$this->forge->dropTable('caras');
	}
}
