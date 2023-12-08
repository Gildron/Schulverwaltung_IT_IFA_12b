package de.bs1bt.ams.db;

import de.bs1bt.ams.gateways.DAOException;
import de.bs1bt.ams.model.Geraet;

import java.util.ArrayList;

public interface GeraeteDAO {
    public Geraet hole(int id) throws DAOException;
    public void loescheTabelle() throws DAOException;
    public ArrayList<Geraet> holeAlle() throws DAOException ;
    public int erstelle(Geraet raumModel) throws DAOException ;
    public void aktualisiere(Geraet geraet) throws DAOException ;
    public void loesche(int id) throws DAOException ;
    public void loesche(Geraet geraet) throws DAOException ;



}
