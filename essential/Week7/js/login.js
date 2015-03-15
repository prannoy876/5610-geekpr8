angular.module('MarvelApp').controller('LoginController', ['$scope', '$http', function ($scope, $http) {

    $scope.login = function (user) {
        $http.post("/login", user)
    .success(function (response) {

        if (response == 'success') {

            alert('Login Successful');
        }
        else {
            alert('Wrong Credentials.Try Again.');

        }
    });
    };

} ]);
