<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Effects.aspx.cs" Inherits="Week3_Default" %>

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
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<script src="exp3.js" type="text/javascript"></script>

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
        <h2>Basic JQuery Effects</h2>
      </div>

      
   </div>
 
 <div class="container">
   <div class="main-content">
     
      <div class="container">
        <img src="Images/Vegeta.jpg" id="picture" width='300' height='260'/>
      </div>
      <div class="container">
        <button class="btn btn-success" id="hidePic">Hide Picture</button>
        <button class="btn btn-success" id="showPic">Show Picture</button>
        <button class="btn btn-success" id="fadePic">Fade Image</button>
        <button class="btn btn-success" id="pulsatePic">Pulsate Image</button>
     </div>
 
   </div>
 </div>

 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">JQuery Effects</h3>
  </div>
  <div class="panel-body">
  <pre>
       The main aim of this experiment is to demonstrate the various
       effects we can accomplish with only a few lines of code using Jquery.
       Above we have an image and we can manipulate that image using JQuery.
       The same concepts can e applied to a div tag or any other DOM element.
        
  </pre>


  

 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">HTML5</h3>
  </div>
  <div class="panel-body">
     &lt;div class=&quot;container&quot;&gt;<br />
   &lt;div class=&quot;main-content&quot;&gt;<br />
     <br />
      &lt;div class=&quot;container&quot;&gt;<br />
        &lt;img src=&quot;Images/Vegeta.jpg&quot; id=&quot;picture&quot; width='300' height='260'/&gt;<br />
      &lt;/div&gt;<br />
      &lt;div class=&quot;container&quot;&gt;<br />
        &lt;button class=&quot;btn btn-success&quot; id=&quot;hidePic&quot;&gt;Hide Picture&lt;/button&gt;<br />
        &lt;button class=&quot;btn btn-success&quot; id=&quot;showPic&quot;&gt;Show Picture&lt;/button&gt;<br />
        &lt;button class=&quot;btn btn-success&quot; id=&quot;fadePic&quot;&gt;Fade Image&lt;/button&gt;<br />
        &lt;button class=&quot;btn btn-success&quot; id=&quot;pulsatePic&quot;&gt;Pulsate Image&lt;/button&gt;<br />
     &lt;/div&gt;<br />
 <br />
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
        $("document").ready(function () {

    $('#hidePic').bind('click', hideImage);
    $('#showPic').bind('click', showImage);
    $('#fadePic').bind('click', fadeImage);
    $('#pulsatePic').bind('click', pulsateImage);
});

function hideImage() {

    $('#picture').hide('explode',{},2500);

}

function showImage() {

    $('#picture').show('fold', {},2500);

}

function fadeImage() {

    $('#picture').fadeOut(2500);

}

function pulsateI() {

    $('#picture').effect('pulsate', { times: 5}, 200);
}
        </pre>
      </div>
   </div>
 </div>

 <div class="container">
        <div class="btn-group">
              <a href="../fileview/Default.aspx?~/Week3/Effects.aspx" class="btn btn-primary">View Source HTML</a>
              <a href="../fileview/Default.aspx?~/Week3/exp3.js" class="btn btn-primary">View Javascript</a>      
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