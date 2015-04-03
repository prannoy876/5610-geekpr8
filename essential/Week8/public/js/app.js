
angular.module('MarvelApp', ['ngRoute', 'door3.css']).config(['$routeProvider',
  function ($routeProvider) {
      $routeProvider.
      when('/', {
          templateUrl: 'partials/signup.html',
          css: 'css/signup.css',
          controller: 'SignUpController'
      }).
      when('/character', {

          resolve:
           { loggedin: function ($q, $timeout, $http, $location, $rootScope) {


               var deferred = $q.defer();
               $http.get('/loggedin').success(function (user) {

                   $rootScope.errorMessage = null;
                   if (user !== '0') {
                       $rootScope.currentUser = user;
                       deferred.resolve();
                   }
                   else {

                       $rootScope.errorMessage = 'You need to log in';
                       deferred.reject();
                       $location.url('/login');
                   }
               });
           }
           },
          templateUrl: 'partials/characters.html',
          css: 'css/characters.css',
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
        when('/favchars', {
            resolve:
           { loggedin: function ($q, $timeout, $http, $location, $rootScope) {


               var deferred = $q.defer();
               $http.get('/loggedin').success(function (user) {

                   $rootScope.errorMessage = null;
                   if (user !== '0') {
                       $rootScope.currentUser = user;
                       deferred.resolve();
                   }
                   else {

                       $rootScope.errorMessage = 'You need to log in';
                       deferred.reject();
                       $location.url('/login');
                   }
               });
           }
           },
            templateUrl: 'partials/favchars.html',
            controller: 'FavCharController',
            css:'css/characters.css'
        }).
       when('/movieupdate', {
           templateUrl: 'partials/movieupdate.html',
           controller: 'MovieUpdateController'
       }).
       when('/dashboard', {
           
           resolve:
           { loggedin: function ($q, $timeout, $http, $location, $rootScope) {

        
               var deferred = $q.defer();
               $http.get('/loggedin').success(function (user) {

                   $rootScope.errorMessage = null;
                   if (user !== '0') {
                       $rootScope.currentUser = user;
                       deferred.resolve();
                   }
                   else {

                       $rootScope.errorMessage = 'You need to log in';
                       deferred.reject();
                       $location.url('/login');
                   }
               });
           }
           },
           templateUrl: 'partials/dashboard.html',
           css: 'css/dashboard.css',
           controller: 'DashboardController'








       }).
      otherwise({
          redirectTo: '/'
      });

  } ]);


