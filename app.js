var excelapp = angular.module('ExcelApp', []);

excelapp.controller('ExcelCtl', ['$scope', '$http',
    function ($scope, $http) {
      
        $scope.ExcelFiles = [];

        var filetype = /application.vnd.openxmlformats-officedocument.spreadsheettml.sheet/;


        $scope.GetFiles = function (e) {

            console.log("Event", e);
            for(i=0;i<e.files.length;i++)
            {
                //if (e.files[i].type.match(filetype)) {
                //    console.log("file type matching....");
                    $scope.ExcelFiles.push(e.files[i]);
               // }
            }
            console.log($scope.ExcelFiles);
        }

        $scope.UploadData=function()
        {
            var postFiles = new FormData();
            for(let file in $scope.ExcelFiles)
            {
                postFiles.append("UploadedFile", $scope.ExcelFiles[file]);
            }
            $http.post('http://localhost:60543/ExcelUpload/ExcelFilePost', postFiles,
                {
                    withCredentials: false,
                    headers: {
                        'Content-Type':undefined
                    },
                    transformRequest: angular.identity
                }).then(function(response){
                    console.log(response);                
                });
        }


    }]);