<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GoogleMaps.aspx.cs" Inherits="Week2_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="//maps.googleapis.com/maps/api/js?v=3.exp&sensor=true"></script>

<style>
   
   body
   {
       padding:10px;
   }
   
   #map
   {
       width:400px;
       height:380px;
   }
   
   .btn-group
   {
       padding:23px;
   }
</style>

</head>
<body>

 <nav class="navbar  navbar-fixed-top navbar-inverse" id="my-navbar">
       <div class="container">
         <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">

               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
             </button>
              <a href="" class="navbar-brand">cs5610</a>
          </div>

          
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <a href="../Experiments.aspx" class="btn btn-info navbar-btn navbar-right">Experiments</a>
                <ul class=" nav navbar-nav">

                <li class="active"><a href="../Default.aspx">Home</a></li>

                
              
                </ul>
            </div>
       </div>
  </nav>

   <div class="jumbotron">
      <div class="container text-center center-block">
        <h1>Embedding Google Maps on Web Page</h1>
      </div>
   </div>
 
 <div class="container">
   <div class="content">
          <p><h2>Click the Button to display Google Map</h2></p>

          <button class="btn btn-info" onclick="getLocation()">Try It</button>
   </div>
 </div>

 <div class="container">
   <div id="map">
          
   </div>
   </div>


 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title"></h3>
  </div>
  <div class="panel-body">
    <pre>  Now that you’ve linked to the Google Map API, all the functionality of Google Maps
is available to you through JavaScript. But, we need a place to put our Google Map,
and to do that we need to define an element that is going to hold it.

          We add the Map to the div having id="map".
          
          We pass on the parameters for latitude and longitude (Look at the previous experiment)
          unto the showMap() function which displays the Map for us accordingly.     

    </pre>
  </div>
</div>
 </div>

 <div class="summary">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">HTML5</h3>
      </div>
    <div class="panel-body">
      &lt;div class=&quot;container&quot;&gt;<br />
   &lt;div class=&quot;content&quot;&gt;<br />
          &lt;p&gt;&lt;h2&gt;Click the Button to display Google Map&lt;/h2&gt;&lt;/p&gt;<br />
<br />
          &lt;button class=&quot;btn btn-info&quot; onclick=&quot;getLocation()&quot;&gt;Try It&lt;/button&gt;<br />
   &lt;/div&gt;<br />
 &lt;/div&gt;<br />
<br />
 &lt;div class=&quot;container&quot;&gt;<br />
   &lt;div id=&quot;map&quot;&gt;<br />
          <br />
   &lt;/div&gt;<br />
   &lt;/div&gt;<br />

  </div>
</div>
</div>

 <div class="summary">
    <div class="panel panel-default">
       <div class="panel-heading">
          <h3 class="panel-title">Javascript</h3>
       </div>
     <div class="panel-body">
       <pre>
        

            var x = document.getElementById("demo");

            function getLocation() {
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(showPosition);
                } else {
                    x.innerHTML = "Geolocation is not supported by this browser.";
                }
            }

            function showPosition(position) {

                showMap(position.coords);

            }


            function showMap(coords) {
                var map;
                var googleLatAndLong =
            new google.maps.LatLng(coords.latitude,
            coords.longitude);
                var mapOptions = {
                    zoom: 15,
                    center: googleLatAndLong,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                var mapDiv = document.getElementById("map");
                map = new google.maps.Map(mapDiv, mapOptions)
                google.maps.event.addDomListener(window, 'load', initialize);
            }
              
         
        </pre>
      </div>
   </div>
 </div>

 <div class="container">
        <div class="btn-group">
              <a href="fileview/Default.aspx?~/experiment1.aspx" class="btn btn-primary">View Source</a>     
        <div>
  </div>


  <footer>
     <div class="navbar  navbar-fixed-bottom navbar-inverse" role="navigation">
        <div class="container">
          <div class="navbar-text pull-left">
            <p>Copyright &copy 2015 Prannoy Roche</p>
          </div>

   

          <div class="navbar-text pull-right">
             <a href="http://www.facebook.com/prannoy.roche" <i class="fa fa-facebook-square fa-2x"></i></a>
             <a href="http://www.linkedin.com/in/prannoyroche/" <i class="fa fa-linkedin-square fa-2x"></i></a>
          </div>
        </div>
     </div>
   </footer>
 
 <script type="text/javascript">

     var x = document.getElementById("demo");

     function getLocation() {
         if (navigator.geolocation) {
             navigator.geolocation.getCurrentPosition(showPosition);
         } else {
             x.innerHTML = "Geolocation is not supported by this browser.";
         }
     }

     function showPosition(position) {

     showMap(position.coords);
        
     }


     function showMap(coords) {
         var map;
         var googleLatAndLong =
            new google.maps.LatLng(coords.latitude,
            coords.longitude);
         var mapOptions = {
             zoom: 15,
             center: googleLatAndLong,
             mapTypeId: google.maps.MapTypeId.ROADMAP
         };
         var mapDiv = document.getElementById("map");
         map = new google.maps.Map(mapDiv, mapOptions)
         google.maps.event.addDomListener(window, 'load', initialize);
     }

</script>
 

</body>
</html>