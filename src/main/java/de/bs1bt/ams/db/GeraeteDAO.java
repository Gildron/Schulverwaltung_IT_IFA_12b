package de.bs1bt.ams.db;

import de.bs1bt.ams.gateways.DataGatewayException;
import de.bs1bt.ams.model.Geraet;

import java.util.ArrayList;

public interface GeraeteDAO {
    public Geraet hole(int id) throws DataGatewayException;
    public void loescheTabelle() throws DataGatewayException;
    public ArrayList<Geraet> holeAlle() throws DataGatewayException;
    public int erstelle(Geraet raumModel) throws DataGatewayException;
    public void aktualisiere(Geraet geraet) throws DataGatewayException;
    public void loesche(int id) throws DataGatewayException;
    public void loesche(Geraet geraet) throws DataGatewayException;



}
