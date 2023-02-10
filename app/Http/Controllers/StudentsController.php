<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StudentsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $students = DB::table('students')->get();
        return view('students.index', compact('students'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('students.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $insert = DB::table('students')->insert([
            'name' => $request->name,
            'email' => $request->email,
            'phone_number' => $request->phone_number,
            'created_at' => now()->toDateTimeString(),
            'updated_at' => now()->toDateTimeString()
        ]);

        if($insert){
            return redirect()->back()->with(['alert-type'=>'alert-success', 'message'=>"<b>Success!!!</b> Data saved Successfully!"]);
        }else{
            return redirect()->back()->with(['alert-type'=>'alert-danger', 'message'=>"<b>Error!!!</b> Something wend data was not saved!"]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // this query works fine
        // $student = DB::table('students')->where('id', $id)->first();

        //if the primary key is named `id` then this following query also works
        $student = DB::table('students')->find($id);
        return view('students.view', compact('student'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $student = DB::table('students')->find($id);
        return view('students.edit', compact('student'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $updateStatus = DB::table('students')->where('id', $id)->update([
            'name' => $request->name,
            'email' => $request->email,
            'phone_number' => $request->phone_number,
            'created_at' => now()->toDateTimeString(),
            'updated_at' => now()->toDateTimeString()
        ]);

        if($updateStatus){
            return redirect()->back()->with(['alert-type'=>'alert-success', 'message'=>"<b>Success!!!</b> Data updated Successfully!"]);
        }else{
            return redirect()->back()->with(['alert-type'=>'alert-danger', 'message'=>"<b>Error!!!</b> Something wend data was not saved!"]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $deleteStatus = DB::table('students')->where('id', $id)->delete();
        if($deleteStatus){
            return redirect()->back()->with(['alert-type'=>'alert-success', 'message'=>"<b>Success!!!</b> Data deleted Successfully!"]);
        }else{
            return redirect()->back()->with(['alert-type'=>'alert-danger', 'message'=>"<b>Error!!!</b> Something wend data was not saved!"]);
        }
    }
}
