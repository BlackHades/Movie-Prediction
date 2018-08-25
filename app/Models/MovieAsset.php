<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MovieAsset extends Model
{
    function videos(){
        return $this->where('asset_type','video')->orderBy('id','DESC')->get();
    }

    function images(){
        return $this->where('asset_type','image')->orderBy('id','DESC')->get();
    }
}
