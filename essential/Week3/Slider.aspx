<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Slider.aspx.cs" Inherits="Week3_Default" %>

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
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/dot-luv/jquery-ui.css" />
<link rel="Stylesheet" type="text.css" href="jquery/jquery-ui.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<script src="exp4.js" type="text/javascript"></script>

<style>
   
   body
   {
       padding:10px;
   }
   
   .main-content
   {
       padding:10px;
   }
   
   .container
   {
       padding:5px;
   }
   
   .btn-group
   {
       padding:23px;
   }
   
   
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
        <h2>JQuery UI Slider</h2>
      </div>

      
   </div>
 
 <div class="container">
   <div class="main-content">
        <div id="slider">
        </div>
        <div id="slider_value">
        </div>

     
    
   </div>
 </div>

 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title"></h3>
  </div>
  <div class="panel-body">
  <pre>
       In this experiment we demonstrate the use of the JQuery UI
       Slider which can be used to select a value from a range of values.
        
  </pre>


  

 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">HTML5</h3>
  </div>
  <div class="panel-body">
     &lt;div class=&quot;container&quot;&gt;<br />
   &lt;div class=&quot;main-content&quot;&gt;<br />
        &lt;div id=&quot;slider&quot;&gt;<br />
        &lt;/div&gt;<br />
        &lt;div id=&quot;slider_value&quot;&gt;<br />
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
        $(function () {

    var min_value = 5;
    var max_value = 400;

    $("#slider").slider({

       min: min_value,
       max: max_value,
        slide: function (event, ui) {
            $("#slider_value").html('&pound;' + ui.value);

        },

        stop: function( event,ui)
        {
          alert(ui.value);

        }


    });
});
        </pre>
      </div>
   </div>
 </div>

 <div class="container">
        <div class="btn-group">
              <a href="../fileview/Default.aspx?~/Week3/Slider.aspx" class="btn btn-primary">View Source HTML</a>
              <a href="../fileview/Default.aspx?~/Week3/exp4.js" class="btn btn-primary">View Javascript</a>      
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
