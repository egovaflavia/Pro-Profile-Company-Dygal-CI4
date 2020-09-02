<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Products extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'products_id'          => [
				'type'           => 'INT',
				'constraint'     => 11,
				'unsigned'       => true,
				'auto_increment' => true,
				'constraint'     => '100',
			],
			'category_id'       => [
				'type'           => 'INT',
				'constraint'     => '100',
			],
			'product_nama'       => [
				'type'           => 'TEXT',
				'null'           => true,
			],
			'product_desc'       => [
				'type'           => 'TEXT',
				'null'           => true,
			],
			'product_spec'       => [
				'type'           => 'TEXT',
				'null'           => true,
			],
			'product_foto'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'product_harga'       => [
				'type'           => 'INT',
				'null'           => true,
			],
		]);
		$this->forge->addKey('products_id', true);
		$this->forge->createTable('products');
	}

	//--------------------------------------------------------------------

	public function down()
	{
		$this->forge->dropTable('products');
	}
}
