package de.bs1bt.ams.model;

public class Geraet {

    private int id;
    private int raumId;
    private String bezeichnung;
    private String hersteller;

    private static int anzahlGeraete;

    public Geraet() {
        anzahlGeraete +=1;
    }

    public Geraet(String bezeichnung, String hersteller) throws Exception {
        setId(-1);
        setBezeichnung(bezeichnung);
        setHersteller(hersteller);
        anzahlGeraete +=1;

    }

    public Geraet(int id, int raumId, String bezeichnung, String hersteller) throws Exception {
        setId(id);
        setBezeichnung(bezeichnung);
        setHersteller(hersteller);
        setRaumId(raumId);
        anzahlGeraete +=1;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRaumId() {
        return raumId;
    }

    public void setRaumId(int raumId) {
        this.raumId = raumId;
    }

    public String getBezeichnung() {
        return bezeichnung;
    }

    public void setBezeichnung(String bezeichnung) {
        this.bezeichnung = bezeichnung;
    }

    public String getHersteller() {
        return hersteller;
    }

    public void setHersteller(String hersteller) {
        this.hersteller = hersteller;
    }

    public static int getAnzahlGeraete() {
        return anzahlGeraete;
    }

    @Override
    public String toString() {
        return "Geraet{" +
                "id=" + id +
                ", raumId=" + raumId +
                ", bezeichnung='" + bezeichnung + '\'' +
                ", hersteller='" + hersteller + '\'' +
                '}';
    }
}
