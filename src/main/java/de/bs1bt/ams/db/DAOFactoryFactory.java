package de.bs1bt.ams.db;

import de.bs1bt.ams.mvc.Platform;

public class DAOFactoryFactory {
    public AbstractDAOFactory create(Platform platform) {
        return switch(platform) {
            case RAM -> new RAMDAOFactory();
            case SQL -> new MySQLDAOFactory();
        };
    }
}