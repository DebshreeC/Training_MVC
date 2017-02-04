/// <reference path="inheritancedemo.js" />
//Inheritance in JS

function Customer(fname,lname)
{

    this.firstName = fname;
    this.lastName = lname;
}

function GoldCustomer(offer) {
    //base
    Customer.call(this,fname, lname);
    this.GCOffer = offer;
}
//inheritance
GoldCustomer.prototype = new Customer();

function PlatinumCustomer(discount) {

    this.PDDiscount = discount;
}


var goldCustomer = new GoldCustomer('Suman', 'chaddha', 'OneplusOne');

console.log(goldCustomer);





//multilevel inheritance

//function Employee(salary) {

//    this.PDDiscount = discount;
//}

//function PlatinumCustomer(discount) {

//    this.PDDiscount = discount;
//}

//function Manager(id,name,sal,privilage) {

//    Employee.call(this,id,name,sal)
//    this.Privilage = privilage;
//}

//var manager=new Manager(456987,'Shyam',321654,'Flexi Hours')
//console.log(manager);