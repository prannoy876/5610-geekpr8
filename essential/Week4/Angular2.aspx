<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Angular2.aspx.cs" Inherits="Week4_Default" %>

<!doctype html>
<html lang="en" ng-app="myApp">
<head>
  <meta charset="UTF-8">
  <title>Angular Demo</title>
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0/angular.min.js"></script>
  
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

</style>

<script type='text/javascript'>

    var myApp = angular.module('myApp', []);

    myApp.controller('MyController', function MyController($scope) {
        $scope.artists = [
  {
      "name": "Barot Bellingham",
      "shortname": "Barot_Bellingham",
      "reknown": "Royal Academy of Painting and Sculpture",
      "bio": "Barot has just finished his final year at The Royal Academy of Painting and Sculpture, where he excelled in glass etching paintings and portraiture. Hailed as one of the most diverse artists of his generation, Barot is equally as skilled with watercolors as he is with oils, and is just as well-balanced in different subject areas. Barot's collection entitled \"The Un-Collection\" will adorn the walls of Gilbert Hall, depicting his range of skills and sensibilities - all of them, uniquely Barot, yet undeniably different"
  },
  {
      "name": "Jonathan G. Ferrar II",
      "shortname": "Jonathan_Ferrar",
      "reknown": "Artist to Watch in 2012",
      "bio": "The Artist to Watch in 2012 by the London Review, Johnathan has already sold one of the highest priced-commissions paid to an art student, ever on record. The piece, entitled Gratitude Resort, a work in oil and mixed media, was sold for $750,000 and Jonathan donated all the proceeds to Art for Peace, an organization that provides college art scholarships for creative children in developing nations"
  },
  {
      "name": "Hillary Hewitt Goldwynn-Post",
      "shortname": "Hillary_Goldwynn",
      "reknown": "New York University",
      "bio": "Hillary is a sophomore art sculpture student at New York University, and has already won all the major international prizes for new sculptors, including the Divinity Circle, the International Sculptor's Medal, and the Academy of Paris Award. Hillary's CAC exhibit features 25 abstract watercolor paintings that contain only water images including waves, deep sea, and river."
  },
  {
      "name": "Hassum Harrod",
      "shortname": "Hassum_Harrod",
      "reknown": "Art College in New Dehli",
      "bio": "The Art College in New Dehli has sponsored Hassum on scholarship for his entire undergraduate career at the university, seeing great promise in his contemporary paintings of landscapes - that use equal parts muted and vibrant tones, and are almost a contradiction in art. Hassum will be speaking on \"The use and absence of color in modern art\" during Thursday's agenda."
  },
  {
      "name": "Jennifer Jerome",
      "shortname": "Jennifer_Jerome",
      "reknown": "New Orleans, LA",
      "bio": "A native of New Orleans, much of Jennifer's work has centered around abstract images that depict flooding and rebuilding, having grown up as a teenager in the post-flood years. Despite the sadness of devastation and lives lost, Jennifer's work also depicts the hope and togetherness of a community that has persevered. Jennifer's exhibit will be discussed during Tuesday's Water in Art theme."
  },
  {
      "name": "LaVonne L. LaRue",
      "shortname": "LaVonne_LaRue",
      "reknown": "Chicago, IL",
      "bio": "LaVonne's giant-sized paintings all around Chicago tell the story of love, nature, and conservation - themes that are central to her heart. LaVonne will share her love and skill of graffiti art on Monday's schedule, as she starts the painting of a 20-foot high wall in the Rousseau Room of Hotel Contempo in front of a standing-room only audience in Art in Unexpected Places."
  },
  {
      "name": "Constance Olivia Smith",
      "shortname": "Constance_Smith",
      "reknown": "Fullerton-Brighton-Norwell Award",
      "bio": "Constance received the Fullerton-Brighton-Norwell Award for Modern Art for her mixed-media image of a tree of life, with jewel-adorned branches depicting the arms of humanity, and precious gemstone-decorated leaves representing the spouting buds of togetherness. The daughter of a New York jeweler, Constance has been salvaging the discarded remnants of her father's jewelry-making since she was five years old, and won the New York State Fair grand prize at the age of 8 years old for a gem-adorned painting of the Manhattan Bridge."
  },
  {
      "name": "Riley Rudolph Rewington",
      "shortname": "Riley_Rewington",
      "reknown": "Roux Academy of Art, Media, and Design",
      "bio": "A first-year student at the Roux Academy of Art, Media, and Design, Riley is already changing the face of modern art at the university. Riley's exquisite abstract pieces have no intention of ever being understood, but instead beg the viewer to dream, create, pretend, and envision with their mind's eye. Riley will be speaking on the \"Art of Abstract\" during Thursday's schedule"
  },
  {
      "name": "Xhou Ta",
      "shortname": "Xhou_Ta",
      "reknown": "China International Art University",
      "bio": "A senior at the China International Art University, Xhou has become well-known for his miniature sculptures, often the size of a rice granule, that are displayed by rear projection of microscope images on canvas. Xhou will discuss the art and science behind his incredibly detailed works of art."
  }
]
    });
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

<div class="main-container" ng-controller = "MyController">
<div class="search-container">
<h1>Search Student</h1>
     <div class="input-group">
     <input type="text" placeholder="Search student records" class="form-control" ng-model="query" />
     <span class="input-group-btn">
     <button class="btn btn-primary" ng-click=""><span class="glyphicon glyphicon-search" /></button>
     </span>
     </div>
     </div>
     
     

 <div class="container">
  <ul class="list-group col-md-8" ng-show="query">
    <li ng-animate="'animate'" class="list-group-item " ng-repeat="item in artists | filter:query">
      <img class="pic" ng-src="images/{{item.shortname}}_tn.jpg" width="60" height="60" alt="Photo of {{item.name}}">
        <h3>{{item.name}}</h3><br/>
        <h4>{{item.reknown}}</h4>
      
    </li>
  </ul>
  </div>

  <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">About the Experiment</h3>
  </div>
  <div class="panel-body">
    <pre>

            This experiment makes use of a search feature using Angular JS.I make use of a JSON array object
            that contains records of a certain number of students.Using this data I can search for these students
            and the result shows up dynamically by making use of Angular's filter to filter the results.


     
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
 &lt;div class=&quot;main-container&quot; ng-controller = &quot;MyController&quot;&gt;<br />
&lt;div class=&quot;search-container&quot;&gt;<br />
&lt;h1&gt;Search Student&lt;/h1&gt;<br />
     &lt;div class=&quot;input-group&quot;&gt;<br />
     &lt;input type=&quot;text&quot; placeholder=&quot;Search for your favourite artist&quot; class=&quot;form-control&quot; ng-model=&quot;query&quot; /&gt;<br />
     &lt;span class=&quot;input-group-btn&quot;&gt;<br />
     &lt;button class=&quot;btn btn-primary&quot; ng-click=&quot;&quot;&gt;&lt;span class=&quot;glyphicon glyphicon-search&quot; /&gt;&lt;/button&gt;<br />
     &lt;/span&gt;<br />
     &lt;/div&gt;<br />
     &lt;/div&gt;<br />
     <br />
     <br />
<br />
 &lt;div class=&quot;container&quot;&gt;<br />
  &lt;ul class=&quot;list-group col-md-8&quot; ng-show=&quot;query&quot;&gt;<br />
    &lt;li ng-animate=&quot;'animate'&quot; class=&quot;list-group-item &quot; ng-repeat=&quot;item in artists | filter:query&quot;&gt;<br />
      &lt;img class=&quot;pic&quot; ng-src=&quot;images/{{item.shortname}}_tn.jpg&quot; width=&quot;60&quot; height=&quot;60&quot; alt=&quot;Photo of {{item.name}}&quot;&gt;<br />
        &lt;h3&gt;{{item.name}}&lt;/h3&gt;&lt;br/&gt;<br />
        &lt;h4&gt;{{item.reknown}}&lt;/h4&gt;<br />
      <br />
    &lt;/li&gt;<br />
  &lt;/ul&gt;<br />
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
         
 var myApp = angular.module('myApp', ['ngAnimate']);

myApp.controller('MyController', function MyController($scope) {
  $scope.artists = [
  {
    "name":"Barot Bellingham",
    "shortname":"Barot_Bellingham",
    "reknown":"Royal Academy of Painting and Sculpture",
    "bio":"Barot has just finished his final year at The Royal Academy of Painting and Sculpture, where he excelled in glass etching paintings and portraiture. Hailed as one of the most diverse artists of his generation, Barot is equally as skilled with watercolors as he is with oils, and is just as well-balanced in different subject areas. Barot's collection entitled \"The Un-Collection\" will adorn the walls of Gilbert Hall, depicting his range of skills and sensibilities - all of them, uniquely Barot, yet undeniably different"
  },
  {
    "name":"Jonathan G. Ferrar II",
    "shortname":"Jonathan_Ferrar",
    "reknown":"Artist to Watch in 2012",
    "bio":"The Artist to Watch in 2012 by the London Review, Johnathan has already sold one of the highest priced-commissions paid to an art student, ever on record. The piece, entitled Gratitude Resort, a work in oil and mixed media, was sold for $750,000 and Jonathan donated all the proceeds to Art for Peace, an organization that provides college art scholarships for creative children in developing nations"
  },
  {
    "name":"Hillary Hewitt Goldwynn-Post",
    "shortname":"Hillary_Goldwynn",
    "reknown":"New York University",
    "bio":"Hillary is a sophomore art sculpture student at New York University, and has already won all the major international prizes for new sculptors, including the Divinity Circle, the International Sculptor's Medal, and the Academy of Paris Award. Hillary's CAC exhibit features 25 abstract watercolor paintings that contain only water images including waves, deep sea, and river."
  },
  {
    "name":"Hassum Harrod",
    "shortname":"Hassum_Harrod",
    "reknown":"Art College in New Dehli",
    "bio":"The Art College in New Dehli has sponsored Hassum on scholarship for his entire undergraduate career at the university, seeing great promise in his contemporary paintings of landscapes - that use equal parts muted and vibrant tones, and are almost a contradiction in art. Hassum will be speaking on \"The use and absence of color in modern art\" during Thursday's agenda."
  },
  {
    "name":"Jennifer Jerome",
    "shortname":"Jennifer_Jerome",
    "reknown":"New Orleans, LA",
    "bio":"A native of New Orleans, much of Jennifer's work has centered around abstract images that depict flooding and rebuilding, having grown up as a teenager in the post-flood years. Despite the sadness of devastation and lives lost, Jennifer's work also depicts the hope and togetherness of a community that has persevered. Jennifer's exhibit will be discussed during Tuesday's Water in Art theme."
  },
  {
    "name":"LaVonne L. LaRue",
    "shortname":"LaVonne_LaRue",
    "reknown":"Chicago, IL",
    "bio":"LaVonne's giant-sized paintings all around Chicago tell the story of love, nature, and conservation - themes that are central to her heart. LaVonne will share her love and skill of graffiti art on Monday's schedule, as she starts the painting of a 20-foot high wall in the Rousseau Room of Hotel Contempo in front of a standing-room only audience in Art in Unexpected Places."
  },
  {
    "name":"Constance Olivia Smith",
    "shortname":"Constance_Smith",
    "reknown":"Fullerton-Brighton-Norwell Award",
    "bio":"Constance received the Fullerton-Brighton-Norwell Award for Modern Art for her mixed-media image of a tree of life, with jewel-adorned branches depicting the arms of humanity, and precious gemstone-decorated leaves representing the spouting buds of togetherness. The daughter of a New York jeweler, Constance has been salvaging the discarded remnants of her father's jewelry-making since she was five years old, and won the New York State Fair grand prize at the age of 8 years old for a gem-adorned painting of the Manhattan Bridge."
  },
  {
    "name":"Riley Rudolph Rewington",
    "shortname":"Riley_Rewington",
    "reknown":"Roux Academy of Art, Media, and Design",
    "bio":"A first-year student at the Roux Academy of Art, Media, and Design, Riley is already changing the face of modern art at the university. Riley's exquisite abstract pieces have no intention of ever being understood, but instead beg the viewer to dream, create, pretend, and envision with their mind's eye. Riley will be speaking on the \"Art of Abstract\" during Thursday's schedule"
  },
  {
    "name":"Xhou Ta",
    "shortname":"Xhou_Ta",
    "reknown":"China International Art University",
    "bio":"A senior at the China International Art University, Xhou has become well-known for his miniature sculptures, often the size of a rice granule, that are displayed by rear projection of microscope images on canvas. Xhou will discuss the art and science behind his incredibly detailed works of art."
  }
]
});

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
             <a href="../fileview/Default.aspx?~/Week4/Angular2.aspx" class="btn btn-primary">View Source HTML</a>
             <a href="../fileview/Default.aspx?~/Week4/js2/controllers.js" class="btn btn-primary">View Javascript</a>      
        </div>
  </div>
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
