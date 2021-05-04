<?php require_once 'header2.php'?>
<main>
    <h1 class="resultat-search">
    resultat(s) de recherche pour "<?= $_GET['search']?>"
    </h1>
        <?= $auto->recherche($_GET['search']) ?>
</main>
<?php require_once 'footer2.php'?>