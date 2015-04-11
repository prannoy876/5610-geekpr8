<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Angular1.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0/angular.min.js"></script>
    <script src="js/exp1.js"></script>
 

</head>

<style>
.movie-container
{
   padding:50px; 
}
.poster
{
    margin:5px;
    float:left;
}
</style>
<body ng-app="MoviesApp">

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

  <div ng-controller="MovieController" class="movie-container container" >
     <h1>Simple Movie Library</h1>
     <div class="input-group">
     <input type="text" placeholder="Enter a search query" class="form-control" ng-model="searchByTitle" />
     <span class="input-group-btn">
     <button class="btn btn-primary" ng-click="searchMovies()"><span class="glyphicon glyphicon-search" /></button>
     </span>
     </div>
      
         <table class="table table-striped">
           <thead>
             <tr>
                <th>Title</th>
                 <th>Year</th>
                 <th>Rating</th>
                 <th>Plot</th>
               
             </tr> 
             
             <tr>
                 <th><input ng-model="movie.title" class="form-control" /></th>
                 <th><input ng-model="movie.year"class="form-control" /></th>
                 <th><input ng-model="movie.rating"class="form-control" /></th>
                 <th><input ng-model="movie.plot"class="form-control" /></th>
                   <th>
                    <button  ng-click="saveMovie()"class="btn btn-primary">
                     <span class="glyphicon glyphicon-ok" />
                  </button>
                    <button  ng-click="addMovie()"class="btn btn-success">
                     <span class="glyphicon glyphicon-plus" />
                  </button>
                 </th>
             </tr>   
           </thead>
            <tr ng-repeat="movie in movies">
              <td>{{movie.title}}</td>
              <td>{{movie.year}}</td>
              <td>{{movie.rating}}</td>
              <td><img class="poster"src="{{movie.urlPoster}}" width="50" height="50" />
              {{movie.plot}}</td>
              <td> 
                  <button  ng-click="editMovie(movie)"class="btn btn-warning">
                     <span class="glyphicon glyphicon-pencil" />
                  </button>
                  <button  ng-click="removeMovie(movie)"class="btn btn-danger">
                     <span class="glyphicon glyphicon-remove" />
                  </button>
               </td>

            </tr>
         </table>

       
  </div>

  
 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">About the Experiment</h3>
  </div>
  <div class="panel-body">
    <pre>

     In this experiment I have built a Mini Web Application which uses a Movie Web API from 
     www.myapifilms.com to list movies according to the query that is entered inside the search bar.

     We make use of the Angular JS scope variable to link the Model,Contoller and the View Together.

     When we enter a query into the search inout field and click search we make an API call
     to get the movie or movies with similar titles.Take a look at the exp1.js file for more details.

     We make use of ng-click to handle user events and ng-model to add our own movies into the list or edit
     movies and then save them to the list.

     1.Enter a query in the search bar.Hit the blue search button.

     2.View the results.Click the red buttons to delete records.

     3.Click the orange buttons to edit the results.

     4.Click the save button(blue button with tick image) to save your entry.




    </pre>
</div>
 </div>

 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">HTML5</h3>
  </div>
  <div class="panel-body">
 &lt;div class=&quot;input-group&quot;&gt;<br />
     &lt;input type=&quot;text&quot; class=&quot;form-control&quot; ng-model=&quot;searchByTitle&quot; /&gt;<br />
     &lt;span class=&quot;input-group-btn&quot;&gt;<br />
     &lt;button class=&quot;btn btn-primary&quot; ng-click=&quot;searchMovies()&quot;&gt;&lt;span class=&quot;glyphicon glyphicon-search&quot; /&gt;&lt;/button&gt;<br />
     &lt;/span&gt;<br />
     &lt;/div&gt;<br />
      <br />
         &lt;table class=&quot;table table-striped&quot;&gt;<br />
           &lt;thead&gt;<br />
             &lt;tr&gt;<br />
                &lt;th&gt;Title&lt;/th&gt;<br />
                 &lt;th&gt;Year&lt;/th&gt;<br />
                 &lt;th&gt;Rating&lt;/th&gt;<br />
                 &lt;th&gt;Plot&lt;/th&gt;<br />
               <br />
             &lt;/tr&gt; <br />
             <br />
             &lt;tr&gt;<br />
                 &lt;th&gt;&lt;input ng-model=&quot;movie.title&quot; class=&quot;form-control&quot; /&gt;&lt;/th&gt;<br />
                 &lt;th&gt;&lt;input ng-model=&quot;movie.year&quot;class=&quot;form-control&quot; /&gt;&lt;/th&gt;<br />
                 &lt;th&gt;&lt;input ng-model=&quot;movie.rating&quot;class=&quot;form-control&quot; /&gt;&lt;/th&gt;<br />
                 &lt;th&gt;&lt;input ng-model=&quot;movie.plot&quot;class=&quot;form-control&quot; /&gt;&lt;/th&gt;<br />
                   &lt;th&gt;<br />
                    &lt;button  ng-click=&quot;saveMovie()&quot;class=&quot;btn btn-primary&quot;&gt;<br />
                     &lt;span class=&quot;glyphicon glyphicon-ok&quot; /&gt;<br />
                  &lt;/button&gt;<br />
                    &lt;button  ng-click=&quot;addMovie()&quot;class=&quot;btn btn-success&quot;&gt;<br />
                     &lt;span class=&quot;glyphicon glyphicon-plus&quot; /&gt;<br />
                  &lt;/button&gt;<br />
                 &lt;/th&gt;<br />
             &lt;/tr&gt;   <br />
           &lt;/thead&gt;<br />
            &lt;tr ng-repeat=&quot;movie in movies&quot;&gt;<br />
              &lt;td&gt;{{movie.title}}&lt;/td&gt;<br />
              &lt;td&gt;{{movie.year}}&lt;/td&gt;<br />
              &lt;td&gt;{{movie.rating}}&lt;/td&gt;<br />
              &lt;td&gt;&lt;img class=&quot;poster&quot;src=&quot;{{movie.urlPoster}}&quot; width=&quot;50&quot; height=&quot;50&quot; /&gt;<br />
              {{movie.plot}}&lt;/td&gt;<br />
              &lt;td&gt; <br />
                  &lt;button  ng-click=&quot;editMovie(movie)&quot;class=&quot;btn btn-warning&quot;&gt;<br />
                     &lt;span class=&quot;glyphicon glyphicon-pencil&quot; /&gt;<br />
                  &lt;/button&gt;<br />
                  &lt;button  ng-click=&quot;removeMovie(movie)&quot;class=&quot;btn btn-danger&quot;&gt;<br />
                     &lt;span class=&quot;glyphicon glyphicon-remove&quot; /&gt;<br />
                  &lt;/button&gt;<br />
               &lt;/td&gt;<br />
<br />
            &lt;/tr&gt;<br />
         &lt;/table&gt;

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
         
         var app = angular.module("MoviesApp", []);


app.controller("MovieController", function ($scope, $http) {

    $scope.searchMovies = function () {
        var title = $scope.searchByTitle;
        $http.jsonp("http://www.myapifilms.com/imdb?title=" + title + "&format=JSONP&aka=0&business=0&seasons=0&seasonYear=0&technical=0&filter=N&exactFilter=0&limit=10&lang=en-us&actors=N&biography=0&trailer=0&uniqueName=0&filmography=0&bornDied=0&starSign=0&actorActress=0&actorTrivia=0&movieTrivia=0&awards=0&moviePhotos=N&movieVideos=N&callback=JSON_CALLBACK")
.success(function (response) {
    console.log(response);

    $scope.movies = response;

})
    }


    $scope.removeMovie = function (movie) {

        console.log("Remove movie");

        var index = $scope.movies.indexOf(movie);
        $scope.movies.splice(index, 1);

    }

    $scope.addMovie = function () {

        var newMovie = { title: $scope.movie.title,
            year: $scope.movie.year,
            rating: $scope.movie.rating,
            plot: $scope.movie.plot
        };

        $scope.movies.push(newMovie);

    };


    $scope.editMovie = function (movie) {

        $scope.movie = movie;

    }

    $scope.saveMovie = function () {

        $scope.movie = null;


    }
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

    I referred to professor Jose's video on youtube.Here is the link.
    </pre>
    <a href="https://www.youtube.com/watch?v=Kan1sMNOlIc">Click to View</a>
</div>
 </div>
  
  </div>

  <div class="container">
        <div class="btn-group">
             <a href="../fileview/Default.aspx?~/Week4/Angular1.aspx" class="btn btn-primary">View Source HTML</a>
             <a href="../fileview/Default.aspx?~/Week4/js/exp1.js" class="btn btn-primary">View Javascript</a>      
        <div>
  </div>

 GY018680
 
</body>
</html>
