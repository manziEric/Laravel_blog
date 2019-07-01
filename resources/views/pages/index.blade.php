@extends('layouts.app')

@section('content') 

        
        <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/blog/">
                <!-- Bootstrap core CSS -->
        <link href="/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">  
        <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/4.3/examples/blog/blog.css" rel="stylesheet">

        {{-- inporting css in blade, we kunnen php echo gebruiken of {{ }} --}}
        <link rel="stylesheet" href="{{ asset('css/style.css') }}" type="text/css">

      <div class="blog-post">
          <h2 class="blog-post-title">Sample blog post</h2>
          <p class="blog-post-meta">January 1, 2014 by <a href="#">Mark</a></p>
  
          <p>This blog post shows a few different types of content that’s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>
          <hr>
          <p>Cum sociis natoque penatibus et magnis <a href="#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>
          <blockquote>
            <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
          </blockquote>
          <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
        </div><!-- /.blog-post -->


      <div class="row mb-2"> 
        <div class="col-md-6">
          <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
            {{-- vak neemt de post image over   --}}
            @foreach($randompost as $post)
            <div class="col p-4 d-flex flex-column position-static" style="background-image: url('{{ url('/') }}/storage/cover_images/{{$post->cover_image}}'); background-size: 100% 100%;">
              @endforeach
              <strong class="d-inline-block mb-2 text-primary"><h5 style="color:white;">From The Archive</h5></strong>
              <h3 class="mb-0"> 
                @foreach($randompost as $post)
                <a style="color:white;" href="{{ url('/') }}/posts/{{$post->id}}">{{str_limit($post->title, 10)}}</a>
                  </h3>
              <div class="mb-1 text-muted">
                      <p style="color:white;">
                          Created {{$post->created_at->diffForhumans()}} <br>
                      </p>

                  <a href="{{ url('/') }}/posts/{{$post->id}}" class="stretched-link" style="color:white;">{!! str_limit($post->body, 80) !!} </a>
                 
                  @endforeach
                </div>
              </div>

            <div class="col-auto d-none d-lg-block">
              <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" 
              preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail">
              <title>Placeholder</title><rect width="100%" height="100%" fill="#74d8fc"/><text x="50%" y="50%" fill="#eceeef" 
              dy=".3em"></text></svg>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">

              @foreach($posts as $post)
            <div class="col p-4 d-flex flex-column position-static" style="background-image: url('/storage/cover_images/{{$post->cover_image}}'); background-size: 100% 100%;">
              <strong class="d-inline-block mb-2 text-success"><h5 style="color:white;">New Post</h5></strong>
              <h3 class="mb-0"><a style="color:white;" href="{{ url('/') }}/posts/{{$post->id}}">{{str_limit($post->title, 10)}}</a></h3>
              @endforeach

              @foreach($posts as $post)
              <div class="mb-1 text-muted">
                <p style="color:white;">
                    Created  {{ $post->created_at->diffForhumans() }} <br>
                </p>
            
                <a href="{{ url('/') }}/posts/{{$post->id}}" class="stretched-link" style="color:white;">{!! str_limit($post->body, 80) !!} </a>
              @endforeach
            </div>
          </div>

            <div class="col-auto d-none d-lg-block">
              <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice"
               focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" 
               fill="#74d8fc"/><text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></svg>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <main role="main" class="container">
      <div class="row">
        <div class="col-md-8 blog-main">
          <h3 class="pb-4 mb-4 font-italic border-bottom">
            From the Firehose
          </h3>
    
         
    
          <div class="blog-post">
            <h2 class="blog-post-title">Another blog post</h2>
            <p class="blog-post-meta">December 23, 2013 by <a href="#">Jacob</a></p>
    
            <p>Cum sociis natoque penatibus et magnis <a href="#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>
           
              <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              
              <h3 class="blog-post-title">Search for a country info</h3><br>
              {{-- searchbar --}}
            
            <div>
              <input  id="searchInput" type="text" name="name" placeholder="Country name"><br>
              <button id="modalBtn" class="button">Info</button>
            </div>

             <div id="simpleModal" class="modal">
                 <div class="modal-content">
                     <span class="closeBtn">&times;</span>
                 <ul>
                     <li id="par"></li>
                     <li id="par1"></li>
                     <li id="par2"></li>
                     <li id="par3"></li>
                     <li id="par4"></li>
                     <li id="par5"></li>
                 </ul>
                 </div>
             </div>
             
            </div><!-- /.blog-post -->
          
        </div><!-- /.blog-main -->
              
          <aside class="col-md-4 blog-sidebar">
            <div class="p-4 mb-3 bg-light rounded">

                      <ul >
                        <li id="name" style="font-size: 13px;"></li>
                        <li><img id="icon"></li>
                        <li id="desc" style="font-size: 12px;"></li>
                        <li id="temp"></li>
                      <hr>
                        <li id="name1" style="font-size: 13px;"></li>
                        <li><img id="icon1"></li>
                        <li id="desc1" style="font-size: 12px;"></li>
                        <li id="temp1"></li>
                      <hr>
                        <li id="name2" style="font-size: 13px;"></li>
                        <li><img id="icon2"></li>
                        <li id="desc2" style="font-size: 12px;"></li>
                        <li id="temp2"></li>
                    <hr>
                        <li id="name3" style="font-size: 13px;"></li>
                        <li><img id="icon3"></li>
                        <li id="desc3" style="font-size: 12px;"></li>
                        <li id="temp3"></li>
                    </ul>
          </div>
        </aside><!-- /.blog-sidebar -->
      </div><!-- /.row -->
      {{-- js files moeten in de public folder gaan  --}}
      <script type="text/javascript" src="{{ asset('js/weather.api.js')}}"></script>
      <script type="text/javascript" src="{{ asset('js/country.js')}}"></script>
    </main><!-- /.container -->


@endsection