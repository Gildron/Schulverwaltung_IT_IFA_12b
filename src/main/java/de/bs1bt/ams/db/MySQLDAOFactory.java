package de.bs1bt.ams.db;

import de.bs1bt.ams.gateways.GeraeteMySQLDAO;
import de.bs1bt.ams.gateways.RaumMySQLDAO;

public class MySQLDAOFactory extends AbstractDAOFactory {

    @Override
    public GeraeteDAO createGeraeteDAO (){
        return new GeraeteMySQLDAO();
    }
    @Override
    public RaumDAO createRaumDAO(){
        return new RaumMySQLDAO();
    }

}
