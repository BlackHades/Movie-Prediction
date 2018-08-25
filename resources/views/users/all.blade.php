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
            <div class="col-6">
                <table class="table table-responsive">
                    <thead>
                    <th>S/N</th>
                    <th>Created At</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Action</th>
                    </thead>
                    <tbody>
                        <?php $i = 1;?>
                        @foreach($users as $user)
                            <tr>
                                <td>{{$i++}}</td>
                                <td>{{$user->created_at}}</td>
                                <td>{{$user->name}}</td>
                                <td>{{$user->email}}</td>
                                <td>
                                    <a href="{{route('user.destroy',['user' => $user->id])}}" onclick="return confirm('Are you sure you want to delete user?')" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash"></i> </a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="col-1">
            </div>
            <div class="col-lg-4">
                <form method="POST" action="{{route('user.create')}}">
                    {{csrf_field()}}
                    <h3>Create User</h3>
                    <div class="form-group">
                        <input class="form-control" type="text" required name="name"  placeholder="Name"/>
                    </div>

                    <div class="form-group">
                        <input class="form-control" type="email" required name="email"  placeholder="Email Address"/>
                    </div>

                    <div class="form-group">
                        <input class="form-control" type="password" required name="password"  placeholder="Password"/>
                    </div>
                    <button type="submit" class="btn btn-default btn-block"><i class="fa fa-plus-circle"></i> Create</button>
                </form>
            </div>
        </div>
    </div>
@endsection