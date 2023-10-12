<?php

class NetzwerkMonitor
{
	// Klassenkonstante:
	const HOSTNAME_LENGTH_MIN = 3;
	const HOSTNAME_LENGTH_MAX = 255;

	static $anzahlPings;
	
	// Linux
	public static function istErreichbarLinux($ziel)
	{
		exec("ping -c 1 -q $ziel", $ausgabe, $status); // Call by reference
		//var_dump($ausgabe);
		//echo "\n\n\n\n";

		self::$anzahlPings++;
		
		$match_auf_received = preg_match("/1 received/i", $ausgabe[3]) == 1;
		$match_auf_nichts_verloren = preg_match("/0% packet loss/i", $ausgabe[3]) == 1;
		
		$erreichbar = $match_auf_received && $match_auf_nichts_verloren;
		
		return $erreichbar;
	}
	
	// Windows
	public static function istErreichbar($ziel)
	{
		exec("ping $ziel -n 1 -w 200", $ausgabe, $status); // Call by reference
//        var_dump($ziel);
//        echo "\n\n\n\n";
//        var_dump($status);
//        echo "\n\n\n\n";
//		var_dump($ausgabe);
//		echo "\n\n\n\n";
//
//		self::$anzahlPings++;
//
//		$match_auf_zielhost = preg_match("/Zielhost nicht erreichbar/i", $ausgabe[2]) == 1;
//		$match_auf_zeitueberschreitung = preg_match("/Zeitüberschreitung/i", $ausgabe[2]) == 1;
//		$match_auf_zielnetz = preg_match("/Zielnetz nicht erreichbar./i", $ausgabe[2]) == 1;
//		$match_auf_verloren = preg_match("/Verloren = 1/i", $ausgabe[5]) == 1;
//
//        return !$match_auf_zielhost && !$match_auf_zeitueberschreitung && !$match_auf_zielnetz && !$match_auf_verloren;
	}
	
	/* Erweiterung
	 * TCP-Dienste Läuft Apache noch? Mit nmap ob Port offen ist
	 * snmp: Netzwerküberwachungstools
	 *      snmp get: Befragen, z.B. of Lfter läuft, RAM => Monitoren
	 *		management information base
	 *		snmp set: Parameter konfigurieren

	 *
	*/
}