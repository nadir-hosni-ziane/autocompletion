<?php require_once 'header.php'?>
<main>
    <div class="img-index">
        <img class="logo-index" src="../img/music.svg" alt = "Logo Rap World">
    </div>
    <section class="recherche">
        <form action="recherche.php" method="GET">
            <input class="input-recherche" type="text" name="search" placeholder="Rechercher" id="searchBox">
            <input class="input-submit" type="submit" value="rechercher">
            <div class="liste-recherche" id="response"></div>
        </form>
    </section>
</main>
<?php require_once 'footer.php'?>