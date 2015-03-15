angular.module('MarvelApp').controller('MarvelController', ['$scope', '$http', function ($scope, $http) {

    $http.jsonp("http://gateway.marvel.com:80/v1/public/characters?apikey=7c2ea1955f73606dbc9443ac7507c3bf&&callback=JSON_CALLBACK&&limit=100")
.success(function (response) {


    $scope.character = response.data.results;


})

} ]);



    
    