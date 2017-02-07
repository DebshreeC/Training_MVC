var factoryModule = angular.module('FactoryModule', ['ServiceModule'])

factoryModule.factory('HCFactory', ['$injector', function ($injector) {
    obj = {};
    obj.findService=function(option)
    {
        obj = {};
        console.log(option);
        angular.module('ServiceModule')['_invokeQueue'].forEach(function (value) {

            //console.log(value[1] + ":" + value[2][0]);
            if(value[2][0]==(option+'Service'))
            {
                console.log("Matching...", value[2][0]);
                obj = $injector.get(value[2][0]);

            }
        });
        return obj;
    }
    return obj;
}]);

