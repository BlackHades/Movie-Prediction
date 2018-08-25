<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    //
    protected  $fillable = ['title', 'year','about'];

    function asset(){
        return $this->hasMany(MovieAsset::class, 'movie_id');
    }

    function videos(){
        return $this->asset()->where('asset_type','video')->orderBy('id','DESC')->get();
    }

    function images(){
        return $this->asset()->where('asset_type','image')->orderBy('id','DESC')->get();
    }

    function comments(){
        return $this->hasMany(MovieRating::class,'movie_id');
    }
}
