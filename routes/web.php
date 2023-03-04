<?php
use App\Http\Controllers\StudentsController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
});
//resource controller for Users table
Route::resource('students', StudentsController::class);

//different query practice
Route::get('/query',function(){
    // $results = DB::table('students')->pluck('name','phone_number');
    // foreach($results as $phone_number => $name){
    //     echo $name.", ".$phone_number."<br>";
    // }
    // $results = DB::table('students')->orderBy('id')->chunk(5, function($students){
    //     echo "<pre>";
    //     print_r($students);
    //     echo "</pre>";
    //     return false; //if false it will stop executing after first chunk
    // });
    // $results = DB::table('students')
    //             ->whereNull('email_verified_at')
    //             ->chunkById(2, function($students){
    //                 foreach($students as $student){
    //                    echo $student->name.", ".$student->email."<br>";
    //                    DB::table('students')->where('id',$student->id)
    //                         ->update(['email_verified_at'=>now()]);
    //                         sleep(1);
    //                 }
    //             });

    // $results = DB::table('students')->orderBy('id')->lazy()->each(function($students){
    //     foreach($students as $student){
    //         echo $student."<br>";
    //     }
    // });

    // $results = DB::table('students')->whereNotNull('email_verified_at')->lazyById()->each(function($student){
    //                 DB::table('students')->where('id',$student->id)
    //                     ->update(['email_verified_at'=>now()]);
    //                     sleep(1);
    // });

    // $results = DB::table('students')->count();
    // echo $results;

    // $results = DB::table('students')->max('id');
    // echo $results;

    // $results = DB::table('students')->min('id');
    // echo $results;

    // $results = DB::table('students')->avg('id');
    // echo $results;

    //inserting json data
    // $address = [
    //     "present"=>"Dhaka, Bangladesh",
    //     "permanent"=>"Chittagong, Bangladesh"
    // ];
    // $jsonAddress = json_encode($address);
    // $result = DB::table('students')->where('id',1)
    //             ->update(["address"=>$jsonAddress]);
    // if($result){
    //     echo "Success! Inserted";
    // }

    //updating json data
    // $result = DB::table('students')->where('id',1)
    //             ->update(["address->present"=>"Khulna", "address->permanent"=>"Noakhali"]);
    // if($result){
    //     echo "Success! Updated";
    // }

    // $results = DB::table('students')
    //             ->where('testify',"=",1)
    //             ->where('sex',"=","male")
    //             ->orwhere('sex',"=","female")
    //             ->get();
    // foreach($results as $result){
    //     echo "<pre>";
    //     print_r($result);
    //     echo "</pre>";
    // }

    // $results = DB::table('students')
    //             ->where(function($query){
    //                 $query->where('testify',1)->where('sex',"male");
    //             })
    //             ->orwhere(function($query){
    //                 $query->where('testify',0)->where('sex',"female");
    //             })
    //             ->get();
    // foreach($results as $result){
    //     echo "<pre>";
    //     print_r($result);
    //     echo "</pre>";
    // }

    //search using json data field
    // $results = DB::table('students')
    //             ->where('address->present', 'khulna')
    //             ->get();
    // foreach($results as $result){
    //     echo "<pre>";
    //     print_r($result);
    //     echo "</pre>";
    // }

    //updating data (personal practice)
    // $ids = DB::table('students')->pluck('id');
    // foreach($ids as $id){
    //     $result = DB::table('students')->where('id', $id)->update(['age'=>rand(20,30)]);
    //     echo "<pre>";
    //     print_r($id);
    //     echo "</pre>";
    //     if($result){
    //         echo "Success! Updated";
    //     }
    // }

    //between
    // $results = DB::table('students')
    //             ->whereNotBetween('age', [20,25])
    //             ->get();
    // foreach($results as $result){
    //     echo "<pre>";
    //     print_r($result);
    //     echo "</pre>";
    // }

    //updating data (personal practice)
    // $ids = DB::table('students')->pluck('id');
    // foreach($ids as $id){
    //     $result = DB::table('students')->where('id', $id)->update(['weight'=>rand(65,90), 'minimum_allowed_weight'=>rand(70,75), 'maximum_allowed_weight'=>rand(80, 85)]);
    //     echo "<pre>";
    //     print_r($id);
    //     echo "</pre>";
    //     if($result){
    //         echo "Success! Updated";
    //     }
    // }

    //between columns
    // $results = DB::table('students')
    //             ->whereBetweenColumns('weight', ['minimum_allowed_weight','maximum_allowed_weight'])
    //             ->get();
    // foreach($results as $result){
    //     echo "<pre>";
    //     print_r($result);
    //     echo "</pre>";
    // }

    //whereIntegerInRaw() for faster loading data
    // $ids = DB::table('students')->pluck('id');
    // $results = DB::table('students')
    //             ->whereIntegerInRaw('id', $ids)
    //             ->get();
    // foreach($results as $result){
    //     echo "<pre>";
    //     print_r($result);
    //     echo "</pre>";
    // }

    //whereColumn() for comparing two column
    // $results = DB::table('students')
    //             ->whereColumn([
    //                 ['weight', '>', 'maximum_allowed_weight'],
    //                 ['created_at', '=', 'updated_at'],
    //                 ])
    //             ->get();
    // foreach($results as $result){
    //     echo "<pre>";
    //     print_r($result);
    //     echo "</pre>";
    // }

    //whereExists(), whereRaw(), raw()
    //if inner condition i.e. whereRaw() is true then whereExists() will execute
    //select those students, who have at least one post
    // $results = DB::table('students')->whereExists(function($query){
    //                 $query  ->select(DB::raw(1))
    //                         ->from('posts')
    //                         ->whereRaw('posts.student_id=students.id');
    //             })
    //             ->get();
    // foreach($results as $result){
    //     echo "<pre>";
    //     print_r($result);
    //     echo "</pre>";
    // }

    //fullText indexing
    $searchFor = "coffee";
    $results = DB::table('posts')
                ->whereFullText('post', $searchFor)
                ->get();
    foreach($results as $result){
        echo "<pre>";
        print_r($result);
        echo "</pre>";
    }



});
