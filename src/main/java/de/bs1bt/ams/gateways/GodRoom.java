package de.bs1bt.ams.gateways;

import java.util.ArrayList;

import de.bs1bt.ams.model.Raum;

public interface GodRoom {
    public Raum hole(int id) throws DataGatewayException;
    public ArrayList<Raum> holeAlle() throws DataGatewayException;
    public int erstelle(Raum Raum) throws DataGatewayException;
    public void aktualisiere(Raum raumModel) throws DataGatewayException;
    public void loesche(int id) throws DataGatewayException;
    public void loesche(Raum Raum) throws DataGatewayException;
}