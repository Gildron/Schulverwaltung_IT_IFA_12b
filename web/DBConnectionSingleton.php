<?php

include_once("NetzwerkGeraet.php");
include_once("NetzwerkMonitor.php");

/**
 * Sicherheitsrisiko: Ohne aktives PHP-Modul liefert
 * Apache diese Klasse und damit auch die Zugangsdaten
 * in Klartext aus.
 * Abhilfe: Die Zugangsdaten an einem "sicheren Ort" abspeichern.
 */
include_once("secure_path/credentials.php"); // oder mit htaccess sichern

class DBConnectionSingleton {

    private static $servername = "ams_fx_test";
    private static $dbname = "nmt_vorlage_komplett";
    private static $connection = null;

    public static function getConnection() {
        if(self::$connection == null) {
            // Create connection
            self::$connection = new mysqli(self::$servername, dbUser, dbPasswort, self::$dbname);
            // Check connection
            if (self::$connection->connect_error) {
                die("Connection failed: " . self::$connection->connect_error);
            }
        }
        return self::$connection;
    }

    // Hinweis: Single-Responsibility-Prinzip verletzt (TODO):
    public static function readAll() {
        $ngg = array();
        $conn = self::getConnection();
    
        $sql = "SELECT * FROM netzwerkgeraete";
        $result = $conn->query($sql);
    
        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                //echo "id: " . $row["ng_id"]. " - Name: " . $row["inventarnummer"]. " " . $row["hostname"]. " " . $row["ipv4adresse"]. "<br>";
                array_push($ngg, new NetzwerkGeraet($row["ng_id"], $row["inventarnummer"], $row["hostname"], $row["ipv4adresse"]));
            }
        } else {
            echo "0 results";
        }
        return $ngg;
        //$conn->close();
    }

    public static function delete($id) {
        $conn = self::getConnection();
        
        // sql to delete a record
        $sql = "DELETE FROM netzwerkgeraete WHERE ng_id=" . $_GET["ng_id"];
        if ($conn->query($sql) === TRUE) {
            echo "Record deleted successfully";
        } else {
            echo "Error deleting record: " . $conn->error;
        }
    }

    public static function create(/** */) {
        // to do
    }
    public static function update(/** */) {
        // to do
    }

}