<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Elzbieta jumpscare</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id=""></div>
    <div id="takiblok">
        <div id="jakiTrybDiv">Komputer vs Komputer</div>
        <div id="aktywnyGracz">Aktywny gracz: 🍄</div>
        <div id="kolkoigrzyb">
            <div id="k1" class="komorka"></div>
            <div id="k2" class="komorka"></div>
            <div id="k3" class="komorka"></div>
            <div id="k4" class="komorka"></div>
            <div id="k5" class="komorka"></div>
            <div id="k6" class="komorka"></div>
            <div id="k7" class="komorka"></div>
            <div id="k8" class="komorka"></div>
            <div id="k9" class="komorka"></div>
        </div>
        
        <button onclick="reset()" id="resethyhym">Reset</button>
        <button id="zmienTrybButton" onclick="start()"><span>Start</span></button>
        <button class="botvsbotguziec" onclick="location.href='index.php';"><span>Gracz vs Gracz</span></button>
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
        $result = $conn->query("SELECT * FROM wyniki");
        while($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row["id"]. "</td><td>" . $row["zwyciezca"]. "</td><td>". $row["tryb"] ."</tr><td> " . $row["data"]. "</td></tr>";
        }
        $conn -> close();
        ?>
    </table>
    <script src="script.js"></script>
</body>
</html>
</body>
</html>
