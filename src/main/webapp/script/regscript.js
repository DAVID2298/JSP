function anagraph(){
    var a = document.getElementById("tab1");
    var b = document.getElementById("tab2");
    var c1 = document.getElementById("choice1");
    var c2 = document.getElementById("choice2");
    var c3 = document.getElementById("choice3");

    var p1 = document.getElementById("p1");
    var p2 = document.getElementById("p2");


    var s1 = document.getElementById("1");
    var s2 = document.getElementById("2");


    b.classList.remove("hidden");
    a.classList.add("hidden");
    c2.classList.remove("hidden");
    c1.classList.add("hidden");

    s1.classList.add("unsigned");
    s2.classList.remove("unsigned");

    p2.classList.remove("punsigned");
    p1.classList.add("punsigned");


    var u = document.getElementById("usertype");
    var uValue = u.value;
    console.log(typeof(uValue));


    if(uValue == "ADMIN"){
        console.log(uValue);
        c2.classList.add("hidden");
        c3.classList.remove("hidden");
    }
}

function prevBtn(){
    var c1 = document.getElementById("choice1");
    var c2 = document.getElementById("choice2");
    var c3 = document.getElementById("choice3");
    var c4 = document.getElementById("choice4");
    var a = document.getElementById("tab1");
    var b = document.getElementById("tab2");
    var p1 = document.getElementById("p1");
    var p2 = document.getElementById("p2");


    var s1 = document.getElementById("1");
    var s2 = document.getElementById("2");


    c3.classList.add("hidden");
    c4.classList.add("hidden");

    c2.classList.add("hidden");
    c1.classList.remove("hidden");
    b.classList.add("hidden");
    a.classList.remove("hidden");

    s1.classList.remove("unsigned");
    s2.classList.add("unsigned");


    p2.classList.add("punsigned");
    p1.classList.remove("punsigned");

}

function nxtBtn(){
    var c3 = document.getElementById("choice3");
    var c4 = document.getElementById("choice4");
    var f3 = document.getElementById("tab3");
    var f2 = document.getElementById("tab2");

    c3.classList.add("hidden");
    c4.classList.remove("hidden");
    f3.classList.remove("hidden");
    f2.classList.add("hidden");
}

function prevBtn2(){
    var c3 = document.getElementById("choice3");
    var c4 = document.getElementById("choice4");
    var f3 = document.getElementById("tab3");
    var f2 = document.getElementById("tab2");

    c3.classList.remove("hidden");
    c4.classList.add("hidden");
    f3.classList.add("hidden");
    f2.classList.remove("hidden");
}