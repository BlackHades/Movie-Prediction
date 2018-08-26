<?php

namespace App\Http\Controllers;

use App\Charts\MovieChart;
use App\Models\Movie;
use App\Models\MovieAsset;
use App\Models\MovieRating;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class MovieController extends Controller
{

    public function index()
    {
        return view('movies.list',[
            'title' => 'Movie List',
            'movies' => Movie::orderByDesc('id')->get()
        ]);
    }

    public function add(Request $request)
    {
        $this->validate($request,[
            'title' => 'required',
            'about' => 'required',
            'year' => 'required'
        ]);

        Movie::create($request->all());
        Session::flash('success', 'Movie Added Successfully');
        return redirect()->back();
    }


    public function store(Request $request)
    {
        //
    }

    public function show(Movie $movie)
    {
        return view('movies.show',[
            'title' => $movie->title,
            'movie' => $movie,
            'images' => $movie->asset()->where('asset_type','image')->orderBy('id','DESC')->get(),
            'videos' => $movie->asset()->where('asset_type','video')->orderBy('id','DESC')->get(),
            'comments' => $movie->comments()->orderBy('id','DESC')->get()
        ]);
    }


    public function edit(Movie $movie)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy(Movie $movie)
    {
        try {
            $movie->asset()->delete();
            $movie->comments()->delete();
            $movie->delete();
        } catch (\Exception $e) {
        }
        Session::flash('success', "Movie deleted successfully");
        return redirect()->back();
    }

    public function asset(Request $request, Movie $movie){
        $this->validate($request,[
            'asset_type' => 'required',
        ]);

//        dd($request->all(), $request->file('file'));

        if($request->hasFile('file')){
            $file = $request->file('file');
            $filename = time() . $movie->title ."." .$file->getClientOriginalExtension();
            $dir = public_path("uploads");
            $file->move($dir, $filename);
            $a = new MovieAsset();
            $a->movie_id = $movie->id;
            $a->asset_type = $request->asset_type;
            $a->link = "uploads/$filename";
            $a->save();
            Session::flash('success','Movie Asset Added Successfully');
        }else{
            Session::flash('error','File not found');
        }
        return redirect()->back();

    }

    public function rate(Request $request, Movie $movie){
        $this->validate($request,[
           'name' => 'required',
           'email' => 'required|email',
           'comment' => 'required',
            'rating' => 'required|max:5|min:1'
        ]);
        $m  = new MovieRating();
        $m->name = $request->name;
        $m->email =$request->email;
        $m->movie_id = $movie->id;
        $m->rating = $request->rating;
        $m->comment = $request->comment;
        $m->save();
        Session::flash('success','Thank You For Rating This Movie');
        return redirect()->back();
        return [$request->all(), $movie];
    }

    public function chart(Movie $movie){
        $count = $movie->comments()->count();
        $rating = $movie->comments()->sum('rating');
        if($rating > 0)
            $data = (double)($rating/($count * 5));
        else
            $data = 0.0;
        $chart = new MovieChart;
        $chart->dataset($movie->title, 'doughnut', [($data), (1- $data)])
            ->options(['backgroundColor' => ["#228B22", '#ff0000']])
            ->color(["#228B22", '#ff0000']);


        return view('movies.chart',[
            'title' => 'Chart',
            'chart' => $chart,
            'movie' => $movie
        ]);
    }
}

