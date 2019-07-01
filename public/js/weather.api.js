let city = "new york";
let city1 = "brussels";
let city2 = "dubai";
let city3 = "tokyo";

fetch(`http://api.openweathermap.org/data/2.5/weather?q=${city}&units=metric&APPID=8d112e0c9ee011363d142ccc774fada7`)
.then(function(res){
return res.json();
}).then(function(data){

    run(data);

}).catch(function(err){
    console.log('there was a error');
})

function run(zoek){
    
    let weatherIcon = document.querySelector('#icon');
    document.querySelector('#name').innerHTML = zoek.name;
    document.querySelector('#desc').innerHTML = zoek.weather[0].description;
    document.querySelector('#temp').innerHTML = Math.floor(zoek.main.temp)+"°C";

    weatherIcon.src ="https://openweathermap.org/img/w/"+zoek.weather[0].icon+".png";
}

fetch(`http://api.openweathermap.org/data/2.5/weather?q=${city1}&units=metric&APPID=8d112e0c9ee011363d142ccc774fada7`)
.then(function(res){
return res.json();
}).then(function(data){

    run1(data);

}).catch(function(err){
    console.log('there was a error');
})

function run1(zoek){
    
    let weatherIcon1 = document.querySelector('#icon1');
    document.querySelector('#name1').innerHTML = zoek.name;
    document.querySelector('#desc1').innerHTML = zoek.weather[0].description;
    document.querySelector('#temp1').innerHTML = Math.floor(zoek.main.temp)+"°C";

    weatherIcon1.src ="https://openweathermap.org/img/w/"+zoek.weather[0].icon+".png";
}

fetch(`http://api.openweathermap.org/data/2.5/weather?q=${city2}&units=metric&APPID=8d112e0c9ee011363d142ccc774fada7`)
.then(function(res){
return res.json();
}).then(function(data){

    run2(data);

}).catch(function(err){
    console.log('there was a error');
})

function run2(zoek){
    
    let weatherIcon2 = document.querySelector('#icon2');
    document.querySelector('#name2').innerHTML = zoek.name;
    document.querySelector('#desc2').innerHTML = zoek.weather[0].description;
    document.querySelector('#temp2').innerHTML = Math.floor(zoek.main.temp)+"°C";

    weatherIcon2.src ="https://openweathermap.org/img/w/"+zoek.weather[0].icon+".png";
}

fetch(`http://api.openweathermap.org/data/2.5/weather?q=${city3}&units=metric&APPID=8d112e0c9ee011363d142ccc774fada7`)
.then(function(res){
return res.json();
}).then(function(data){

    run3(data);

}).catch(function(err){
    console.log('there was a error');
})

function run3(zoek){
    
    let weatherIcon3 = document.querySelector('#icon3');
    document.querySelector('#name3').innerHTML = zoek.name;
    document.querySelector('#desc3').innerHTML = zoek.weather[0].description;
    document.querySelector('#temp3').innerHTML = Math.floor(zoek.main.temp)+"°C";

    weatherIcon3.src ="https://openweathermap.org/img/w/"+zoek.weather[0].icon+".png";
}

