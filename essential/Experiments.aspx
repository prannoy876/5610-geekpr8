<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Experiments.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html">

<html lang="en">
<head runat="server">
    <title>Experiment List</title>

    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>

.list-group
{
  width:500px;
  margin-left: auto ;
  margin-right: auto ; 
}

h2
{
   color:Black;
}
</style>


</head>
<body>
    <!--Navbar-->
    <div class="navbar  navbar-fixed-top navbar-inverse" id="my-navbar">
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
                <a href="Experiments.aspx" class="btn btn-success navbar-btn navbar-right">Experiments</a>
                <ul class=" nav navbar-nav">

                <li class="active"><a href="Default.aspx">Home</li>
                </ul>
            </div>
       </div>
    </div>

   <div class="jumbotron">
      <div class="container text-center center-block">
        <h2>List of Experiments</h2>
        </div>
   </div>

   <div class="exp-lists text-center center">
     <ul class="list-group">
        <li class="list-group-item"><a href="Experiment1.aspx">Experiment 1(Basic HTML5 form validation)</a></li>
        <li class="list-group-item"><a href="Responsive.aspx">Experiment 2(Responsive Web Page)</a></li>  
        <li class="list-group-item"><a href="story/index.htm?../Week2/story.txt">Week 2 Experiments</a></li> 
         <li class="list-group-item"><a href="story/index.htm?../Week3/story.txt">Week 3 Experiments</a></li>        
      
    </ul>
   </div>
  
      
</body>
</html>
