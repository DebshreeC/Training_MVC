//var routeModule = angular.module('RouteModule', ['ngRoute']);

routeModule.config(function ($routeProvider) {

    $routeProvider

        .when('/users/:userId',
        {
            templateUrl: 'UserDetails.html',
            controller:'UserController'
        })

    .when('/users/posts/:userName/:userId',
        {
            templateUrl: 'Posts.html',
            controller: 'PostsController'
        })

});


routeModule.controller('RouterCtl', function ($scope,$http) {

    $http({
        method: 'GET',
        dataType: 'jsonp',
        url: 'https://jsonplaceholder.typicode.com/users',
        headers: {
            'Content-Type': 'application/json'
        },
       
    }).then(function(response)
    {        
        $scope.Result = response.data;
        console.log($scope.Result);
        });
});