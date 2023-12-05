package de.bs1bt.ams.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionSingleton {
        // Field hält Referenz auf einzigartige Instanz
        private static DBConnectionSingleton instance = null;
        // Privater Konstruktor verhindert Instanziierung durch Client
        private Connection connection = null;
        private DBConnectionSingleton() throws SQLException {
        // initialisiere Objekt

            connection = DriverManager.getConnection(DBCredetialsSingleton.getInstance().getUrl(), DBCredetialsSingleton.getInstance().getUsername(), DBCredetialsSingleton.getInstance().getPassword());

        }
        public static DBConnectionSingleton getInstance() throws SQLException {
            if (instance == null){
                instance = new DBConnectionSingleton();
            }
            return instance;
        }
}
