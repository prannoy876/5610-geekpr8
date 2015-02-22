var app = angular.module("RoutApp", ['ngRoute']);

app.factory('Data', function(){

return [{ name: "Picard", description: "Captain" },
{ name: "Riker", description: "NUmber One" },
{ name: "Worf", description: "Security"}];

  
});



app.config(['$routeProvider',
  function ($routeProvider) {
      $routeProvider.
      when('/', {
          templateUrl: 'partials/list.html',
          controller: 'myController'
      }).
      when('/new', {
          templateUrl: 'partials/add.html',
          controller: 'myController2'
      }).
      otherwise({
          redirectTo: '/'
      });
  } ]);




 function myController2($scope, $location,Data) {

     $scope.person = { name: "", description: "" };
     $scope.buttonName = "Go Back";

      $scope.save = function () {

       $location.path("/")
      }

  }


 function myController($scope,Data) {

   $scope.Crew=Data;
  
}

