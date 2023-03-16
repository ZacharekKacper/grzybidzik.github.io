<?php
        if(!empty($_GET["win"])){
            $zwyciezca = $_GET['win'];
            $tryb = $_GET['tryb'];
            $data = date("H:i:s, d-m-Y");
            $conn = new mysqli("localhost", "root", "","wynikigrzybidzik");
            $sqlQuery = "INSERT INTO wyniki Values(null, '$zwyciezca','$tryb','$data')";
            $conn -> query($sqlQuery);
            $conn -> close();
            
            header('location: '.$_GET["link"]);
        }
    ?>