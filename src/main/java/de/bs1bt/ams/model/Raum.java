package de.bs1bt.ams.model;

import de.bs1bt.ams.gateways.DAOException;
import de.bs1bt.ams.gateways.RaumMySQLDAO;

import java.util.ArrayList;

public class Raum {

    private int id;
    private String bezeichnung;
    private String gebaeude;
    private double breiteInCm;
    private double laengeInCm;

    public Raum() {
    }

    public Raum(String bezeichnung, String gebaeude) throws Exception {
        setId(-1);
        setBezeichnung(bezeichnung);
        setGebaeude(gebaeude);
        setGroesse(500);
    }

    public Raum(int id, String bezeichnung, String gebaeude, double breiteInCm, double laengeInCm) throws Exception {
        setId(id);
        setBezeichnung(bezeichnung);
        setGebaeude(gebaeude);
        setBreiteInCm(breiteInCm);
        setLaengeInCm(laengeInCm);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBezeichnung() {
        return bezeichnung;
    }

    public void setBezeichnung(String bezeichnung) {
        this.bezeichnung = bezeichnung;
    }

    public String getGebaeude() {
        return gebaeude;
    }

    public void setGebaeude(String gebaeude) {
        this.gebaeude = gebaeude;
    }

    public double getBreiteInCm() {
        return breiteInCm;
    }

    public void setBreiteInCm(double breiteInCm) throws Exception {
        if(breiteInCm < 0) {
            throw new Exception("Invalider Wert für Parameter breiteInCm (>0 cm!): " + breiteInCm);
        }
        this.breiteInCm = breiteInCm;
    }
    public double getLaengeInCm() {
        return laengeInCm;
    }

    public void setLaengeInCm(double laengeInCm) throws Exception {
        if(laengeInCm < 0) {
            throw new Exception("Invalider Wert für Parameter laengeInCm (>0 cm!): " + laengeInCm);
        }
        this.laengeInCm = laengeInCm;
    }

    public void setGroesse(double seitenLaengeInCm) throws Exception {
        setLaengeInCm(seitenLaengeInCm);
        setBreiteInCm(seitenLaengeInCm);
    }
    public void setGroesse(double laengeInCm, double breiteInCm) throws Exception {
        setLaengeInCm(laengeInCm);
        setBreiteInCm(breiteInCm);
    }
    public double getFlaecheInQm() {
        return (laengeInCm * breiteInCm)/10000;
    }
    public double getGebauedeFlaecheInQm() throws Exception {
        RaumMySQLDAO currentRaum = new RaumMySQLDAO();
        ArrayList<Raum> selctedGebaude = currentRaum.getGebaude(gebaeude);
        double gebaudeFlaeche = 0;
        for(Raum raum : selctedGebaude){
            gebaudeFlaeche += raum.getFlaecheInQm();
        }

        return gebaudeFlaeche;

    }

}
