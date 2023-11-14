package it.contrader.dao;

import it.contrader.utils.ConnectionSingleton;

import java.sql.*;

public class RegisterDAO {

    private final String QUERY_REGISTER_1 = "INSERT INTO user (username, usertype, password) VALUES (?,?,?)";
    private final String QUERY_REGISTER_2 = "INSERT INTO user_anagrafico (nome, cognome, indirizzo, data_di_nascita,user_id) VALUES (?,?,?,?,?)";
    private final String QUERY_REGISTER_3 = "INSERT INTO anagrafica_hospital (nome, indirizzo, nazione, provincia, citta, descrizione, user_id) VALUES (?,?,?,?,?,?,?)";

    public void registerAdmin (String username, String usertype,String password, String nome, String cognome,String indirizzo, String dataNascita, String name, String address, String nation, String province, String city, String description) {

        Connection connection = ConnectionSingleton.getInstance();
        try {
            PreparedStatement statement1 = connection.prepareStatement(QUERY_REGISTER_1, Statement.RETURN_GENERATED_KEYS);

            statement1.setString(1, username);
            statement1.setString(2, usertype);
            statement1.setString(3, password);

            statement1.executeUpdate();

            ResultSet generatedKeys = statement1.getGeneratedKeys();
            int userId = -1;
            if (generatedKeys.next()) {
                userId = generatedKeys.getInt(1);
            } else {
                throw new SQLException("Failed to retrieve user ID.");
            }


            PreparedStatement statement2 = connection.prepareStatement(QUERY_REGISTER_2);


            statement2.setString(1, nome);
            statement2.setString(2, cognome);
            statement2.setString(3, indirizzo);
            statement2.setString(4, dataNascita);
            statement2.setInt(5, userId);

            statement2.execute();


            PreparedStatement statement3 = connection.prepareStatement(QUERY_REGISTER_3);

            statement3.setString(1, name);
            statement3.setString(2, address);
            statement3.setString(3, nation);
            statement3.setString(4, province);
            statement3.setString(5, city);
            statement3.setString(6, description);
            statement3.setInt(7, userId);

            statement3.execute();


        }
        catch (SQLException e) {

        }
    }

    public void registerUser (String username, String usertype, String password, String nome, String cognome,String indirizzo, String dataNascita) {

        Connection connection = ConnectionSingleton.getInstance();
        try {
            PreparedStatement statement1 = connection.prepareStatement(QUERY_REGISTER_1, Statement.RETURN_GENERATED_KEYS);

            statement1.setString(1, username);
            statement1.setString(2, usertype);
            statement1.setString(3, password);

            statement1.executeUpdate();

            ResultSet generatedKeys = statement1.getGeneratedKeys();
            int userId = -1;
            if (generatedKeys.next()) {
                userId = generatedKeys.getInt(1);
            } else {
                throw new SQLException("Failed to retrieve user ID.");
            }


            PreparedStatement statement2 = connection.prepareStatement(QUERY_REGISTER_2);

            statement2.setString(1, nome);
            statement2.setString(2, cognome);
            statement2.setString(3, indirizzo);
            statement2.setString(4, dataNascita);
            statement2.setInt(5, userId);

            statement2.execute();
        }
        catch (SQLException e) {

        }
    }
}