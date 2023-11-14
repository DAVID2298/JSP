var container = document.querySelector('.visit-wrapper')
var columns = getComputedStyle(container).getPropertyValue("grid-template-columns").split(" ").length;

var items = document.querySelectorAll('.visit-wrapper .card-wrapper');

var output = []
var row = 0;

items.forEach(function (item, i) {
    if (i % columns === 0) {
        if (output.length > 0) {
            row++ ;
        }
            
        output.push([])
    } 
        
    output[row].push(item.innerHTML)
      
});

console.log(output)

const search = () =>{
    const searchbox = document.getElementById("search-item").value.toUpperCase();
    const storeitems = document.getElementById("visit-list");
    const product = document.querySelectorAll(".card-wrapper");

    const pname = document.getElementsByTagName("h1");

    for(var i=0; i<pname.length; i++){
        let match = product[i].getElementsByTagName("h1")[0];

        if(match){
           let textvalue = match.textContent || match.innerHTML;

           if(textvalue.toUpperCase().indexOf(searchbox) > -1){
            product[i].style.display = "";
           }else{
            product[i].style.display = "none";
           }
        }
    }
}