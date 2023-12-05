<?php
include_once("DBConnectionSingleton.php");

//session_destroy();
//echo "Session value: " . $_SESSION["login"];

//echo "<br>POST: ";
//var_dump($_POST);


if (isset($_POST["loginname"]) && isset($_POST["loginpasswort"]))
{
    $username = strval($_POST["loginname"]);
    $password = strval($_POST["loginpasswort"]);

//    echo  "<br>" ."Benutzername: " . $username . "<br>";
//    echo  "Passwort: " . $password . "<br>";


    if (DBConnectionSingleton::login($username , $password)){
        echo "Login Successful";
        $_SESSION["login"] = 1;
        echo "Session value: " . $_SESSION["login"];
    }
    else
    {
        echo "Falscher Benutzername oder Passwort!";
    }
}

?>

<form action="<?php echo $_SERVER["PHP_SELF"]; ?>?page=login" method="POST">
    <b>Login</b><br>
    <br>
    Username: <input name="loginname"><br>
    Passwort: <input name="loginpasswort" type=password><br>
    <br>
    <input type=submit name=submit value="Einloggen">
</form>
