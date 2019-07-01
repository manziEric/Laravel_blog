<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;

class PagesController extends Controller
{
    public function index(){
        
        $lastpost = Post::orderBy('created_at', 'desc')->take(1)->get();
        $randompost = Post::inRandomOrder()->take(1)->get();
        // $secondpost = Post::where('id' == 2)->get();

        // return view('pages.index', compact('title'));
        return view('pages.index')->with('posts', $lastpost)->with('randompost', $randompost);
    }
    public function about(){
      
        return view('pages.about');
    }
    public function services(){
        
        return view('pages.services');
    }
}
