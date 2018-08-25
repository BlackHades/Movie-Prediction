<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MovieRating extends Model
{
    protected $fillable = ['name','email','comment','rating','movie_id'];
}
