function loadHtml(id, filename){
    console.log(`div id: ${id}, filename: ${filename}`);

    let xhttp;
    let element = document.getElementById(id);
    let file = filename;

    if (file){
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function(){
            if(this.readyState == 4){
                if(this.status == 200) {element.innerHTML = this.responseText;}
                if(this.status == 404) {element.innerHTML = "<h1>Page not found.</h1>"}
            }
            if(filename=="addVisit.html"){
                const image_input = document.querySelector("#file-upload");
                var uploaded_image = "";
                const image_quek = document.querySelector("#quek");
                console.log("bellanculo");
                console.log(image_input);
                    image_input.addEventListener("change", function(){
                        console.log("SIUM");
                        console.log(image_input.value);
                        const reader = new FileReader();
                        reader.addEventListener("load", () => {
                            uploaded_image = reader.result;
                            document.querySelector("#display-image").style.backgroundImage = `url(${uploaded_image})`;
                        });
                        reader.readAsDataURL(this.files[0]);
                        
                    });
            }if(filename=="prenotazioni.html"){
                var table = document.getElementById("table"), rIndex;
                var mod = document.getElementById("mod");
                var x = document.getElementById("table").rows[0].cells[5];
                console.log("ziocane");
               
                

                for(var i=1; i<table.rows.length; i++){
                    
                   table.rows[i].onclick = function(){
                        
                        
                        rIndex = this.rowIndex;
                        if(table.rows[rIndex].style.background!="rgb(207, 207, 207)"){
                            table.rows[rIndex].style.background="rgb(207, 207, 207)";
                            for(var j=1; j<table.rows.length; j++){
                                if(j!=rIndex){
                                    table.rows[j].style.background="white";
                                }
                            }
                        }
                        
                        console.log(rIndex);

                        document.getElementById("cost").value = this.cells[2].innerHTML;
                        document.getElementById("orario").value = this.cells[3].innerHTML;
                        document.getElementById("data").value = this.cells[1].innerHTML;
                        document.getElementById("status").value = this.cells[4].innerHTML;
                        
                    };
                    
                }
                
                window.editRow = function(){
                    table.rows[rIndex].cells[2].innerHTML = document.getElementById("cost").value;
                    table.rows[rIndex].cells[3].innerHTML = document.getElementById("orario").value;
                    table.rows[rIndex].cells[1].innerHTML = document.getElementById("data").value;
                    table.rows[rIndex].cells[4].innerHTML = document.getElementById("status").value;

                }

                window.deleteRow = function(){
                    table.deleteRow(rIndex);
                }
            }

        }
        xhttp.open("GET", `${file}`, true);
        xhttp.send();

            

        return;
    }

    
}