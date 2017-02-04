

var names = ['HCL', 'TCS','Infosys', 'WIPRO', 'Infosys'];

var result = names.indexOf('Infosys');
console.log(result);

var result = names.lastIndexOf('Infosys');

console.log('Position', result);


var userNames = ['Ashok', 'Anand', 'Satya', 'Richa'];

var result = userNames.map(function (name) {

    return "Welcome " + name;

});

console.log(result);


var users = new Map();

users.set(1,{ 'Name': 'Anand', 'Gender': 'Male' });
users.set(2,{ 'Name': 'Rosy', 'Gender': 'Female' });
users.set(3,{ 'Name': 'Jayanath', 'Gender': 'Male' });


//for (let [key,value] of users)
//{
//console.log(value);
//}
userArray=[];
for (let obj of users.values())
{
    userArray.push(obj);
    console.log(obj);
}

result=userArray.map(function(obj)
{
    if(obj.Gender=='Male')
        return "Mr."+obj.Name;
    else
        return "Ms."+obj.Name;
});

console.log(result);

