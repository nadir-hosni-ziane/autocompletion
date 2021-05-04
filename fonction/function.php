<?php
class autocompletion
{
public $_db;


// ////////////////////////////////////////


// ///////////////////////////////////////////////// INSTANCIER CONNEXION A LA BDD


// ////////////////////////////////////////



public function dbconnect(){
$db = new PDO("mysql:host=localhost; dbname=autocompletion", 'root', '');
$this->_db = $db;
}



// ////////////////////////////////////////


// ///////////////////////////////////////////////// FONCTION POUR AFFICHER RESULTAT RECHERCHE


// ////////////////////////////////////////



public function recherche($_get){
    
    $db = $this->_db;
    $requete = $db->prepare("SELECT * FROM titres WHERE titre LIKE '%$_get%'");
    $requete->execute();
    $resultat = $requete->fetchAll();
    // var_dump($resultat);

    foreach ($resultat as $key) {
        $titre = $key['titre'];
        $artiste = $key['artiste'];
        $album = $key['album'];
        $image = $key['image_album'];
        $id2= $key['id'];   
        
        echo "<section class = 'case_base_produit'>
                <section class = 'case_produit'>
                    <section class = 'display_arrow'>
                        <div class = 'boximg'>
                            <img class = 'size_picture2' src = '../img/$image'>
                        </div>
                        <div class = 'description_article'>
                            <h2>$album</h2><br>
                            $titre
                        </div>
                        <section class = 'case_prix'>
                            Artiste : $artiste 
                        </section>
                    </section>
                </section>
                <section class = 'case_produit3'>
                    <div class = 'deletation'>";
                        echo "<a href='element.php?id=$id2'>";
                        echo "<input type='image' src='../img/eye' />";
                        echo "</a>
                    </div>
                </section>
            </section>
    </section> ";
    }
}



// ////////////////////////////////////////


// ///////////////////////////////////////////////// FONCTION POUR AFFICHER TITRE SELECTIONNER


// ////////////////////////////////////////


public function afficher($_get){

$db = $this->_db;
$requete = $db->prepare("SELECT * FROM titres WHERE id='$_get'");
$requete->execute();
$resultat = $requete->fetchall();

    foreach ($resultat as $key) {

        $titre = $key['titre'];
        $artiste = $key['artiste'];
        $album = $key['album'];
        $image = $key['image_album'];
        $lien = $key['link_lyrics'];
        
    echo "<section class = 'case_produit_back'>
            <div class = 'photo'>
                <img class = 'image' src = '../img/$image'>
            </div>
            <div class = 'titre2'>
                <h3 class = 'titre_product'>$album</h3>
                <div class = 'description'>
                    $titre
                </div>
                <p class ='didi'>$artiste</p>
                <a href='$lien'>
                <input type='submit' class ='add' value ='Lyrics'>
                </a>
            </div>
            </section>";
    }

}

}