hcmodule = angular.module('HCModule', ['ConstModule', 'FactoryModule','ui.grid.pagination','ui.grid.edit',,'ngAnimate','ngTouch','ui.grid','ui.grid.exporter','ui.grid.selection']);


hcmodule.controller('Dashboard', ['$scope', 'option', 'HCFactory', function ($scope, Option, HCFactory) {

    $scope.optionalData = Option;
    $scope.selectedValue = "";
    $scope.gridOptions = {};
    $scope.flag = false;
    $scope.DataChange=function()
    {
        $scope.flag = true;
        console.log("Selected Value=",$scope.selectedValue)
        var obj = HCFactory.findService($scope.selectedValue);
        console.log("obj: ",obj);
        console.log(Object.keys(obj).length);
        if (Object.keys(obj).length <= 0)
            $scope.flag = false;
        console.log($scope.flag);
        //$scope.selectedValue = "";
        angular.forEach(obj, function (promise) {
            //try
            //{
                promise().then(function (response) {
                    console.log(response.data);
                    //for display in table
                    $scope.tableData = response.data;
                    //

                    $scope.colDefs = [];
                    angular.forEach(response.data[0], function (value, key) {
                        console.log(key);
                        $scope.colDefs.push({
                            field: key, displayName: key,
                            enableCellEdit: true, width: '*', resizable: false
                        });
                    })
                    $scope.gridOptions = {
                        data: response.data,
                        columnDefs: $scope.colDefs
                    }
                })
            //}
            //catch(e)
            //{
            //    console.log("error occurred");
            //    $scope.flag = true;
            //    $scope.colDefs = [];
                
            //}
            
        });
    }
}])