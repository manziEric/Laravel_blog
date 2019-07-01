@extends('layouts.app')

@section('content')
 {{-- inporting css in blad we kunnen php echo gebruiken of {{ }}--}}
 <link rel="stylesheet" href="{{ asset('css/style.css') }}" type="text/css"> 
 

  <div class="about">
  <br>
  <h1 class="lg-text">About Us</h1>

 

  <p class="image-aboutus-para">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
  <p class="image-aboutus-para">
    Lorem ipsum dolor sit amet consectetur adipisicing elit. 
    Incidunt aliquid pariatur quis saepe odit amet, 
    nihil perferendis assumenda aspernatur accusantium dignissimos minus,
     ab sapiente eaque, quam delectus 
    quia distinctio atque.A eveniet debitis sapiente tenetur earum temporibus
     ullam esse, quos rerum numquam
     nostrum impedit repellendus nam ipsa quis, enim ab dicta ex id.
      Alias, voluptates voluptatum autem 
     corrupti quae officia.
    </p>
    <p class="image-aboutus-para">
        Lorem ipsum dolor sit amet consectetur adipisicing elit. 
        Incidunt aliquid pariatur quis saepe odit amet, 
        nihil perferendis assumenda aspernatur accusantium dignissimos minus,
         ab sapiente eaque, quam delectus 
        quia distinctio atque.A eveniet debitis sapiente tenetur earum temporibus
         ullam esse, quos rerum numquam
         nostrum impedit repellendus nam ipsa quis, enim ab dicta ex id.
          Alias, voluptates voluptatum autem 
         corrupti quae officia.
        </p>
    </div> 
    <script type="text/javascript" src="{{ asset('js/voice.js')}}"></script>
@endsection
