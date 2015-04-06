angular.module('MarvelApp').controller('LoginController', ['$scope', '$http','$rootScope','$location', function ($scope, $http,$rootScope,$location) {

    $scope.login = function (user) {
        $http.post("/login", user)
    .success(function (response) {
        console.log(response);
        $rootScope.currentUser = response;
        $location.url("/dashboard");
    });
    };

} ]);
