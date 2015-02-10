<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JQuery.aspx.cs" Inherits="Week3_Default" %>

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
<script src="exp1.js" type="text/javascript"></script>

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
        <h2>Toggling Panels using Mapping</h2>

        <button class="btn btn-default" id="button1" data-panelid="panel1" value="Button 1">Button 1</button>
         <button class="btn btn-default" id="button2" data-panelid="panel2" value="Button 2">Button 2</button>
          <button class="btn btn-default" id="button3"  data-panelid="panel3" value="Button 3">Button 3</button>
           <button class="btn btn-default" id="button4" data-panelid="panel4 "value="Button 4">Button 4</button>


      </div>
   </div>
 
 <div class="container">
   <div class="main-content">

        

         <div class="col-xs-3">
           <div id="panel1" class="panel panel-primary">
             <div class="panel-heading">
               Panel 1
             </div>
             <div class="panel-body">
               Content
             </div>
           </div>
         </div>


         <div class="col-xs-3">
           <div id="panel2" class="panel panel-primary">
             <div class="panel-heading">
               Panel 2
             </div>
             <div class="panel-body">
               Content
             </div>
           </div>
         </div>


         <div class="col-xs-3">
           <div id="panel3" class="panel panel-primary">
             <div class="panel-heading">
               Panel 3
             </div>
             <div class="panel-body">
               Content
             </div>
           </div>
         </div>


         <div class="col-xs-3">
           <div id="panel4" class="panel panel-primary">
             <div class="panel-heading">
               Panel 4
             </div>
             <div class="panel-body">
               Content
             </div>
           </div>
         </div>


   </div>
 </div>

 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Aim</h3>
  </div>
  <div class="panel-body">
  <pre>
      The aim of this experiment is to Toggle each panel by mapping each button to
      a particular panel.This way it is possible to write clean JQuery code rather than
      writing the same code multiple times.

      Notice the data-panelid attribute on each button which refers to the id of each
      target panel.
  </pre>


  

 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">HTML5</h3>
  </div>
  <div class="panel-body">
     &lt;div class=&quot;jumbotron&quot;&gt;<br />
      &lt;div class=&quot;container text-center center-block&quot;&gt;<br />
        &lt;h2&gt;Toggling Panels using Mapping&lt;/h2&gt;<br />
<br />
        &lt;button class=&quot;btn btn-default&quot; id=&quot;button1&quot; data-panelid=&quot;panel1&quot; value=&quot;Button 1&quot;&gt;Button 1&lt;/button&gt;<br />
         &lt;button class=&quot;btn btn-default&quot; id=&quot;button2&quot; data-panelid=&quot;panel2&quot; value=&quot;Button 2&quot;&gt;Button 2&lt;/button&gt;<br />
          &lt;button class=&quot;btn btn-default&quot; id=&quot;button3&quot;  data-panelid=&quot;panel3&quot; value=&quot;Button 3&quot;&gt;Button 3&lt;/button&gt;<br />
           &lt;button class=&quot;btn btn-default&quot; id=&quot;button4&quot; data-panelid=&quot;panel4 &quot;value=&quot;Button 4&quot;&gt;Button 4&lt;/button&gt;<br />
<br />
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
          $(function () {

           $('.btn').on('click', function () {

        var panelId = $(this).attr('data-panelid');
        $('#' + panelId).toggle();


    });


});
        </pre>
    
      </div>
   </div>
 </div>

 <div class="container">
        <div class="btn-group">
              <a href="../fileview/Default.aspx?~/Week3/JQuery.aspx" class="btn btn-primary">View Source HTML</a> <br /> 
              <a href="../fileview/Default.aspx?~/Week3/exp1.js" class="btn btn-primary">View Source Javascript</a>     
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

   
</body>
</html>
