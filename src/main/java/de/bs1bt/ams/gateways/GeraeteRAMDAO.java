package de.bs1bt.ams.gateways;

import de.bs1bt.ams.db.GeraeteDAO;
import de.bs1bt.ams.model.Geraet;

import java.util.ArrayList;

public class GeraeteRAMDAO implements GeraeteDAO {
    public void erstelleTabelle() throws DataGatewayException {

    }

    public void loescheTabelle() throws DataGatewayException {

    }

    public Geraet hole(int id) throws DataGatewayException {

        return new Geraet();
    }

    public ArrayList<Geraet> holeAlle() throws DataGatewayException {
        return new ArrayList<>();
    }

    public int erstelle(Geraet raumModel) throws DataGatewayException {

        return -1;
    }

    public void aktualisiere(Geraet geraet) throws DataGatewayException {

    }

    public void loesche(int id) throws DataGatewayException {

    }

    public void loesche(Geraet geraet) throws DataGatewayException {

    }

}
