angular.module('MarvelApp').directive('onLastRepeat', function () {
    return function (scope, element, attrs) {
        if (scope.$last) setTimeout(function () {
            scope.$emit('onRepeatLast', element, attrs);
        }, 1000);
    };
}).directive('onLastRepeat2', function () {
    return function (scope, element, attrs) {
        if (scope.$last) setTimeout(function () {
            scope.$emit('onRepeatLast2', element, attrs);
        }, 2000);
    };
})
.controller('PersonalController', ['$scope', '$http','$location','$rootScope', '$route','$timeout', function ($scope, $http, $location, $rootScope,$route,$timeout) {
  
    $http.get('/loggedin').success(function (user) {
        $rootScope.errorMessage = null;
        if (user !== '0') {
            $rootScope.currentUser = user;
             $scope.name = $rootScope.currentUser.fname;
             $scope.id = $rootScope.currentUser._id;
              $scope.loggedin=true;

             $http.get("/favchars/" + $scope.id).success(function (response) {

        var arrays = [], size = 4;
        console.log(response);
          if(response==null ||  response=="")
             { 
                  $scope.loaded=true;
                  
             }
        if (response != null) {

            $scope.character = response;



        }

        else {


        }
    });

        $http.get("/getComicsReviewed/" + $scope.id)
        .success(function (response) {
            $scope.reviewed = response;
            if($scope.reviewed==null ||  $scope.reviewed=="")
             { 
                  $scope.loaded2=true;
                    
             }
            console.log($scope.reviewed);
        });

        }
        else {
            $location.url('/login');
        }
    });

     $scope.$on('onRepeatLast', function (scope, element, attrs) {
        console.log('Executing');
          $timeout(function () { $scope.loaded = true; }, 3000);
        setTimeout(function () {
            $("#owl-demo2").owlCarousel({
                autoPlay: 3000,
                stopOnHover: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 3
                    },
                    1000: {
                        items: 3
                    }
                },
                navigation: true,
                paginationSpeed: 1000,
                goToFirstSpeed: 2000,
                autoHeight: true,
                transitionStyle: "fade"
            });
        },2000);

        });

         $scope.$on('onRepeatLast2', function (scope, element, attrs) {
        console.log('Executing');
           $timeout(function () { $scope.loaded2 = true; }, 3000);
        setTimeout(function () {
            $("#owl-demo3").owlCarousel({
                autoPlay: 3000,
                stopOnHover: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 3
                    },
                    1000: {
                        items: 3
                    }
                },
                navigation: true,
                paginationSpeed: 1000,
                goToFirstSpeed: 2000,
                autoHeight: true,
                transitionStyle: "fade"
            });
        }, 2000);

        });
   

  

    


    $scope.selectCharacter = function (id) {

        $scope.favcharid = id;


    }

    
    $scope.selectComic = function (id) {

        $location.url("/comic/" + id);


    }

    $scope.deleteFavorite = function () {

         $http.delete("/removeFavorite/"+ $scope.id + "/id/" + $scope.favcharid)
    .success(function (response) {

          $route.reload();
    });


    }

    $scope.viewCharacter = function () {

        $location.url("/portfolio/" + $scope.favcharid);
    }

    $scope.logout = function () {

        $http.post("/logout")
    .success(function (response) {
        $location.url("/dashboard");

    });


    }
} ]);
