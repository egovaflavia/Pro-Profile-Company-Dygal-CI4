<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Contacts extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'contact_id'          => [
				'type'           => 'INT',
				'constraint'     => 11,
				'unsigned'       => true,
				'auto_increment' => true,
			],
			'contact_facebook'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
				'null'           => true,
			],
			'contact_twitter'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
				'null'           => true,
			],
			'contact_instagram'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
				'null'           => true,
			],
			'contact_email'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
				'null'           => true,
			],
			'contact_alamat'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
				'null'           => true,
			],
			'contact_no_tlp'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
				'null'           => true,
			],
			'contact_no_wa'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
				'null'           => true,
			]
		]);
		$this->forge->addKey('contact_id', true);
		$this->forge->createTable('contacts');
	}

	//--------------------------------------------------------------------

	public function down()
	{
		$this->forge->dropTable('contacts');
	}
}
