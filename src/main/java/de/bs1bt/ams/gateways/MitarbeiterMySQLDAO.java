package de.bs1bt.ams.gateways;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

import de.bs1bt.ams.db.DBCredetialsSingleton;
import de.bs1bt.ams.gateways.DAOException;
import de.bs1bt.ams.model.Mitarbeiter;
import de.bs1bt.ams.model.Raum;

import javax.xml.namespace.QName;
import java.sql.*;
import java.util.ArrayList;

public class MitarbeiterMySQLDAO {
    private Connection connection = null;
    private PreparedStatement ptmt = null;
    private ResultSet resultSet = null;

    public void erstelleTabelle() throws DAOException {
        // Quelle: https://www.tutorialspoint.com/java_mysql/java_mysql_create_tables.htm
        String query = "CREATE TABLE `mitarbeiter` (mitarbeiter_nummer integer PRIMARY KEY AUTO_INCREMENT, " +
                "name varchar(20), " +
                "vorname varchar(20), " +
                "geburtsdatum Date, " +
                "eintrittsdatum Date) ";
        System.out.println(query);
        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ams_fx_test", DBCredetialsSingleton.getInstance().getUsername(), DBCredetialsSingleton.getInstance().getPassword());
            ptmt = connection.prepareStatement(query);
            ptmt.executeUpdate();
        } catch (SQLException e) {
            throw new DAOException(e.getMessage());
        }
    }

    public void loescheTabelle() throws DAOException {
        String query = "DROP TABLE mitarbeiter";
        System.out.println(query);
        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ams_fx_test", DBCredetialsSingleton.getInstance().getUsername(), DBCredetialsSingleton.getInstance().getPassword());
            ptmt = connection.prepareStatement(query);
            ptmt.executeUpdate();
        } catch (SQLException e) {
            throw new DAOException(e.getMessage());
        }
    }

    public Mitarbeiter hole(int mitarbeiter_nummer) throws DAOException {
        Mitarbeiter mitarbeiter = null;
        try {
            String queryString = "SELECT * FROM mitarbeiter WHERE personalnummer=?";
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ams_fx_test", DBCredetialsSingleton.getInstance().getUsername(), DBCredetialsSingleton.getInstance().getPassword());
            ptmt = connection.prepareStatement(queryString);
            ptmt.setInt(1, mitarbeiter_nummer);
            resultSet = ptmt.executeQuery();

            int count = 0;
            while (resultSet.next()) {
                if (count > 0) {
                    // soweit sollte es bei unique PK nie kommen:
                    throw new DAOException("Der Datensatz ist nicht einzigartig.");
                }

                mitarbeiter = new Mitarbeiter(resultSet.getInt("mitarbeiter_nummer"),
                        resultSet.getString("name"),
                        resultSet.getString("vorname"),
                        resultSet.getDate("geburtsdatum"),
                        resultSet.getDate("eintrittsdatum")
                );
                count++;
            }
            if (0 == count) {
                throw new DAOException("Es ist kein Mitarbeiter mit der mitarbeiter_nummer=" + mitarbeiter_nummer + " vorhanden.");
            }

        } catch (SQLException e) {
            throw new DAOException(e.getMessage());
        } catch (Exception e) {
            e.printStackTrace(); // soweit sollte es bei bestehenden, validen Daten aus der DB nie kommen
        } finally {
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (ptmt != null) {
                    ptmt.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                throw new DAOException(e.getMessage());
            }
        }

        return mitarbeiter;
    }

    public ArrayList<Mitarbeiter> holeAlle() throws DAOException {
        ArrayList<Mitarbeiter> liste = new ArrayList<Mitarbeiter>();

        try {
            String query = "SELECT * FROM mitarbeiter";
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ams_fx_test", DBCredetialsSingleton.getInstance().getUsername(), DBCredetialsSingleton.getInstance().getPassword());
            ptmt = connection.prepareStatement(query);
            resultSet = ptmt.executeQuery();
            while (resultSet.next()) {
                Mitarbeiter mitarbeiter = new Mitarbeiter(resultSet.getInt("mitarbeiter_nummer"),
                        resultSet.getString("name"),
                        resultSet.getString("vorname"),
                        resultSet.getDate("geburtsdatum"),
                        resultSet.getDate("eintrittsdatum")
                );
                liste.add(mitarbeiter);
            }
        } catch (SQLException e) {
            throw new DAOException(e.getMessage());
        } catch (Exception e) {
            e.printStackTrace(); // soweit sollte es bei bestehenden, validen Daten aus der DB nie kommen
        } finally {
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (ptmt != null) {
                    ptmt.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                throw new DAOException(e.getMessage());
            }
        }
        return liste;
    }


    public int erstelle(Mitarbeiter mitarbeiter) throws DAOException {
        try {
            String query = "INSERT INTO raeume (bezeichnung, gebaeudenummer, laenge_in_m, breite_in_m) VALUES (?,?,?,?)";

            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ams_fx_test", DBCredetialsSingleton.getInstance().getUsername(), DBCredetialsSingleton.getInstance().getPassword());
            ptmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            int param = 0;
            ptmt.setString(++param, mitarbeiter.getName());
            ptmt.setString(++param, mitarbeiter.getVorname());
            ptmt.setDate(++param, (java.sql.Date) Date.from(mitarbeiter.getGeburtsdatum().atStartOfDay(ZoneId.systemDefault()).toInstant()));
            ptmt.setDate(++param, (java.sql.Date) Date.from(mitarbeiter.getEintrittsdatum().atStartOfDay(ZoneId.systemDefault()).toInstant()));
            ptmt.executeUpdate();

            // get the last added ID
            ResultSet rs = ptmt.getGeneratedKeys();
            if(rs.next()) {
                mitarbeiter.setMitarbeiter_nummer( rs.getInt(1) );
                return mitarbeiter.getMitarbeiter_nummer();
            }

        } catch (SQLException e) {
            throw new DAOException(e.getMessage());
        } finally {
            try {
                if (ptmt != null) {
                    ptmt.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                throw new DAOException(e.getMessage());
            }
        }
        return -1;
    }
}