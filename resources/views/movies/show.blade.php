@extends('master')
@section('content')
    <div class="container">
        <div class="row" id="show_movie_main">
            <hr/>
            <br/>
            <div class="col-lg-1"></div>
            <div class="col-lg-10">
                <br/>
                <br/>
                <div class="col-lg-12 text-center">
                    <button id="add_movie_asset_btn" {{auth()->check() ? "" : "hidden"}} class="btn btn-outline-success btn-sm"><i class="fa fa-file"></i> Add Movie Asset </button>
                    <a href="{{route('movie.chart',['movie' => $movie->id])}}" class="btn btn-outline-warning btn-sm"><i class="fa fa-star"></i> View Success Ratings </a>
                    <button id="show_rate_btn" class="btn btn-outline-info btn-sm" {{!auth()->check() ? "" : "hidden"}}><i class="fa fa-star"></i> Rate This Movie </button>
                    <a href="{{route('movie.delete',['movie' => $movie->id])}}" {{auth()->check() ? "" : "hidden"}} onclick="return confirm('Are you sure you want to delete this movie?')" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash"></i> Delete Movie</a>
                </div>
                <div class="card card-1" style="width: inherit; height: inherit">
                    <h2 class="header login-title"><strong>{{"$movie->title ($movie->year)"}}</strong></h2>
                    <hr/>
                    <div class="col-12">
                        @include('Partials._message')
                    </div>

                    <div class="text-justify" style="margin: 50px">
                        <h4 class="text-center"><u>About</u></h4>
                        <p>{{$movie->about}}</p>
                    </div>

                    @if(count($images) > 0)
                        <div class="text-justify" style="margin: 50px">
                            <h4 class="text-center"><u>Images</u></h4>
                            <div class="row">
                                @foreach($images as $image)
                                    <div class="col-lg-4">
                                        <img src="{{$image->link}}" alt="{{"$movie->title Image"}}" height="300" width="203.95"/>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    @endif

                    @if(count($videos) > 0)
                        <div class="text-justify" style="margin: 50px">
                            <h4 class="text-center"><u>Videos</u></h4>
                            <div class="row">
                                @foreach($videos as $video)
                                    <div class="col-lg-12">
                                        <video width="800" height="500" controls>
                                            <source src="{{$video->link}}">
                                            Your browser does not support HTML5 video.
                                        </video>
                                    </div>
                                @endforeach
                            </div>

                        </div>
                    @endif


                    @if(count($comments) > 0)
                        <div class="text-justify" style="margin: 50px">
                            <h4 class="text-left"><u>Comments</u></h4>
                            <div class="row">
                                @foreach($comments as $comment)
                                    <div class="col-lg-12">

                                        <ul class="list-group">
                                            <li class="list-group-item">
                                                <p>
                                                    {{$comment->name}}|
                                                    @for($i = 1; $i < 6; $i++)
                                                        <span class="fa fa-star @if($i <= $comment->rating)checked @endif"></span>
                                                    @endfor
                                                </p>
                                                <hr>
                                                <p>{{$comment->comment}}</p>
                                                <p>Posted at: {{$comment->created_at}}</p>
                                            </li>
                                        </ul>
                                        <br/>
                                        <br/>
                                    </div>
                                @endforeach
                            </div>

                        </div>
                    @endif
                </div>
            </div>
            <div class="col-lg-1"></div>
        </div>

        <div class="row" id="add_asset_row">
            <div class="col-lg-5">
                <br/>
                <br/>
                <button id="show_movie_btn" class="btn btn-outline-primary btn-sm"><i class="fa fa-eye"></i> Show Movie </button>
                <hr/><br/><br/>
                <h2 class="header login-title"><strong>Add Asset to {{$movie->title}}</strong></h2>
                <hr/>

                <form action="{{route('movie.asset',['movie' => $movie->id])}}" method="post" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="form-group">
                        <label>Select Asset Type: </label>
                        <select name="asset_type" class="form-control">
                            <option value="image">Image</option>
                            <option value="video">Video</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Select Image/Video</label>
                        <input class="form-control" type="file" name="file"/>
                    </div>

                    <button class="btn btn-success btn-block" type="submit"><i class="fa fa-plus-circle"></i> Add Asset</button>
                </form>
            </div>
        </div>

        <div class="row" id="rate_movie_row">
            <div class="col-lg-5">
                <br/>
                <br/>
                <button id="show_movie_btn" class="btn btn-outline-primary btn-sm"><i class="fa fa-eye"></i> Show Movie </button>
                <hr/><br/><br/>
                <h2 class="header login-title"><strong>Add Asset to {{$movie->title}}</strong></h2>
                <hr/>

                <form action="{{route('movie.rate',['movie' => $movie->id])}}" method="post">
                    {{csrf_field()}}
                    <div class="form-group">
                        <label>Name</label>
                        <input class="form-control" required type="text" name="name" placeholder="Name"/>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input class="form-control" required type="email" name="email" placeholder="Email Address"/>
                    </div>
                    <div class="form-group">
                        <label>Comment</label>
                        <textarea rows="2" required class="form-control" name="comment" placeholder="Comments"></textarea>
                    </div>
                    <div class="form-group">

                        <label>Rate this movie: </label>
                        <select name="rating" required class="form-control">
                            <option value="5">Excellent</option>
                            <option value="4">Very Good</option>
                            <option value="3">Good</option>
                            <option value="2">Not Good</option>
                            <option value="1">Bad</option>
                        </select>
                    </div>

                    <button class="btn btn-success btn-block" type="submit"><i class="fa fa-plus-circle"></i> Submit Rating</button>
                </form>

            </div>
        </div>

    </div>
@endsection
@section('script')
    <script type="text/javascript">
        console.log("Here");

        $('#add_asset_row').hide(1000);
        $('#rate_movie_row').hide(1000);
        console.log("Here");

        $(document).on('click','#add_movie_asset_btn', function () {
            console.log("Here");
            $('#add_asset_row').show(1000);
           $('#show_movie_main').hide(1000);
        });
        $(document).on('click','#show_movie_btn', function () {
            console.log("Here");

            $('#add_asset_row').hide(1000);
            $('#rate_movie_row').hide(1000);
            $('#show_movie_main').show(1000);
        });

        $(document).on('click','#show_rate_btn', function () {
            console.log("Here");

            $('#rate_movie_row').show(1000);
            $('#show_movie_main').hide(1000);
        });
    </script>
@endsection