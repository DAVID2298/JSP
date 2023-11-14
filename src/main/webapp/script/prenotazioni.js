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