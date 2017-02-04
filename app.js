var appModule = angular.module('InsModule', []);//Module Created

appModule.controller('InsController', ['$scope',function($scope){
    //console.log("Controller Invoked");
    $scope.customer = {
        Id: 0,
        Name: '',
        DOB:new Date()
    }

    $scope.Save=function()
    {
        console.log($scope.customer.Id, '', $scope.customer.Name, '', $scope.customer.DOB);

    }

}]);