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

Route::get('/', 'HomeController@home')->name('home');
Route::any('/login', 'HomeController@login')->name('login');
Route::any('/logout', 'HomeController@logout')->name('logout');



Route::group(['prefix' => '/movie/'], function (){
   Route::get('all','MovieController@index')->name('movie.all');
   Route::post('add','MovieController@add')->name('movie.add');
    Route::get('show/{movie}', 'MovieController@show')->name('movie.show');
    Route::get('delete/{movie}', 'MovieController@destroy')->name('movie.delete');
    Route::post('asset/{movie}', 'MovieController@asset')->name('movie.asset');
    Route::post('rate/{movie}', 'MovieController@rate')->name('movie.rate');
    Route::get('chart/{movie}', 'MovieController@chart')->name('movie.chart');

});

Route::group(['prefix' => '/user/'], function (){
    Route::get('all','UserController@all')->name('user.all');
    Route::post('create','UserController@create')->name('user.create');
    Route::get('delete/{user}','UserController@destroy')->name('user.destroy');
});


Route::get('/faker', function (){
    $faker = Faker\Factory::create();
    for($i=0;$i<50;$i++){
       \App\Models\MovieRating::create( [
           'name' => $faker->name,
           'email' => $faker->unique()->safeEmail,
           'rating' => random_int(1,5),
           'comment' => $faker->text,
           'movie_id' => 2
       ]);
   }
});