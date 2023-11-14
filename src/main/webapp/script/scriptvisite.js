



$(document).ready(function(){
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
})


