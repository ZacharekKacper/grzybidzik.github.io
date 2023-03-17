//ikonki graczy
const grzyb = "🍄";
const kolko = "🐗";

//bez tego nie dziala 
let aktywnyGracz = grzyb;
let graczVsGracz = true;
let moznaGrac = true;
let botygrajo = false
let wyloczSpam = false
let czyRemis = false
const plansza = document.querySelectorAll(".komorka");
const warunkiWygranej = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
]
let tabela = document.querySelectorAll(".umre");
if (document.querySelector("#jakiTrybDiv").innerHTML != "Komputer vs Komputer") {
    sprawdzCzyDobryTryb(0)
}
function sprawdzCzyDobryTryb(dlugosc) {

    if (tabela[dlugosc].innerHTML == "Gracz vs Komputer") {
        zmienTryb(false);
    }
    else if (tabela[dlugosc].innerHTML == "Gracz vs Gracz") {
        zmienTryb(true);
    }
    else if (tabela[dlugosc].innerHTML == "Komputer vs Komputer") {
        sprawdzCzyDobryTryb(dlugosc + 1);
    }
}





// funkcja sprawdzająca wygraną
function sprawdzWygrana() {
    let counter = 0; //zmienna potrzebna by liczyc iteracje tablicy z warunkami



    //pętla sprawdzająca wszystkie warunki wygranej 
    warunkiWygranej.forEach(warunki => {
        let a = document.querySelector("#k" + (warunki[0] + 1)).innerHTML
        let b = document.querySelector("#k" + (warunki[1] + 1)).innerHTML
        let c = document.querySelector("#k" + (warunki[2] + 1)).innerHTML
        let aStyl = document.querySelector("#k" + (warunki[0] + 1))
        let bStyl = document.querySelector("#k" + (warunki[1] + 1))
        let cStyl = document.querySelector("#k" + (warunki[2] + 1))
        sprawdzRemis(); //funkcja sprawdzająca czy nie ma remisu
        //nie mam pojecia co to robi ale działa więc jest git
        //if(moznaGrac == true){
        console.log(counter);
        counter += 1;
        if (a == b && b == c && a != "" && b != "" && c != "" && moznaGrac) {

            moznaGrac = false;
            botygrajo = false;
            console.log("rosol");
            document.querySelector("#aktywnyGracz").innerHTML = "Wygrywa: " + aktywnyGracz;
            aStyl.style.backgroundColor = "#00BA00";
            bStyl.style.backgroundColor = "#00BA00";
            cStyl.style.backgroundColor = "#00BA00";



        }

        else if (counter >= 8 && botygrajo && !czyRemis) {
            console.log("zur");
            start()
            zmianaGracza()
        }
        else if (counter >= 8 && moznaGrac && !czyRemis) {
            console.log(counter)
            zmianaGracza() //zmienia graczy po sprawdzeniu wszystkich warunków
        }

    })
}

//funckcja zmieniająca graczy
function zmianaGracza() {
    if (aktywnyGracz == grzyb) {
        aktywnyGracz = kolko;
    }
    else {
        aktywnyGracz = grzyb;
    }
    document.querySelector("#aktywnyGracz").innerHTML = "Aktywny gracz: " + aktywnyGracz;

    //ok nie mam pojecia jak to dziala ale sie aktywuje jak gra sie z botem 
    if (graczVsGracz == false && aktywnyGracz == kolko && moznaGrac == true) {

        let dobrePole = true
        setTimeout(() => {
            console.log("elzbieta") //elzbieta
            moznaGrac = false
            while (dobrePole) {
                let pole = Math.floor((Math.random() * 9) + 1); //tu sie losuje losowe pole dla bota a to co sie dzieje dalej to czarna magia
                let komorka = document.querySelector("#k" + pole);
                if (komorka.innerHTML == "") {
                    moznaGrac = true
                    tura(pole);
                    dobrePole = false;
                }
            }
        }, 10)
    }
}





//funckcja wykonująca ture i sprawdzająca czy ruch jest odpowiedni
function tura(x) {

    if (moznaGrac) {
        let komorka = document.querySelector("#k" + x);
        if (komorka.innerHTML == "") {
            komorka.innerHTML = aktywnyGracz;
            sprawdzWygrana();

        }
    }
}


//funkcja resetująca gre
function reset() {
    if (wyloczSpam) {
        document.querySelector("#zmienTrybButton").setAttribute("onclick", "start()");
    }
    let ktoWygral
    if (aktywnyGracz == grzyb) {
        ktoWygral = "grzyb";
    }
    else {
        ktoWygral = "dzik";
    }

    tryb = document.querySelector("#jakiTrybDiv").innerHTML;
    if (!moznaGrac) {
        let link = window.location.href;
        location.href = "dodajdobazy.php?win=" + ktoWygral + "&tryb=" + tryb + "&link=" + link;
    }
    botygrajo = false;
    moznaGrac = true;
    aktywnyGracz = grzyb;
    czyRemis = false;
    document.querySelector("#aktywnyGracz").innerHTML = "Aktywny gracz: " + aktywnyGracz;

    //petla czyszczaca plansze
    plansza.forEach(a => {
        a.innerHTML = "";
        a.style.backgroundColor = "white";
    })

}

//funkcja zmieniająca tryb z gracz vs gracz na gracz vs komputer
function zmienTryb(jakiTryb) {

    graczVsGracz = jakiTryb;
    let trybButton = document.querySelector("#zmienTrybButton");
    let trybDiv = document.querySelector("#jakiTrybDiv");
    let tryb1 = document.querySelector("#tryb1");
    if (jakiTryb == false) {
        trybButton.setAttribute("onclick", "zmienTryb(true)");
        trybDiv.innerHTML = "Gracz vs Komputer";
        tryb1.innerHTML = "Gracz vs Gracz";
    }
    else if (jakiTryb == true) {
        trybButton.setAttribute("onclick", "zmienTryb(false)");
        trybDiv.innerHTML = "Gracz vs Gracz";
        tryb1.innerHTML = "Gracz vs Komputer";
    }
    reset();

}

//funckcja sprawdzająca czy nie ma
function sprawdzRemis() {
    if (moznaGrac || botygrajo) {
        let liczRemis = 0
        plansza.forEach(komorka => {
            if (komorka.innerHTML != "")
                liczRemis++
        })
        if (liczRemis >= 9) {
            czyRemis = true;
            botygrajo = false;
            document.querySelector("#aktywnyGracz").innerHTML = "Remis";
        }
    }
}

function start() {
    if (moznaGrac) {
        wyloczSpam = true
        document.querySelector("#zmienTrybButton").setAttribute("onclick", "");
        let dobrePole = true
        botygrajo = true
        setTimeout(() => {
            console.log("elzbieta") //elzbieta
            while (dobrePole && botygrajo) {
                let pole = Math.floor((Math.random() * 9) + 1); //tu sie losuje losowe pole dla bota a to co sie dzieje dalej to czarna magia
                let komorka = document.querySelector("#k" + pole);
                if (komorka.innerHTML == "") {
                    tura(pole);
                    dobrePole = false;
                }
            }

        }, 1000)
    }
}