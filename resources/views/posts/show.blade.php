@extends('layouts.app')
{{-- deze pagina is voor als je de post opent op de blog pagina  --}}
@section('content')
<a href="/posts" class="btn btn-primary"> Go Back</a>
<hr>
<h1>{{$post->title}}</h1>
<img style="width:50%;" src="/storage/cover_images/{{$post->cover_image}}" alt="pic">
<br><br>
    <div>
            {{-- {!! $post->body !!} de !! zijn er om html weg te halen uit tekst De spatie van {!! is belangerijk als
                  het zo wordt geschreven { !! dan werkt het niet --}}
        {!! $post->body !!}
    </div>
    <hr>
    <small>
        Created On: {{$post->created_at}} <br>
        {{ $post->user }}
         Category: {{ $post->category }}
    </small>
    <br><br>
    @if(!Auth::guest())
        @if(Auth::user()->id == $post->user_id)
            <a href="/posts/{{$post->id}}/edit" class="btn btn-primary">Edit Post</a>

            {!! Form::open(['action'=> ['PostsController@destroy', $post->id], 'method' => 'POST', 'class' => 'float-right'])!!}
            {{Form::hidden('_method', 'DELETE')}}
            {{Form::submit('Delete Post', ['class' => 'btn btn-danger'])}}
            {!! Form::close() !!}
        @endif
    @endif
@endsection