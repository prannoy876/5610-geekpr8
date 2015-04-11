var app = angular.module("App", []);


app.controller("myController3", function ($scope, $http) {
   
    $scope.person = null;

    $scope.submit = function (user) {

        $scope.person = user;

    }



});