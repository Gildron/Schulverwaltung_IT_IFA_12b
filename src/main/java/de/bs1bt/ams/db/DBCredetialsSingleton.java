package de.bs1bt.ams.db;

public class DBCredetialsSingleton {

    private static DBCredetialsSingleton instance = null;
    private final String username = "schueler";
    private final String password = "Geheim01";
    private final String url = "jdbc:mysql://localhost:3306/ams_fx_test";

    private DBCredetialsSingleton()
    {

    }

    public static DBCredetialsSingleton getInstance() {
        if (instance == null){
            instance = new DBCredetialsSingleton();
        }
        return instance;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    public String getUrl() {
        return url;
    }
}
