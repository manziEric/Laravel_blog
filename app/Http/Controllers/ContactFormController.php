<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ContactForm;
class ContactFormController extends Controller
{
    public function store(){

        $data = request()->validate([
            'name' => 'required|min:2',
            'email' => 'required|email',
            'message' => 'required|min:5'
        ]);

        $ContactForm = new ContactForm();
        $ContactForm ->name = request('name');
        $ContactForm->email = request('email');
        $ContactForm->message = request('message');
        $ContactForm->save();

        return back();
    }
}
