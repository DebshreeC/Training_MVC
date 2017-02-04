if (typeof HealthCare === 'undefined')
    HealthCare = {};

window.onload = init;
function init()
{
    HealthCare.view.display();
}

HealthCare.view = {
    display: function () {
        var promise = HealthCare.controller.createAjaxObject();
        promise.then(function(data) {
            HealthCare.model = data;
            viewData();
        },
        function(error)
        {
            console.log(error);
        }

        );
        //setTimeout(viewData, 4000);
    }

}

function viewData()
{
    console.log(HealthCare.model);
    var table = document.createElement('Table');
    table.setAttribute("border", "2");
    jobj=JSON.parse(HealthCare.model);
    for(pos in jobj)
    {
        tr = document.createElement('tr');
        td = document.createElement('td');
        node = document.createTextNode(jobj[pos].id);
        td.appendChild(node);
        tr.appendChild(td);
        td = document.createElement('td');
        node = document.createTextNode(jobj[pos].username);
        td.appendChild(node);
        tr.appendChild(td);
        td = document.createElement('td');
        node = document.createTextNode(jobj[pos].address.city);
        td.appendChild(node);
        tr.appendChild(td);
        td = document.createElement('td');
        node = document.createTextNode(jobj[pos].address.zipcode);
        td.appendChild(node);
        tr.appendChild(td);
        table.appendChild(tr);
    }

    var ref = document.getElementById('response');
    ref.appendChild(table);
}