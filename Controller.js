if (typeof HealthCare === 'undefined')
    HealthCare = {};
HealthCare.controller = {
    httpReq: null,
    createAjaxObject: function () {
        /*try {
            this.httpReq = new XMLHttpRequest();
        }
        catch (e) {
            try {
                this.httpReq = new ActiveXObject("Msxml2.XMLHTTP3.0");
                console.log("Browser version 7 or more");

            }
            catch (e) {
                console.log("AJAX Object can't created");
                return false;
            }
        }

        this.httpReq.open('GET', 'https://jsonplaceholder.typicode.com/users', true);
        this.httpReq.send(null);
        this.httpReq.onreadystatechange = CallBackResponce;
        */


        var promise = new Promise(function (resolve,reject,request) {
            var httpRequest = new XMLHttpRequest();
            httpRequest.open('GET', 'https://jsonplaceholder.typicode.com/users', true);
            httpRequest.send(null);

            httpRequest.onload=function()
            {
                if ((httpRequest.readyState == 4) && (httpRequest.status == 200))
                {
                    resolve(httpRequest.response);
                }
                else
                {
                    reject(Error(httpRequest.statusText));
                }
            }
            httpRequest.onerror = function () {               
                    reject('Call Rejected');
            }
        });
        return promise;
    }
};
    function CallBackResponce()
    {
        if((HealthCare.controller.httpReq.readyState==4)&&(HealthCare.controller.httpReq.status==200))
        {
            HealthCare.model=HealthCare.controller.httpReq.responseText;
            console.log(HealthCare.model);
        }
    }