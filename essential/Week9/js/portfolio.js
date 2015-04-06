
angular.module('MarvelApp').directive('onLastRepeat', function () {
    return function (scope, element, attrs) {
        if (scope.$last) setTimeout(function () {
            scope.$emit('onRepeatLast', element, attrs);
        }, 10000);
    };
})
.controller('PortfolioController', ['$scope', '$http', '$timeout', '$location', '$rootScope', '$routeParams', function ($scope, $http, $timeout, $location, $rootScope, $routeParams) {

    $http.get('/loggedin').success(function (user) {

        $rootScope.errorMessage = null;
        if (user !== '0') {
            $rootScope.currentUser = user;
            $scope.name = $rootScope.currentUser.fname;
            $scope.id = $rootScope.currentUser._id;
            $scope.reviews = null;
            $scope.loggedin = true
        }
        else {
            $scope.loggedin = false;
        }
    });

    $scope.charId = $routeParams.id
    array2 = [];
    data = [];
    if (!isNaN($scope.charId)) {
        $http.jsonp("http://gateway.marvel.com:80/v1/public/characters/" + $scope.charId + "?apikey=7c2ea1955f73606dbc9443ac7507c3bf&&callback=JSON_CALLBACK")
    .success(function (response) {


        $scope.charInfo = response.data.results[0];
        data = response.data.results[0];
        if (response.data.results[0].description == "" || response.data.results[0].description == null) {


            $scope.charInfo.description = "We currently do not have enough information about this character";
        }
        if (data.comics.items !== undefined || data.comics.items !== "") {
            for (j = 0; j < data.comics.items.length; j++) {

                $http.jsonp(data.comics.items[j].resourceURI + "?apikey=7c2ea1955f73606dbc9443ac7507c3bf&&callback=JSON_CALLBACK")
             .success(function (response2) {
                 console.log(response2.data.results[0]);
                 array2.push(response2.data.results[0]);
             });

            }
        }
        else {
            
                $scope.loaded = true;
           
        }

    });
    }

    else {

        $http.jsonp("http://gateway.marvel.com:80/v1/public/characters?nameStartsWith=" + $scope.charId + "&apikey=3acb60e64f63321ef3f18ab4121feae5&&callback=JSON_CALLBACK")
    .success(function (response) {


        $scope.charInfo = response.data.results[0];
        data = response.data.results[0];
        if (response.data.results[0].description == "" || response.data.results[0].description == null) {


            $scope.charInfo.description = "We currently do not have enough information about this character";
        }
        if (data.comics.items !== undefined || data.comics.items !== "") {
            for (j = 0; j < data.comics.items.length; j++) {

                $http.jsonp(data.comics.items[j].resourceURI + "?apikey=7c2ea1955f73606dbc9443ac7507c3bf&&callback=JSON_CALLBACK")
             .success(function (response2) {
                 console.log(response2.data.results[0]);
                 array2.push(response2.data.results[0]);
             });

            }
        }
        else {
            
                 $scope.loaded = true;
        
        }

    });
    }

    $scope.list = array2;

    $scope.filterFm = function (book) {
        if (book.thumbnail.path !== "http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available")
            return true;
        else
            return false;
    }
    $scope.$on('onRepeatLast', function (scope, element, attrs) {
        console.log('Executing');
        setTimeout(function () {
            $("#owl-demo").owlCarousel({
                autoPlay: 3000,
                stopOnHover: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 3
                    },
                    1000: {
                        items: 3
                    }
                },
                navigation: true,
                paginationSpeed: 1000,
                goToFirstSpeed: 2000,
                autoHeight: true,
                transitionStyle: "fade"
            });
        }, 3000);

        $timeout(function () { $scope.loaded = true; }, 2000);

    });


    $scope.getComic = function (id) {

        $location.url("/comic/" + id);
    }


    $scope.logout = function () {

        $http.post("/logout")
    .success(function (response) {
        $location.url("/login");

    });
    }
    $scope.comicDetails = function (id) {

        alert(id);

    }
} ]);