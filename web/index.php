<?php
session_start();
echo session_id();
?>
<!doctype html>
<html lang="de">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Monitor</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
      <link href="styles.css" rel="stylesheet" media="all" />
  </head>
  <body>
    
    <div class="container mt-5">
        <div>
            <div>
                <h1>Network Spy</h1>
            </div>
            <div>
                <p>Network Monitoring Tool</p>
            </div>
        </div>
    
        <div id="navArea">
            <ul class="nav nav-tabs" id="tabList" role="tablist">
                <li class="nav-item" role="presentation">
                  <a href="<?php echo $_SERVER["PHP_SELF"]; ?>?page=monitor">Monitor</a>
                </li>
                <li class="nav-item" role="presentation">
                | <a href="<?php echo $_SERVER["PHP_SELF"]; ?>?page=verwaltung">Geräteverwaltung</a>
                </li>
                <li class="nav-item" role="presentation">
                | <a href="<?php echo $_SERVER["PHP_SELF"]; ?>?page=konto">Benutzerkonto</a>
                </li>
                <li class="nav-item" role="presentation">
                |  <a href="<?php echo $_SERVER["PHP_SELF"]; ?>?page=login">Login</a>
                  </li>
              </ul>
              <div class="tab-content" id="tabContent">
                <?php
                    //var_dump($_GET);
                    //if(isset($_GET["page"])) {
                    if(array_key_exists("page", $_GET)) {
                        $page = $_GET["page"];
                    } else {
                        $page = "monitor";
                    }
                    switch($page)
                    {
                        case "verwaltung":
                            include_once("deviceManagement.php");
                            break;
                        case "ng_anlegen":
                            include_once("ng_anlegen.php");
                            break;
                        case "login":
                            include_once("login.php");
                            break;
                        case "konto":
                            include_once("konto.php");
                            break;
                        case "monitor":
                        default:
                            include_once("monitor.php");
                            break;
                    }
                ?>
                <div class="tab-pane fade" id="userAccountContent" role="tabpanel" aria-labelledby="contact-tab">
                    <h2>Account</h2>

                </div>
                <div class="tab-pane fade" id="loginContent" role="tabpanel" aria-labelledby="contact-tab">
                    <h2>Login</h2>

                </div>
            </div>
        </div>

        <footer id="footer">
            <span>© BS1 BT GmbH - </span><span><a href="">Impressum</a></span><span> - </span><span><a href="">Sitemap</a></span>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>