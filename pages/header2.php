<?php
session_start();
include("../fonction/function.php");
$auto = new autocompletion();
$auto->dbconnect();

if(isset($_POST['search'])) {

    $q = $_POST['q'];

    $response = "<ul><li class='li-recherche1'>pas de résultat</li></ul>";

    $db = new PDO("mysql:host=localhost; dbname=autocompletion", 'root', '');
    $requete = $db->prepare("SELECT * FROM titres WHERE titre LIKE '%$q%'");
    $requete->execute();
    $data = $requete->fetchAll();
    
    if($requete->rowCount() > 0){
        $response= '';
        $response .= "<ul>";
        for($i = 0 ; isset($data[$i]); $i++){
            // $response .= "<p>test</p>";
           $response .= "<li class='li-recherche1'>"."<a class='a1' href='element.php?id=".$data[$i]['id']."'>".$data[$i]['titre']."</a>"."</li>";
        }
        $response .= "</ul>";
    }

exit($response);

}

?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <!-- Site Metas -->
    <meta charset="UTF-8">
    <title>RAP WORLD</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style/autocompletion.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;500&family=Press+Start+2P&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/d34f22fe3f.js" crossorigin="anonymous"></script>
    <meta name="keywords" content="RAP WORLD">
    <meta name="description" content="Biblliothèque répertoriant discographie de rappeur">
    <meta name="author" content="Nadir Ziane">
	<meta property="og:title" content="RAP WORLD" />
    <meta property="og:description" content="Biblliothèque répertoriant discographie de rappeur" />
    <meta property="og:site_name" content="RAP WORLD" />
    <link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="../img/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="../img/apple-touch-icon.png">
</head>
<body>
    <header>
        <section class="encart">
            <div class="titre1">
                <form class="form1" action="recherche.php" method="GET">
                    <input class="input-recherche1" type="text" name="search" placeholder="Rechercher" id="searchBox">
                    <input class="input-submit1" type="submit" value="rechercher">
                    <div class="liste-recherche1" id="response"></div>
                </form>
                <!-- <a href="index.php">
                    <img class="logo-search" src="../img/recherche.svg" alt = "Logo Rap World">
                </a> -->
            </div>
            <a href="index.php">
                <img class="logo-header" src="../img/music.svg" alt = "Logo Rap World">
            </a>
            <div class="li-head">
                <nav>
                    <li class="li-header"><a href="index.php">Accueil</a></li>
                    <li class="li-header"><a href="liste.php">Musique</a></li>
                </nav>
            </div>
        </section>
    </header>