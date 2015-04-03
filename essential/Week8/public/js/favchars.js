angular.module('MarvelApp').controller('FavCharController', ['$scope', '$http', '$location', '$rootScope', function ($scope, $http, $location, $rootScope) {


    $scope.name = $rootScope.currentUser.fname;
    $scope.id = $rootScope.currentUser._id;
    $http.get("/favchars/" + $scope.id).success(function (response) {

        var arrays = [], size = 4;
        console.log(response);
        if (response != null) {
            for (i = 0; i < response.length; i++) {
                $http.jsonp("http://gateway.marvel.com:80/v1/public/characters/" + response[i].charid + "?apikey=7c2ea1955f73606dbc9443ac7507c3bf&&callback=JSON_CALLBACK")
          .success(function (response) {


              arrays.push(response.data.results);
              console.log(arrays);


          });
            }
            $scope.character = arrays;
        }
        else {


        }
    });




    $scope.logout = function () {

        $http.post("/logout")
    .success(function (response) {
        $location.url("/login");

    });


    }
} ]);
