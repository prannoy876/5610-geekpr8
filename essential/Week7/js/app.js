
angular.module('MarvelApp', ['ngRoute','door3.css']).config(['$routeProvider',
  function ($routeProvider) {
      $routeProvider.
      when('/', {
          templateUrl: 'partials/signup.html',
          css:'css/signup.css',
          controller: 'SignUpController'
      }).
      when('/character', {
          templateUrl: 'partials/characters.html',
          css:'css/characters.css',
          controller: 'MarvelController'
      }).
       when('/login', {
           templateUrl: 'partials/login.html',
           controller: 'LoginController'
       }).
        when('/movie', {
            templateUrl: 'partials/movie.html',
            controller: 'MovieController'
        }).
          when('/movieupdate', {
              templateUrl: 'partials/movieupdate.html',
              controller: 'MovieUpdateController'
          }).
      otherwise({
          redirectTo: '/'
      });
  } ]);
