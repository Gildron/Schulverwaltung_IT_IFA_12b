<?php

class NetzwerkGeraet {
    private $ng_id;
    private $inventarnummer;
    private $hostname;
    private $ipv4_address;

    public function __construct(
            $ng_id,
            $inventarnummer,
            $hostname,
            $ipv4_address
        )
    {
        $this->ng_id = $ng_id;
        $this->setInventarnummer($inventarnummer);
        $this->hostname = $hostname;
        $this->ipv4_address = $ipv4_address;
    }

    public function getNgID() {
        return $this->ng_id;
    }
    public function setNgID($ng_id) {
        $this->ng_id = $ng_id;
    }

    public function getInventarnummer() {
        return $this->inventarnummer;
    }
    public function setInventarnummer($inventarnummer) {
        $this->inventarnummer = $inventarnummer;
    }

    public function getHostname() {
        return $this->hostname;
    }
    public function setHostname($hostname) {
        $this->hostname = $hostname;
    }
    public function getIPv4Address() {
        return $this->ipv4_address;
    }

    public function setIPv4Address($ipv4_address) {
        $this->ipv4_address = $ipv4_address;
    }
}