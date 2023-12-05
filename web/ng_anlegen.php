<?php
echo "GET: ";
var_dump($_GET);
echo "<br>POST: ";
var_dump($_POST);

/* Arbeitsauftrag:
 * Daten per POST entgegennehmen, Pflichtfelder auswerten und in Datenbank schreiben
 */

include_once("DBConnectionSingleton.php");


if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    if( isset($_POST["inventarnummer"]) && isset($_POST["hostname"]) && $_POST["ipv4adresse"])
    {
        $inventarnummer = intval($_POST['inventarnummer']);
        $hostname = strval($_POST['hostname']);
        $ipv4adresse = strval($_POST['ipv4adresse']);

        echo "Inventarnummer: " . $inventarnummer . "<br>";
        echo "Hostname: " . $hostname . "<br>";
        echo "IPv4-Adresse: " . $ipv4adresse . "<br>";

        DBConnectionSingleton::create($inventarnummer , $hostname , $ipv4adresse);
    }
    else{
        echo "Falsche Eingabe: Einer der Parameter wurde nicht ausgefüllt!";
    }
}

?>
<h2>Netzwergerät anlegen</h2>
<form action="<?php echo $_SERVER["PHP_SELF"]; ?>?page=ng_anlegen" method="POST">
    <!-- <input type="hidden" name="page" value="ng_anlegen"> -->
    <label for="inventarnummer">Inventarnummer:</label><br>
    <select name = "inventarnummer" id =inventarnummer>
    <?php
    $allInventarnummern = DBConnectionSingleton::getAllGeraete();
    while ($geraete = mysqli_fetch_array($allInventarnummern,MYSQLI_ASSOC)):; ?>
        <option value="<?php echo $geraete["inventarnummer"]; ?>">
            <?php echo $geraete["inventarnummer"];
            echo "&nbsp;";
            echo $geraete["bezeichnung"];
            ?>
        </option>
    <?php
    endwhile;
    ?>
    </select>
    <br>
    <label for="hostname">Hostname:</label><br>
    <input type="text" id="hostname" name="hostname" placeholder="localhost" value=""><br>
<!--
    <label for="password">Passwort:</label><br>
    <input type="password" id="password" name="password"><br>
-->
    <label for="ipv4adresse">IPv4-Adresse:</label><br>

    <input type="text" id="ipv4adresse" name="ipv4adresse" placeholder="127.0.0.1" value=""><br><br>
    <input type="submit" value="Anlegen">
    <input type="reset">
</form> 