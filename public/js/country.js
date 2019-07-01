let modal = document.querySelector('#simpleModal');
let modalBtn = document.querySelector('#modalBtn');
let closeBtn = document.getElementsByClassName('closeBtn')[0];

modalBtn.addEventListener('click', openModal);
closeBtn.addEventListener('click', closeModal);
window.addEventListener('click', outsideClick);


function openModal (){
    modal.style.display = 'block';
}

function closeModal (){
    modal.style.display = 'none';
    document.getElementById("par5").innerHTML = '';
}

function outsideClick (e){
    if(e.target == modal){
        modal.style.display = 'none';
        document.getElementById("par5").innerHTML = '';
    }
    
}

document.querySelector('#modalBtn').addEventListener('click', function(){
    let name = document.querySelector('#searchInput').value;
    if(name){
        searchName(name)
    }
})

function searchName(CountryName){
   

fetch(`https://restcountries.eu/rest/v2/name/${CountryName}`)
    .then(function(res){
        return res.json();
    }).then(function(data){
     
        rData(data);

    }).catch(function(err){
        console.log('Error somthing whent wrong, Try writing the name in English');
        
    })
}

function rData(data){
   
  
document.querySelector('#par').innerHTML = 'Country Name: '+data[0].name;
document.querySelector('#par1').innerHTML = 'Country Capital: '+data[0].capital;
document.querySelector('#par2').innerHTML = 'Country Region: '+data[0].region;
document.querySelector('#par3').innerHTML = 'Country Population: '+data[0].population+' million';
document.querySelector('#par4').innerHTML = 'Country Timezone: '+data[0].timezones[0];
data[0].languages.forEach(function(index){

var node = document.createElement("li");                 // Create a <li> node
var textnode = document.createTextNode("Country Languages: "+index.name);         // Create a text node
node.appendChild(textnode);                              // Append the text to <li>
document.getElementById("par5").appendChild(node);

    });    
}
