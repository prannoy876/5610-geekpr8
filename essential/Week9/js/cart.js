angular.module('MarvelApp').controller('CartController', ['$scope', '$http', '$location', '$rootScope', '$routeParams', function ($scope, $http, $location, $rootScope, $routeParams) {

$scope.items=null;
    $scope.deleteItem=null;
    $scope.updateItemQuantity = null;
    $scope.updateItem = null;
$http.get('/loggedin').success(function (user) {

                   $rootScope.errorMessage = null;
                   if (user !== '0') {
                      $scope.name = $rootScope.currentUser.fname;
                      $scope.id = $rootScope.currentUser._id;
                      $scope.loggedin = true;
                       $http.get("/cartitems/" + $scope.id)
                        .success(function (response) {

                            $scope.items = response;
                        });
                   }
                   else {
                       $location.url('/login');
                   }
                   });

    

   


    $scope.getComic = function (id) {

        $location.url("/comic/" + id);
    }

    $scope.setItemToDelete = function(id)
    {
        $scope.deleteItem = id;

    }

     $scope.editOrder = function(book)
    {
        $scope.updateItemQuantity = book.quantity;
        $scope.updateItem = book.comicid;
    }

     $scope.removeComic=function(){
      $http.delete("/removeComic/"+ $scope.id + "/id/" + $scope.deleteItem)
    .success(function (response) {

           $scope.items=response;
    });
    }

   
     $scope.updateQuantity=function(value){
      $http.put("/updateQuantity/"+ $scope.id + "/id/" + $scope.updateItem + "/qty/" + value)
    .success(function (response) {

           $scope.items=response;
    });

    };


    $scope.logout = function () {

        $http.post("/logout")
    .success(function (response) {
        $location.url("/login");

    });
    }

} ]);