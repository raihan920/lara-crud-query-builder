<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class StudentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        for($i=0; $i<50; $i++){
            DB::table('students')->insert([
                'name' => $faker->name(),
                'email' => $faker->email(),
                'phone_number' => $faker->phoneNumber(),
                'created_at' => now()->toDateTimeString(),
                'updated_at' => now()->toDateTimeString()
            ]);
        }
    }
}
