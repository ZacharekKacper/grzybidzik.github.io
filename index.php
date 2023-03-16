<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>kolkoikrzyguabdluyavitdvot</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
    <div id="takiblok">
        <div id="jakiTrybDiv">Gracz vs Gracz</div>
        <div id="aktywnyGracz">Aktywny gracz: 🍄</div>
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
        <button class="botvsbotguziec" onclick="location.href='komputervskomputer.php';"><span>Komputer vs Komputer</span></button>
    </div>
    
    <table class="tablica-wynikow">
        <tr>
            <th>Numer gry</th>
            <th>Zwyciezca</th>
            <th>Tryb gry</th>
            <th>Data gry</th>
        </tr>
        <?php
        $conn = new mysqli("localhost", "root", "","wynikigrzybidzik");
        $result = $conn->query("SELECT * FROM wyniki order by id DESC");
        while($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row["id"]. "</td><td>" . $row["zwyciezca"]. "</td><td class='umre'>". $row["tryb"] ."</td><td> " . $row["data"]. "</td></tr>";
        }
        $conn -> close();
        ?>
    </table>
    <script src="script.js"></script>
    
    
    
</body>
</html>
