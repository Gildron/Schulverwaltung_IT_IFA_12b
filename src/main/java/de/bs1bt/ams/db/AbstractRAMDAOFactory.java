package de.bs1bt.ams.db;

import de.bs1bt.ams.gateways.GeraeteRAMDAO;
import de.bs1bt.ams.gateways.RaumRAMDAO;

public abstract class AbstractRAMDAOFactory extends AbstractDAOFactory {

    @Override
    public GeraeteDAO createGeraeteDAO (){
        return new GeraeteRAMDAO();
    }
    @Override
    public RaumDAO createRaumDAO(){
        return new RaumRAMDAO();

    }

}
