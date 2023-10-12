<?php
echo "GET: ";
var_dump($_GET);
echo "<br>POST: ";
var_dump($_POST);

/* Arbeitsauftrag:
 * Daten per POST entgegennehmen, Pflichtfelder auswerten und in Datenbank schreiben
 */
?>
<h2>Netzwergerät anlegen</h2>
<form action="<?php echo $_SERVER["PHP_SELF"]; ?>?page=ng_anlegen" method="POST">
    <!-- <input type="hidden" name="page" value="ng_anlegen"> -->
    <label for="inventarnummer">Inventarnummer:</label><br>
    <input type="text" id="inventarnummer" name="inventarnummer" placeholder="5" value=""><br>

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