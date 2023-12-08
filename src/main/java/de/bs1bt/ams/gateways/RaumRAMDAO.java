package de.bs1bt.ams.gateways;

import de.bs1bt.ams.db.RaumDAO;
import de.bs1bt.ams.model.Raum;

import java.util.ArrayList;

public class RaumRAMDAO implements RaumDAO {


    @Override
    public void erstelleTabelle() throws DataGatewayException {

    }

    @Override
    public void loescheTabelle() throws DataGatewayException {

    }

    @Override
    public Raum hole(int id) throws DataGatewayException {
        return null;
    }

    @Override
    public ArrayList<Raum> holeAlle() throws DataGatewayException {
        return null;
    }

    @Override
    public int erstelle(Raum raumModel) throws DataGatewayException {
        return 0;
    }

    @Override
    public void aktualisiere(Raum raumModel) throws DataGatewayException {

    }

    @Override
    public void loesche(int id) throws DataGatewayException {

    }

    @Override
    public void loesche(Raum raumModel) throws DataGatewayException {

    }

    @Override
    public ArrayList<Raum> getGebaude(String gebaudeName) throws Exception {
        return null;
    }
}
