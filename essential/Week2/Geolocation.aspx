<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Geolocation.aspx.cs" Inherits="Week2_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>

<html lang="en">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style>
   
   body
   {
       padding:10px;
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
        <h1>Geolocation</h1>
      </div>
   </div>
 
 <div class="container">
   <div class="content">
          <p><h2>Click the button to get your coordinates.</h2></p>

          <button class="btn btn-info" onclick="getLocation()">Try It</button>

          <p id="demo"></p>
   </div>
 </div>

 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title"></h3>
  </div>
  <div class="panel-body">
    <pre>        In this experiment, we make use of Javascript's Geolocation API to pinpoint the exact location
    of the user.

       So when the browser recieves the location it passes on the position object to the the function showPosition()
    which contains information about the user's location like the latitude and longitude.
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
          &lt;p&gt;&lt;h2&gt;Click the button to get your coordinates.&lt;/h2&gt;&lt;/p&gt;<br />
<br />
          &lt;button class=&quot;btn btn-info&quot; onclick=&quot;getLocation()&quot;&gt;Try It&lt;/button&gt;<br />
<br />
          &lt;p id=&quot;demo&quot;&gt;&lt;/p&gt;<br />
   &lt;/div&gt;<br />
 &lt;/div&gt;
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
        x.innerHTML = "Latitude: " + position.coords.latitude +
    "   Longitude: " + position.coords.longitude;
    }
              
         
        </pre>
      </div>
   </div>
 </div>

 <div class="source">
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
        x.innerHTML = "<h3>Latitude: " + position.coords.latitude +
    "<br>Longitude: " + position.coords.longitude + "</h3>";
    }

</script>
 

</body>
</html>

