var app=angular.module("WebApp", ['ngRoute']);


app.config(['$routeProvider',
  function ($routeProvider) {
      $routeProvider.
      when('/', {
          templateUrl: 'partials/home.html',
          controller: 'HomeCtrl'
      }).
      when('/coursework', {
            templateUrl: 'partials/coursework.html',
            controller: 'CourseworkCtrl'
       }).
      when('/interests', {
              templateUrl: 'partials/interests.html',
              controller: 'InterestsCtrl'
          }).
        when('/about', {
            templateUrl: 'partials/about.html',
            controller: 'AboutCtrl'
        }).
      otherwise({
          redirectTo: '/'
      });
  } ]);

  function HomeCtrl($scope) {
      $scope.name = "Prannoy";
  }

  function AboutCtrl($scope) {
      $scope.name = "Prannoy";
  }

  function InterestsCtrl($scope) {
      $scope.name = "Prannoy";
  }

  function CourseworkCtrl($scope) {
      $scope.coursework = [{ id: "CS5010", name: "Program Design Paradigms" },
                           { id: "CS5800", name: "Algorithms" },
                           { id: "CS6200", name: "Information Retrieval"},
                           { id: "CS5700", name: "Computer Networks"},
                           { id: "CS6240", name: "Parallel Data Processing"},
                           { id: "CS5610", name: "Web Development"}
      
      
      
      ];
  }