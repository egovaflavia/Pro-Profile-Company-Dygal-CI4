<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Profils extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'profil_id'          => [
				'type'           => 'INT',
				'constraint'     => 11,
				'unsigned'       => true,
				'auto_increment' => true,
				'constraint'     => '100',
			],
			'profil_nama'        => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'profil_headline'    => [
				'type'			 => 'TEXT',
				'null' 			 => true,
			],
			'profil_tentang'     => [
				'type'           => 'TEXT',
				'null'           => true,
			]
		]);
		$this->forge->addKey('profil_id', true);
		$this->forge->createTable('profils');
	}

	//--------------------------------------------------------------------

	public function down()
	{
		$this->forge->dropTable('profils');
	}
}
