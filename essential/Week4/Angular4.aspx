<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Angular4.aspx.cs" Inherits="Week4_Angular4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Angular Demo</title>
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.3/angular.min.js"></script>
   <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.1/angular-animate.min.js"></script>
   <script src="js/exp4.js"></script>
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />


<style>


.main-container
{
    padding:70px;
    margin-bottom:10px;
    
}

.search-container
{
    padding-bottom:10px;
}

.ng-enter
{
    transition:0.75s;
    opacity:0;
}

.ng-enter-active
{
    
    opacity:1;
}
.ng-enter-stagger
{
    transition-delay:0.1s;
}

.ng-leave-stagger
{
    transition-delay:0.1s;
}

.ng-leave
{
    transition:0.75s;
    opacity:1;
}


.ng-leave-active
{
   
    opacity:0;
}

</style>

<script type='text/javascript'>

  
</script>

  
</head>
<body ng-app="myApp">


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
                <a href="Experiments.aspx" class="btn btn-info navbar-btn navbar-right">Experiments</a>
                <ul class=" nav navbar-nav">
                   <li class="active"><a href="../Default.aspx">Home</a></li>
                </ul>
            </div>
       </div>
  </nav>

<div class="main-container" ng-controller = "myController">

   <button ng-click="addItem()"class="btn btn-success">Add</button>
   <button ng-click="clearItems()" class="btn btn-success">Clear</button>
   <hr />
   <button  class="btn btn-danger"ng-repeat="item in items" ng-click="removeItem($index)">
   {{item.title}}
   </button>
  </div>

  <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">About the Experiment</h3>
  </div>
  <div class="panel-body">
    <pre>

           In this experiment we make use of Animation in AngularJs using
           ng-animate and ng-leave which help in performing some basic animations
           on the DOM elements.

           When the Add button is clicked, a list of 10 buttons are added to the DOM.
           As these elements are being added they are given a class of ng-enter initially 
           which has opacity=0.The element is given a class of ng-enter-active once it
           is fully available.

           Similarly when we click  the Clear button or any item button these elements
           are being removed from the DOM at which point the element is given the ng-leave and it 
           transitions to the ng-leave-active at which point the element is invisible.
            
 </pre>
</div>
 </div>
 </div>


 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">HTML</h3>
  </div>
  <div class="panel-body">
   <pre>
   &lt;div class=&quot;main-container&quot; ng-controller = &quot;myController&quot;&gt;<br />
<br />
   &lt;button ng-click=&quot;addItem()&quot;class=&quot;btn btn-success&quot;&gt;Add&lt;/button&gt;<br />
   &lt;button ng-click=&quot;clearItems()&quot; class=&quot;btn btn-success&quot;&gt;Clear&lt;/button&gt;<br />
   &lt;hr /&gt;<br />
   &lt;button  class=&quot;btn btn-danger&quot;ng-repeat=&quot;item in items&quot; ng-click=&quot;removeItem($index)&quot;&gt;<br />
   {{item.title}}<br />
   &lt;/button&gt;<br />
  &lt;/div&gt;
  </pre>
  </div>
</div>
 </div>

 

 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">CSS</h3>
  </div>
  <div class="panel-body">
  <pre>

  .ng-enter
{
    transition:0.75s;
    opacity:0;
}

.ng-enter-active
{
    
    opacity:1;
}
.ng-enter-stagger
{
    transition-delay:0.1s;
}

.ng-leave-stagger
{
    transition-delay:0.1s;
}

.ng-leave
{
    transition:0.75s;
    opacity:1;
}


.ng-leave-active
{
   
    opacity:0;
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
         
 var app = angular.module("myApp", ['ngAnimate']);


app.controller("myController", function myContoller($scope) {

    $scope.items = [];
    $scope.addItem = function () {

        for (i = 10; i--; ) {
            $scope.items.push({ 'title': 'item' + i })
        }
    }

    $scope.clearItems = function () {
        $scope.items = [];

    }
    $scope.removeItem = function (index) {
        $scope.items.splice(index, 1);
    }

})

       </pre>
      </div>
   </div>
 </div>

 

 

  <div class="summary">

  <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">References</h3>
  </div>
  <div class="panel-body">
    <pre>

    I referred to Lynda.com's 'Up running with Angular' tutorial series
    </pre>
  
</div>
 </div>
  
  </div>

  <div class="container">
        <div class="btn-group">
             <a href="../fileview/Default.aspx?~/Week4/Angular4.aspx" class="btn btn-primary">View Source HTML</a>
             <a href="../fileview/Default.aspx?~/Week4/js/exp4.js" class="btn btn-primary">View Javascript</a>      
        </div>
  </div>
  </div>


 
</body>
</html>