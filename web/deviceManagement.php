<?php
    include_once("DBConnectionSingleton.php");

    // Datensatz löschen?
    if(     isset($_GET["action"]) && $_GET["action"] == "delete"
        &&  isset($_GET["ng_id"])  && $_GET["ng_id"])
    {
        DBConnectionSingleton::delete($_GET["ng_id"]);
    }
?>
<head>
    <title>Netzwerkgeräte</title>
    <link href="app.css" rel="stylesheet" media="all" />
</head>
<div class="show" class="tab-pane fade" id="deviceManagementContent" role="tabpanel" aria-labelledby="profile-tab">
                    
    <!-- Aufgabe: Hier die Tabelle zur Geräteverwaltung ergänzen -->
    <h2>Geräteverwaltung</h2>
    <p><a href="<?php echo $_SERVER['PHP_SELF'] ?>?page=ng_anlegen">Ein neues Netzwerkgerät anlegen.</a></p>
    <table class="table">
        <tr>
            <th>ID</th>
            <th>Inventarnummer</th>
            <th>Hostname</th>
            <th>IPv4-Adresse</th>
            <th>Bearbeiten</th>
            <th>Löschen</th>
        </tr>
        <?php
        
                $ngg = DBConnectionSingleton::readAll();
                foreach($ngg as $ng)
                {
        ?>
                    <tr>
                        <td><?php echo $ng->getNgID(); ?></td>
                        <td><?php echo $ng->getInventarnummer(); ?></td>
                        <td><?php echo $ng->getHostname(); ?></td>
                        <td><?php echo $ng->getIPv4Address(); ?></td>
                        <td><a href="<?php echo $_SERVER['PHP_SELF'] ?>?page=verwaltung&action=edit&ng_id=<?php echo $ng->getNgID(); ?>#deviceManagementContent?">bearbeiten</a></td>
                        <td><a href="<?php echo $_SERVER['PHP_SELF'] ?>?page=verwaltung&action=delete&ng_id=<?php echo $ng->getNgID(); ?>#deviceManagementContent">löschen</a></td>
                    </tr>
        <?php
                }
        ?>
    </table>

</div>