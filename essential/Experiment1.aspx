<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Experiment1.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>



<style>
    
input[type="text"] 
{
    width: 200px;
}

input[type="date"] 
{
    width: 200px;
}

.form-content
{
   margin:100px;
   
}

.summary
{
    margin:40px;
    
}

.source
{
    margin:50px;
}

@media (max-width:400px){

    .form-content{
        width: 100%;
        float:left;
        margin:20px;
    }
    
    .summary
    {
        margin:auto;
        width:100%;
        float:left;
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
                <a href="Experiments.aspx" class="btn btn-info navbar-btn navbar-right">Experiments</a>
                <ul class=" nav navbar-nav">

                <li class="active"><a href="Default.aspx">Home</a></li>

                
              
                </ul>
            </div>
       </div>
  </nav>

   <div class="jumbotron">
      <div class="container text-center center-block">
        <h2>Experiment 1</h2>
      </div>
      </div>
 
 <div class="form-content">
   <div class="content">
    <form>
      <div class="validation-example">
           <div class="form-group">
               <label> First Name:</label>
               <input required type="text" class="form-control" id="fname"  title="First name required!"  x-moz-errormessage="First Name is Required!"/>
           </div>

            <div class="form-group">
               <label> Last Name:</label>
               <input type="text" class="form-control" required title="Last Name is Required!" id="lname" x-moz-errormessage="Last Name is Required!"/>
           </div>

            <div class="form-group">
               <label>Arrival Date:</label>
               <input type="date" required class="form-control" id="arrivalDate"
                    title="Enter a valid Date" x-moz-errormessage="Enter a Valid Date"/>
           </div>
            
           <button type="submit" class="btn btn-primary">Register</button>

           
      </div>
    </form>
  </div>
 </div>

 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Basic Form Validation using HTML5's required attribute and Javascript</h3>
  </div>
  <div class="panel-body">
    <pre>        In this experiment, we perform basic form validation to check if all the fields in the form are being entered using the required 
    attribute built into HTML5.The title attribute lets you customize your own error message.

                 Also I made use of javascript which checks that the Date is a future date and not one in the past.</pre>
  </div>
</div>
 </div>

 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">HTML5</h3>
  </div>
  <div class="panel-body">
       &lt;div class="form-group"&gt;<br />
    &lt;label&gt; Last Name:&lt;/label&gt;<br />
       &lt;input type="text" class="form-control" required title="Last Name is Required!" id="Text1" x-moz-errormessage="Last Name is Required!"/&gt;<br />
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
         

              var arrivalDate = document.getElementById("arrivalDate");

              arrivalDate.addEventListener("input", function () {
                  var value = new Date(arrivalDate.value);
                  if (value < new Date()) {
                      arrivalDate.setCustomValidity("Arrival date must be after now!");
                  } else {
                      arrivalDate.setCustomValidity("");
                  }

              });
 
         
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

     var arrivalDate = document.getElementById("arrivalDate");

     arrivalDate.addEventListener("input", function () {
         var value = new Date(arrivalDate.value);
         if (value < new Date()) {
             arrivalDate.setCustomValidity("Arrival date must be after now!");
         } else {
             arrivalDate.setCustomValidity("");
         }

     });

 
 
</script>
 
</body>
</html>
