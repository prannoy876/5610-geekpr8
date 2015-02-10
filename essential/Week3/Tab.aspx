<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tab.aspx.cs" Inherits="Week3_Default" %>

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
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/trontastic/jquery-ui.css" />
<link rel="Stylesheet" type="text.css" href="jquery/jquery-ui.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<script src="exp5.js" type="text/javascript"></script>

<style>
   
   body
   {
       padding:10px;
   }
   
   .main-content
   {
       padding:10px;
   }
   
   #tabs
   {
       width:400px;
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
        <h2>JQuery UI Tabs</h2>
      </div>

      
   </div>
 
 <div class="container">
   <div class="main-content">
       <div id="tabs">
         <ul>
            <li><a href="#about-me">About Me</a></li>
            <li><a href="#portfolio">Portfolio</a></li>
            <li><a href="#contact">Contact</a></li>
         </ul>

         <div id="about-me">
            <p>A short paragraph about me</p>
         </div>
          <div id="portfolio">
            <p>My portfolio</p>
         </div>
          <div id="contact">
            <p>My Contact Info</p>
         </div>
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
       In this experiment we demonstrate the use of the Tab utility in JQuery UI.With this utility we
       can easily display the appropriate content for each selected tab and is very easy to implement.
        
  </pre>


  

 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">HTML5</h3>
  </div>
  <div class="panel-body">
     &lt;div class=&quot;container&quot;&gt;<br />
   &lt;div class=&quot;main-content&quot;&gt;<br />
       &lt;div id=&quot;tabs&quot;&gt;<br />
         &lt;ul&gt;<br />
            &lt;li&gt;&lt;a href=&quot;#about-me&quot;&gt;About Me&lt;/a&gt;&lt;/li&gt;<br />
            &lt;li&gt;&lt;a href=&quot;#portfolio&quot;&gt;Portfolio&lt;/a&gt;&lt;/li&gt;<br />
            &lt;li&gt;&lt;a href=&quot;#contact&quot;&gt;Contact&lt;/a&gt;&lt;/li&gt;<br />
         &lt;/ul&gt;<br />
<br />
         &lt;div id=&quot;about-me&quot;&gt;<br />
            &lt;p&gt;A short paragraph about me&lt;/p&gt;<br />
         &lt;/div&gt;<br />
          &lt;div id=&quot;portfolio&quot;&gt;<br />
            &lt;p&gt;My portfolio&lt;/p&gt;<br />
         &lt;/div&gt;<br />
          &lt;div id=&quot;contact&quot;&gt;<br />
            &lt;p&gt;My Contact Info&lt;/p&gt;<br />
         &lt;/div&gt;<br />
       &lt;/div&gt;<br />
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
   $(function () {

    $("#tabs").tabs();

 });
        </pre>
      </div>
   </div>
 </div>

 <div class="container">
        <div class="btn-group">
              <a href="../fileview/Default.aspx?~/Week3/Tab.aspx" class="btn btn-primary">View Source HTML</a>
              <a href="../fileview/Default.aspx?~/Week3/exp5.js" class="btn btn-primary">View Javascript</a>      
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
