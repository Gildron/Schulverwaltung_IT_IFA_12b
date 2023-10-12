<?php
    include_once("DBConnectionSingleton.php");

    $ngg = DBConnectionSingleton::readAll();
?>
<div class="tab-pane fade active show" id="monitorContent" role="tabpanel" aria-labelledby="monitor-tab">
    <div class="mt-2">
        <h2>Monitor</h2>
    </div>
    <div class="container p-0">
        <div class="row">
            <?php
                foreach($ngg as $ng)
                {
                    // bad example:
                    $status = NetzwerkMonitor::istErreichbar(!empty($ng->getIPv4Address()) ? $ng->getIPv4Address() : $ng->getHostname());

            ?>
            <div class="col border border-dark p-2 m-2">
                <div class="container">
                    <div class="row">
                        <div class="col-1 fs-2">
                            <div>
                                <?php echo $status ? "😁" : "😥"; ?>
                            </div>
                        </div>
                        <div class="col-11">
                            <div>
                                <span class="p-2"><?php echo $ng->getHostname(); ?></span>
                                <span>
                                    <?php echo $status ? "online" : "offline"; ?>
                                </span>
                            </div>
                            <div>
                                <span class="p-2">IP:</span><span><?php echo $ng->getIPv4Address(); ?></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php
                }
            ?>                            
        </div>
    </div>
</div>