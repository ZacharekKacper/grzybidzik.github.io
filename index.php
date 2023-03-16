<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>kolkoikrzyguabdluyavitdvot</title>
    <link rel="stylesheet" href="style.css">
    
</head>
<body>
    <div id="takiblok">
        <div id="jakiTrybDiv">Gracz vs Gracz</div>
        <div id="aktywnyGracz">Aktywny gracz: 🍄</div>
        <form method="post" style="display:none;" id="wynikForm" name="wynikForm">
            <input id="wynik-area" type="text" name="wynik">
            <input type="submit" value="elzbieta" id="loginSubmit" name="submit">
        </form>
        <div id="kolkoigrzyb">
            <div onclick="tura(1)" id="k1" class="komorka"></div>
            <div onclick="tura(2)" id="k2" class="komorka"></div>
            <div onclick="tura(3)" id="k3" class="komorka"></div>
            <div onclick="tura(4)" id="k4" class="komorka"></div>
            <div onclick="tura(5)" id="k5" class="komorka"></div>
            <div onclick="tura(6)" id="k6" class="komorka"></div>
            <div onclick="tura(7)" id="k7" class="komorka"></div>
            <div onclick="tura(8)" id="k8" class="komorka"></div>
            <div onclick="tura(9)" id="k9" class="komorka"></div>
        </div>
        <button onclick="reset()" id="resethyhym">Reset</button>
        <button onclick="zmienTryb(false)" id="zmienTrybButton"><span id="tryb1">Gracz vs Komputer</span></button>
        <button class="botvsbotguziec" onclick="location.href='komputervskomputer.html';"><span>Komputer vs Komputer</span></button>
    </div>

    <script src="script.js"></script>
    
    <?php
        if(!empty($_POST["wynik"])){
            
        }
    ?>
</body>
</html>
