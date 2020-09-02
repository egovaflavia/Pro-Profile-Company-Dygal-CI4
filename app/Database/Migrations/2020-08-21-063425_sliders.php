<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Sliders extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'slider_id'          => [
				'type'           => 'INT',
				'constraint'     => 11,
				'unsigned'       => true,
				'auto_increment' => true,
			],
			'slider_foto'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
		]);
		$this->forge->addKey('slider_id', true);
		$this->forge->createTable('sliders');
	}

	//--------------------------------------------------------------------

	public function down()
	{
		$this->forge->dropTable('sliders');
	}
}
