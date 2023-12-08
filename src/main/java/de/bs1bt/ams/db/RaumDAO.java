package de.bs1bt.ams.db;

import de.bs1bt.ams.gateways.DAOException;
import de.bs1bt.ams.model.Raum;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public interface RaumDAO {
    public void erstelleTabelle() throws DAOException ;
    public void loescheTabelle() throws DAOException ;
    public Raum hole(int id) throws DAOException ;
    public ArrayList<Raum> holeAlle() throws DAOException ;
    public int erstelle(Raum raumModel) throws DAOException ;
    public void aktualisiere(Raum raumModel) throws DAOException ;
    public void loesche(int id) throws DAOException ;
    public void loesche(Raum raumModel) throws DAOException ;
    public ArrayList<Raum> getGebaude(String gebaudeName) throws Exception ;
     
}
