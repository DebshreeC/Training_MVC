/// <reference path="Scopdemo.js" />
var bloodcount = 100;


//window.onload = testBloodcount;

function testBloodCount()
{
    var bloodcount = 500;
    var bloodcountlevel = true;
    console.log('Default Blood Count', bloodcount);
    console.log('Blood Count Level', bloodcountlevel);
}

testLevel();
function testLevel() {
    
    //console.log('Blood Count Level', bloodcountlevel);
}

//Let vs var



var clients = ['Omega', 'IBM', 'Fidelity', 'Scope', 'CGI']


for (let i = 0; i < clients.length; i++)
    console.log(client[i]);


//Object creation
//Method 1:
//constractor Approch

function Member(fname,lname)
{
    var fullName;
    this.firstName = fname;
    this.lastName = lname;
    fullName = this.firstName + this.lastName;
    //privileged method
    this.ShowFullName=function()
    {
        console.log('FullName',fullName);
    }
}


//prototype

Member.prototype.getName=function()
{
    //console.log('Firstname',this.firstName);
    //console.log('lastname',this.lastName);

    return 'Firstname=' + this.firstName + 'Lastname=' + this.lastName;

}
var member = new Member('jayanath', 'kumar');
console.log(member.getName());
member.ShowFullName();

//Object creation
//Method 2:

var memberObj = new Object();
memberObj.firstName = 'Anoop';
memberObj.lastName = 'Kumar';
console.log(memberObj);


//Object creation
//Method 3: and Method 4:

memberObj = {

    firstName:'Srinivas',
    lastName: 'Karthik',
    Id: 347895126,
    DOJ: new Date(),
    fullName: function () {
        return this.firstName + this.lastName;
    }

}

console.log(memberObj.fullName());


memberJSON = JSON.stringify(memberObj);
console.log(memberJSON);

//Object creation
//Method 5:-----ES6---typescript


//class Customer
//{
//    private firstName:string;
//    private lastName:string;
//    constructor(fName:string,lName:string)
//    {
//        this.firstName = fname;
//        this.lastName = lname;
//    }
//}



//var customer=new Customer('Shobana','Devi');

//console.log(customer);