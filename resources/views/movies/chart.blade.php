@extends('master')
@section('content')
    <div class="container">
        <div class="row">
            <p class="header login-title"><strong>Users</strong></p>
            <hr/>
            <br/>

            <div class="col-12">
                @include('Partials._message')
            </div>
            <div class="col-lg-12">
                <div class="col-lg-1"></div>
                <div class="col-lg-10">
                    <br/>
                    <br/>
                    <div class="card card-1" style="width: inherit; height: inherit">
                        <h2 class="header login-title"><strong>Chart of {{"$movie->title ($movie->year)"}}</strong></h2>
                        <hr/>
                        <div class="col-12">
                            @include('Partials._message')
                        </div>

                        <div class="text-justify" style="margin: 50px">
                            <h4 class="text-center"><u>Pie Chart</u></h4>
                            <div>
                                {!! $chart->container() !!}
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-lg-1"></div>
            </div>
        </div>
    </div>
@endsection
@section('script')
    <script src="{{asset('js/Chart.min.js')}}" charset=utf-8></script>
    {!! $chart->script() !!}
    <style>
    </style>

@endsection