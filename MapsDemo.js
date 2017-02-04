var obj = new Map();
obj.set('id', 3216547);
obj.set('name', 'Janu');
obj.set('Project', 'Health Care');

console.log(obj.get('id'));
console.log(obj.has('name'));


for(let [key,value] of obj)
{
console.log(key+"="+value);
}

for(let key of obj.keys())
{
console.log(key);
}

for(let value of obj.values())
{
console.log(value);
}



obj.delete('id');
console.log(obj.has('id'));
