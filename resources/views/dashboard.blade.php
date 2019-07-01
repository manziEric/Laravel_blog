@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                
                @if( $admin == 1)
                {{-- user 1 is admin --}}
                <div class="card-header btn btn-primary"><a href="/admin">Go to: Admin Panel</a></div>

                @else
                <div class="card-header">Dashboard</div>
                @endif
                <br>
                
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                        
                    <h3>Your Blog Posts</h3>
                    <a href="/posts/create" class="btn btn-primary">Creat Post</a>
                   
                    @if(count($posts) > 0)
                    <table class="table table-striped">
                            
                        <tr>
                            <th>Title</th>
                            <th></th>
                            <th></th>
                        </tr>
                            @foreach ($posts as $post)
                                <tr>
                                <td>{{$post->title}}</td>
                                <td><a href="/posts/{{$post->id}}/edit" class="btn btn-primary">Edit</a></td>
                                        <td>
                                                {!! Form::open(['action'=> ['PostsController@destroy', $post->id], 'method' => 'POST', 'class' => 'pull-right']) !!}
                                                {{Form::hidden('_method', 'DELETE')}}
                                                {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
                                                {!! Form::close() !!}
                                        </td>
                                </tr>
                            @endforeach
                        
                    </table>
                    @else
                    <p>You have no posts</p>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
