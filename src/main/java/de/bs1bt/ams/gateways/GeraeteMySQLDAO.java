package de.bs1bt.ams.gateways;

import de.bs1bt.ams.db.GeraeteDAO;
import de.bs1bt.ams.model.Geraet;
import de.bs1bt.ams.model.Raum;

import java.sql.*;
import java.util.ArrayList;

public class GeraeteMySQLDAO implements GeraeteDAO {
    private Connection connection = null;
    private PreparedStatement ptmt = null;
    private ResultSet resultSet = null;

    public void erstelleTabelle() throws DAOException {

    }

    public void loescheTabelle() throws DAOException {

    }

    public Geraet hole(int id) throws DAOException {

        return new Geraet();
    }

    public ArrayList<Geraet> holeAlle() throws DAOException {
        return new ArrayList<>();
    }

    public int erstelle(Geraet raumModel) throws DAOException {

        return -1;
    }

    public void aktualisiere(Geraet geraet) throws DAOException {

    }

    public void loesche(int id) throws DAOException {

    }

    public void loesche(Geraet geraet) throws DAOException {

    }

}
