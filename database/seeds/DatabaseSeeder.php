<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		Model::unguard();

		$this->call('resetpassword');
	}
}

class resetpassword extends Seeder {
    public function run()
        {
            DB:table('password_resets') -> insert(
                array ('email' =>'hoangty1403@gmail.com', 'token'=>'asdfa' 'created_at'=> '2016-02-04 06:57:03'),

        }
}