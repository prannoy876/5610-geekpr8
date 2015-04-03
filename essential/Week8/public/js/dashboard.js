angular.module('MarvelApp').controller('DashboardController', ['$scope', '$http', '$location', '$rootScope', function ($scope, $http, $location, $rootScope) {


    $scope.name = $rootScope.currentUser.fname;
    $scope.logout = function () {

        $http.post("/logout")
    .success(function (response) {
        $location.url("/login");

    });


    }
} ]);
