@extends('layouts.app')

@section('content') 
   
 <!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    
    <link rel="shortcut icon" type="image/x-icon" href="docs/images/favicon.ico" />

    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css" integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ==" crossorigin=""/>
    <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js" integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og==" crossorigin=""></script>


    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/pricing/">

  <!-- Bootstrap core CSS -->
  <link href="/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="{{ asset('css/style.css') }}" type="text/css">

  <!-- Custom styles for this template -->
  <link href="pricing.css" rel="stylesheet">


  </head>

  <body>
    <br>
<div class="container">
  <div class="card-deck mb-3 text-center">
    <div class="card mb-4 shadow-sm">
      <div class="card-header">
        <h4 class="my-0 font-weight-normal">Contact Form</h4>
      </div>
      <div class="card-body">
        <ul class="list-unstyled mt-3 mb-4">
          
        <form action="services" method="POST">
              <input type="text" id="fname" name="name" placeholder="Your name.."><br>
              <input type="text" id="email" name="email" placeholder="Your Email.."><br>
           
          
              <textarea id="subject" name="message" placeholder="Write something.." style="height:200px"></textarea>
          
              <button  type="submit" value="Submit" class="btn btn-lg btn-block btn-primary">Send Message</button>
              {{-- zorgt dat andere mensen geen formuliers in onze app kunnen post behalve ons --}}
              {{-- als dit er niet is dan krijgen we Error 419 --}}
              @csrf
            </form>
        </ul>
      </div>
    </div>

    <div class="card mb-4 shadow-sm">
      <div class="card-header">
        <h4 class="my-0 font-weight-normal">Our Location</h4>
      </div>
      <div class="card-body">
        <ul class="list-unstyled mt-3 mb-4">
           <li>Tel: 04 77 96 43 47</li>
          <li>Email: info@ericmanzi.com</li><br>
          <div id="mapid"></div>
        </ul>
        {{-- <button type="button" class="btn btn-lg btn-block btn-primary">Join us</button> --}}
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="{{ asset('js/map.js')}}"></script>
</body>
</html>
@endsection
