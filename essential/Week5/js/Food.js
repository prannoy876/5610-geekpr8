var app = angular.module("FoodApp", ['ngRoute']);

app.factory('FoodInformation', function restaurantService() {
    var foodInfo = [
        {
            'title': 'Cheeseburger',
            'image':'images/Cheeseburger.jpg',
            'details': {
                'nutritionFacts': { 'calories': 303, 'totalFat': 14, 'sugars': 5}
            }
        },

        {
            'title': 'Pizza',
            'image':'images/Pizza.jpg',
            'details': {
                'nutritionFacts': { 'calories': 285, 'totalFat': 10, 'sugars': 3.8 }
            }
        },

        {
            'title': 'Chicken Piccata',
            'image':'images/ChickenPiccata.jpg',
            'details': {
                'nutritionFacts': { 'calories': 388, 'totalFat': 28, 'sugars': 7.8 }
            }
        }
    ];

 
    var getFoods=function () {
        return foodInfo;
    }

    var getFoodInfo = function (food) {
        for (i = 0; i < foodInfo.length; i++) {
            if (foodInfo[i].title == food) {
                return foodInfo[i].details;
            }
        }
    }

    return {
        getFoods: getFoods,
        getFoodInfo: getFoodInfo
    }
});


app.config(['$routeProvider',
    function ($routeProvider) {
        $routeProvider.
            when('/', {
                templateUrl: 'partials/foods.html',
                controller: 'FoodCtrl'
            }).
            when('/foodInfo/:food', {
                templateUrl: 'partials/foodinfo.html',
                controller: 'FoodInfoCtrl'
            }).
            otherwise({
                redirectTo : '/'
            });
    }]);

app.controller("FoodCtrl", function ($scope, FoodInformation) {
    $scope.foodInfo = FoodInformation.getFoods();
});

app.controller("FoodInfoCtrl", function ($scope, $routeParams, FoodInformation) {
    $scope.food = $routeParams.food;
    var foodDetails = FoodInformation.getFoodInfo($routeParams.food);
    $scope.food = foodDetails.nutritionFacts;
});