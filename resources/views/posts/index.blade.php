@extends('layouts.app')
{{-- deze pagina is de pagina van alle blog artikelen  --}}
@section('content')
{{-- inporting css in blad we kunnen php echo gebruiken of {{ }}--}}
<link rel="stylesheet" href="<?php echo asset('css/style.css')?>" type="text/css"> 

<div class="con">
    <h1>Post</h1><br>
    @if(count($posts) >0)

        @foreach($posts as $post)

            <div class="well">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <img style="width:100%;" src="{{ url('/') }}/storage/cover_images/{{$post->cover_image}}" alt="pic">
                    </div>
                        <div class="col-md-8 col-sm-8">
                            <h3><a href="{{ url('/') }}/posts/{{$post->id}}">{{$post->title}}</a><h3>
                            <small>writen on<br>
                                 {{$post->created_at}} <br>
                                 {{$post->name}} 
                        </div>
                </div>
               
            </div>

        @endforeach
        {{-- dit maakt dat pagination hier door kunnen we scrollen over meerder pagina's --}}
            {{$posts->links()}}
    @else
    <p>no posts found</p>
    @endif
</div>
</div>
@endsection