angular.module('MarvelApp').controller('SignUpController', ['$scope', '$http',function ($scope,$http) {

    $scope.insert = function (user) {
        $http.post("/signup", user)
    .success(function (response) {

        
    });
    };

} ]);