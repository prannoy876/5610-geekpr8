<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Animate.aspx.cs" Inherits="Week3_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="exp2.js" type="text/javascript"></script>

<style>
   
   body
   {
       padding:10px;
   }
   
   .main-content
   {
       padding:10px;
   }
   
   .btn-group
   {
       padding:23px;
   }
   
   .jumbotron {
    margin-bottom: 0px;
    background-image: url(Images/petronasTowers.jpg);
    background-size: cover;
    background-repeat: no-repeat;
    color: white;
    text-shadow: black 0.3em 0.3em 0.3em;
    height:500px;
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

   <div class="jumbotron" id="banner">
      <div class="container text-center center-block">
        <h2>Animate an Image with JQuery</h2>
      </div>

      
   </div>
 
 <div class="container">
   <div class="main-content">

        

        

   </div>
 </div>

 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Image Animation</h3>
  </div>
  <div class="panel-body">
  <pre>
       In this experiment we make use of JQuery to animate the image within the jumbotron class that
       is being used as a background.
  </pre>


  

 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">HTML5</h3>
  </div>
  <div class="panel-body">
     <br />
&lt;br /&gt;<br />
&lt;div class=&quot;jumbotron&quot; id=&quot;banner&quot;&gt;&lt;br /&gt;<br />
      &lt;div class=&quot;container text-center center-block&quot;&gt;&lt;br /&gt;<br />
        &lt;h2&gt;Animate an Image with JQuery&lt;/h2&gt;&lt;br /&gt;<br />
      &lt;/div&gt;<br />
   &lt;/div&gt;
  </div>
</div>
 </div>


 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">CSS3</h3>
  </div>
  <div class="panel-body">
   <pre>
   .jumbotron {
    margin-bottom: 0px;
    background-image: url(Images/petronasTowers.jpg);
    background-size: cover;
    background-repeat: no-repeat;
    color: white;
    text-shadow: black 0.3em 0.3em 0.3em;
    height:500px;
}
   </pre>
     
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
   $(function () {
    var x = 0;
    var y = 0;

    var banner = $("#banner");
    banner.css('backgroundPosition', x + 'px' + ' ' + y + 'px');

    window.setInterval(function () {

        banner.css("backgroundPosition", x + 'px' + ' ' + y + 'px');
        y--;
    }, 90);
});
        </pre>
    
      </div>
   </div>
 </div>

 <div class="container">
        <div class="btn-group">
              <a href="../fileview/Default.aspx?~/Week3/Animate.aspx" class="btn btn-primary">View Source HTML</a>
              <a href="../fileview/Default.aspx?~/Week3/exp2.js" class="btn btn-primary">View Javascript</a>     
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

 <script>

      

</script>
 

</body>
</html>

