@extends('master')
@section('content')
    <div class="container">
        <div class="row">
            <p class="header login-title"><strong>Movie List</strong></p>
            <hr/>
            <br/>

            <div class="col-12">
                @include('Partials._message')
            </div>
            <div class="col-12" id="main_movie">
                <button id="movie_add_btn" class="btn btn-primary btn-sm pull-right"><i class="fa fa-plus-circle"></i> Add Movies</button><br/><br/>
                <table class="table table-hover">
                    <thead>
                    <th>S/N</th>
                    <th>Created At</th>
                    <th>Title</th>
                    <th>About</th>
                    <th>Year</th>
                    <th>Actions</th>
                    </thead>
                    <tbody>
                        <?php $i = 1?>
                        @foreach($movies as $movie)
                            <tr>
                                <td>{{$i++}}</td>
                                <td>{{\Carbon\Carbon::parse($movie->created_at)->toDateString()}}</td>
                                <td>{{$movie->title}}</td>
                                <td>{{\Illuminate\Support\Str::substr($movie->about,0,50)}}<a href="{{route('movie.show',['movie' => $movie->id])}}" class="btn btn-link">Read more...</a> </td>
                                <td>{{$movie->year}}</td>
                                <td>
                                    <a href="{{route('movie.show',['movie' => $movie->id])}}" class="btn btn-outline-primary btn-sm"><i class="fa fa-eye"></i> </a>
                                    <a href="{{route('movie.chart',['movie' => $movie->id])}}" class="btn btn-outline-warning btn-sm"><i class="fa fa-star"></i> </a>
                                    <a href="{{route('movie.delete',['movie' => $movie->id])}}" onclick="return confirm('Are you sure you want to delete this movie?')" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash"></i> </a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="col-4" id="add_movie">
                <button id="movie_show_btn" class="btn btn-primary btn-sm pull-right">Show Movies</button><br/><br/>
                <form method="POST" action="{{route('movie.add')}}">
                    {{csrf_field()}}
                    <label for="payname"> <b>Add Movie</b> </label>
                    <div class="form-group">
                        <input class="form-control" type="text" required name="title" placeholder="Title"/>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="text" required name="year" placeholder="Year of Production"/>
                    </div>

                    <div class="form-group">
                        <textarea class="form-control" rows="5" required name="about" placeholder="About"></textarea>
                    </div>

                    <button type="submit" class="btn btn-default btn-block"><i class="fa fa-plus-circle"></i> Add To Movies</button>
                </form>
            </div>
        </div>
    </div>
@endsection
@section('script')
    <script>
        $('#add_movie').hide();
        $(document).on('click', '#movie_add_btn', function () {
            $('#add_movie').show(1000);
            $('#main_movie').hide(1000);
        });

        $(document).on('click', '#movie_show_btn', function () {
            $('#add_movie').hide(1000);
            $('#main_movie').show(1000);
        });
    </script>
@endsection