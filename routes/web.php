<?php

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


// dynamic values in to the url
// Route::get('/users/{id}/{name}', function ($id, $name) {
//     return 'this is user '.$name.' with id '.$id;
// });

// path to page home
Route::get('/', 'PagesController@index');
// path to page about
Route::get('/about', 'PagesController@about');
Route::get('/services', 'PagesController@services');

//posting ContactForm to database route
Route::post('/services', 'ContactFormController@store');

Route::resource('posts', 'PostsController');

Auth::routes();

Route::get('/dashboard', 'DashboardController@index');

Auth::routes();

// Route::get('/home', 'DashboardController@index')->name('home');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
