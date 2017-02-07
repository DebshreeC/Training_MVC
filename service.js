var serviceModule = angular.module('ServiceModule', []);

serviceModule.service('InsuranceService', ['$http', function ($http) {

    var serviceCollection=function()
    {
        return $http({

            method: 'GET',
            dataType: 'jsonp',
            headers:{
                'Content-Type':'application/x-www-form-urlencoded'
            },
            url:'http://localhost:62558/Insurances'

        }).then(function(info)
        {
            console.log('Resolved');
            return info;
        });
    }

    return {

        InsuranceServiceObj:serviceCollection
    }

}]);

serviceModule.service('PatientService', ['$http', function ($http) {

    var serviceCollection = function () {
        return $http({

            method: 'GET',
            dataType: 'jsonp',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            url: 'http://localhost:62558/Insurances/PatientData'

        }).then(function (info) {
            console.log('Resolved');
            return info;
        });
    }

    return {

        PatientServiceObj: serviceCollection
    }

}]);