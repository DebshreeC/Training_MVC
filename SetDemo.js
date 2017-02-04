////var idSet = new Set();

//var num = Math.round(Math.random()*1000);

//console.log(num);

//var idSet = new Set();
//for (let i = 0; i < 100; i++) {
//    idSet.add(Math.round(Math.random() * 1000));
//}
//newset=new Set([...idSet].map(x=>x*1000));
//console.log(idSet);

//var set1=new Set();
//set1.add('HSBC');
//set1.add('HDFC');
//set1.add('IDBI');

//var set2=new Set(['HCL','WIPRO','TCS']);

//console.log('set2',set2);

//var union=new Set([...set1,...set2]);


//console.log(union);


//set1=new Set(['Jaya','Suren','David']);
//set2=new Set(['Jaya','Latha','Anoop']);

//var intersection=new Set([...set1].filter(x=>set2.has(x)));
//console.log(intersection);


//console.log(set2);


//Default Arguments

var countryNames=['India','Indonesia','England','Srilanka'];
function filterDemo(ch='I')
    {
        //for (let pos in countryNames)
        //{
        //    if(countryNames[pos].startsWith(ch))
        //        console.log(countryNames[pos]);
        //}
        //ArrowFunction
        //countryNames.forEach((name,i)=>console.log(name,i));


        //countryNames.forEach((name,i)=>{
        //    if(name.startsWith(ch))            
        //    console.log(name,i)
        //});

        //var result=countryNames.filter(ch);
        //console.log(result);


    }

    filterDemo('E');


    //Inbuild filter


    var data=[53,78,89,90,55];
    function test(value)
    {
        return value>70;
    }

    var filterted=data.filter(test);
    console.log(filterted);

    function testNames(name)
    {
        return name.startsWith('I');
    }

    var names=['India','USA','Germany','Singapore'];

    //filterted=names.filter(testNames);

    //console.log(filterted);


    function filterCountry(ch)
    {
        return function filter(names)
        {
            return  names.startsWith(ch);
        };
    }
    filterted=names.filter(filterCountry());

    console.log(filterted);


    //Flexi Arguments
    function SumUp()
    {
        var sum=0;
        for(let i=0;i<arguments.length;i++)
        {
            //console.log(typeof(arguments[i]));
            if(typeof(arguments[i])=='number')
                sum=sum+arguments[i];
            //if(typeof(arguments[i])==)
        }
        console.log(sum);
    }

    SumUp();
    SumUp(34,55);
    SumUp(45,67,89,90)



    //Closure

    var funcExpr=function()
    {
        var outer=100;
        return{
            getData:function()
            {
                return outer;
            }
        }
    }();//immediate invocation
    console.log(funcExpr.getData());//console.log(funcExpr().getData());



    //CallBack

    function flash()
    {
        console.log('Dashboard updated');
    }

    setTimeout(flash,5000);

    setTimeout(function()
    {
        console.log('Gold Rates Ready');
    },4000);


    function reverse(str){
        if(str.length<=1){//turminal case
            return str;
        }
        else{
            return reverse(str.substr(1))+str[0];
        }
    }

        console.log(reverse("param"));
