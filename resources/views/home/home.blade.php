@extends('master')
@section('content')
    <div class="row">
        <div class="col-12">
            @include('Partials._message')
        </div>
        @foreach($movies as $movie)
            <div class="col-lg-1"></div>
            <div class="col-lg-10">
                <br/>
                <br/>
                <?php $image = $movie->asset()->where('asset_type','image')->first();?>
                <div class="card card-1" style="width: inherit; height: inherit">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2 class="header login-title"><strong>{{"$movie->title ($movie->year)"}}</strong></h2>
                            <hr/>
                            <div class="row">
                                <div id="resize" class="col-lg-3">
                                    <img class="img img-rounded img-responsive" style="margin: 10px" src="{{$image->link}}" alt="{{"$movie->title Image"}}" height="300" width="203.95"/>
                                </div>
                                <div class="col-lg-9">
                                    <p style="margin: 20px">{{\Illuminate\Support\Str::substr($movie->about,0,500)}}</p>
                                    <p style="margin: 20px"><a href="{{route('movie.show',['movie' => $movie->id])}}" class="btn btn-primary btn-block">Read more...</a></p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-lg-1"></div>
        @endforeach
    </div>
@endsection