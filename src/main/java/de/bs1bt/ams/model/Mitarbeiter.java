package de.bs1bt.ams.model;

import java.sql.Date;
import java.time.LocalDate;
import de.bs1bt.ams.gateways.MitarbeiterMySQLDAO;

public class Mitarbeiter {

    static int anzahlMitarbeiter;

    private int mitarbeiter_nummer;
    private String name;
    private String vorname;
    private LocalDate geburtsdatum;
    private LocalDate eintrittsdatum;

    private Mitarbeiter(){

    }

    public Mitarbeiter(int mitarbeiterNummer, String name, String vorname, Date geburtsdatum, Date eintrittsdatum) {
    }

    public int getMitarbeiter_nummer(){return mitarbeiter_nummer;}

    public void setMitarbeiter_nummer(int mitarbeiterNummer) {this.mitarbeiter_nummer = mitarbeiterNummer;};

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVorname() {
        return vorname;
    }

    public void setVorname(String vorname) {
        this.vorname = vorname;
    }

    public LocalDate getGeburtsdatum() {
        return geburtsdatum;
    }
    public void setGeburtsdatum(LocalDate geburtsdatum){this.geburtsdatum = geburtsdatum;}

    public LocalDate getEintrittsdatum() {
        return eintrittsdatum;
    }

    public void setEintrittsdatum(LocalDate eintrittsdatum) throws Exception {
        this.eintrittsdatum = eintrittsdatum;
    }
}
