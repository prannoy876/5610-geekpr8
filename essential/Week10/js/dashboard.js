angular.module('MarvelApp').controller('DashboardController', ['$scope', '$http', '$location', '$rootScope','$route', function ($scope, $http, $location, $rootScope,$route) {

    $scope.loggedin = null;
    $http.get('/loggedin').success(function (user) {

        $rootScope.errorMessage = null;
        if (user !== '0') {
            $rootScope.currentUser = user;
            $scope.name = $rootScope.currentUser.fname;
            $scope.loggedin = true;

        }
        else {
            $scope.loggedin = false;

        }
    });



    $scope.logout = function () {

        $http.post("/logout")
    .success(function (response) {
        $route.reload();

    });


    }
} ]);
