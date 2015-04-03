angular.module('MarvelApp').controller('MarvelController', ['$scope', '$http', '$rootScope', '$location', function ($scope, $http, $rootScope, $location) {

    $scope.name = $rootScope.currentUser.fname;
    $scope.id = $rootScope.currentUser._id;

    $http.jsonp("http://gateway.marvel.com:80/v1/public/characters?apikey=7c2ea1955f73606dbc9443ac7507c3bf&&callback=JSON_CALLBACK&&limit=100")
.success(function (response) {

    var arrays = [], size = 4;

    while (response.data.results.length > 0)
        arrays.push(response.data.results.splice(0, size));

    console.log(arrays);

    $scope.character = arrays;
})

    $scope.addFavourite = function (id) {

        $http.post("/addFavoriteChars/" + $scope.id + "/name/" + id)
    .success(function (response) {
        alert(response);

    });

    }

    $scope.logout = function () {
        $http.post("/logout")
    .success(function (response) {
        $location.url("/login");

    });
    }

} ]);



    
    