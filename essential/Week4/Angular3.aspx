<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Angular3.aspx.cs" Inherits="Week4_Default" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Angular Demo</title>
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.3/angular.min.js"></script>
   <script src="js/exp3.js"></script>
  
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

.pic
{
    float:left;
    padding:5px;
}

input.ng-invalid.ng-dirty
{
    border-color:Red;
    
}

</style>

<script type='text/javascript'>

  
</script>

  
</head>
<body ng-app="myApp1">


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

<div class="main-container" ng-controller = "myController1">
   <form name="frm" >
     <div class="form-group">
       <input type="email"  placeholder="Enter an email"class="form-control" name="email" ng-model="user.email" required />
       <span ng-show="frm.email.$dirty && frm.email.$error.required">Required</span>
        <span ng-show="frm.email.$dirty && frm.email.$error.email">Not an email</span>
     </div>

      <div class="form-group">
       <input type="password" placeholder="Enter a password between 5 and 10 chars" class="form-control" name="password" ng-model="user.password" ng-minlength="5" ng-maxlength="10" required />
       <span ng-show="frm.password.$dirty && frm.password.$error.required">Required</span>
       <span ng-show="frm.password.$dirty && frm.password.$error.minlength">Too Short!</span>
       <span ng-show="frm.password.$dirty && frm.password.$error.maxlength">Too Long!</span>
     </div> 

     <button ng-disabled="frm.$invalid" class="btn btn-primary">Log On</button>
    </form>
 </div>

  <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">About the Experiment</h3>
  </div>
  <div class="panel-body">
    <pre>

            This experiment we demonstrate how we can perform form validations using Angular JS

            We have two input fields of type email and password.Both fields are required.For the Email
            AngularLS detects that it has type=email and is required.With the help pf ng-show ,the appropriate
            message is displayed depending on whether the email is invalid or field is empty.The fr.email.$dirty,fr.email.$error,$fr.email
            .$required take care of these.

            We can similarly validate the password using the above controls.We can also set password min and max
            length and display the appropriate errors dynamically.


     
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
  <pre>
  &lt;div class=&quot;main-container&quot; ng-controller = &quot;myController1&quot;&gt;<br />
   &lt;form name=&quot;frm&quot; &gt;<br />
     &lt;div class=&quot;form-group&quot;&gt;<br />
       &lt;input type=&quot;email&quot;  placeholder=&quot;Enter an email&quot;class=&quot;form-control&quot; name=&quot;email&quot; ng-model=&quot;user.email&quot; required /&gt;<br />
       &lt;span ng-show=&quot;frm.email.$dirty &amp;&amp; frm.email.$error.required&quot;&gt;Required&lt;/span&gt;<br />
        &lt;span ng-show=&quot;frm.email.$dirty &amp;&amp; frm.email.$error.email&quot;&gt;Not an email&lt;/span&gt;<br />
     &lt;/div&gt;<br />
<br />
      &lt;div class=&quot;form-group&quot;&gt;<br />
       &lt;input type=&quot;password&quot; placeholder=&quot;Enter a password&quot; class=&quot;form-control&quot; name=&quot;password&quot; ng-model=&quot;user.password&quot; ng-minlength=&quot;5&quot; ng-maxlength=&quot;10&quot; required /&gt;<br />
       &lt;span ng-show=&quot;frm.password.$dirty &amp;&amp; frm.password.$error.required&quot;&gt;Required&lt;/span&gt;<br />
       &lt;span ng-show=&quot;frm.password.$dirty &amp;&amp; frm.password.$error.minlength&quot;&gt;Too Short!&lt;/span&gt;<br />
       &lt;span ng-show=&quot;frm.password.$dirty &amp;&amp; frm.password.$error.maxlength&quot;&gt;Too Long!&lt;/span&gt;<br />
     &lt;/div&gt; <br />
<br />
     &lt;button ng-disabled=&quot;frm.$invalid&quot; class=&quot;btn btn-primary&quot;&gt;Log On&lt;/button&gt;<br />
    &lt;/form&gt;<br />
 &lt;/div&gt;<br />
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
         
 var app = angular.module("myApp1", []);


app.controller("myController1", function myContoller1 ($scope) {

})
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
 input.ng-invalid.ng-dirty
{
    border-color:Red;
    
}
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
             <a href="../fileview/Default.aspx?~/Week4/Angular3.aspx" class="btn btn-primary">View Source HTML</a>
             <a href="../fileview/Default.aspx?~/Week4/js/exp3.js" class="btn btn-primary">View Javascript</a>      
        </div>
  </div>
  </div>
</body>
</html>

