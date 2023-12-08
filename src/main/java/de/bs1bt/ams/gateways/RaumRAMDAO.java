package de.bs1bt.ams.gateways;

import de.bs1bt.ams.db.RaumDAO;
import de.bs1bt.ams.model.Raum;

import java.util.ArrayList;

public class RaumRAMDAO implements RaumDAO {


    @Override
    public void erstelleTabelle() throws DAOException {

    }

    @Override
    public void loescheTabelle() throws DAOException {

    }

    @Override
    public Raum hole(int id) throws DAOException {
        return null;
    }

    @Override
    public ArrayList<Raum> holeAlle() throws DAOException {
        return null;
    }

    @Override
    public int erstelle(Raum raumModel) throws DAOException {
        return 0;
    }

    @Override
    public void aktualisiere(Raum raumModel) throws DAOException {

    }

    @Override
    public void loesche(int id) throws DAOException {

    }

    @Override
    public void loesche(Raum raumModel) throws DAOException {

    }

    @Override
    public ArrayList<Raum> getGebaude(String gebaudeName) throws Exception {
        return null;
    }
}
