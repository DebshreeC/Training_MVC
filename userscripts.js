


routeModule.controller('UserController', function ($scope, $http,$routeParams) {

    console.log('hitting....', $routeParams.userId);
    $http({
        method: 'GET',
        dataType: 'jsonp',
        url: 'https://jsonplaceholder.typicode.com/users/'+$routeParams.userId,
        headers: {
            'Content-Type': 'application/json'
        },
       
    }).then(function(response)
    {        
        $scope.Result = response.data;
        console.log($scope.Result);
    });
});