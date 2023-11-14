package it.contrader.service;

import it.contrader.dao.RegisterDAO;

import java.sql.Date;

public class RegisterService {

    private final RegisterDAO registerDAO;

    public RegisterService() {
        this.registerDAO = new RegisterDAO();
    }

    public void registerAdmin (String username, String usertype,String password, String nome, String cognome,String indirizzo, String dataNascita, String name, String address, String nation, String province, String city, String description) {
        this.registerDAO.registerAdmin(username, usertype,password, nome, cognome, indirizzo, dataNascita, address, address, nation, province, city, description);
    }

    public void registerUser (String username, String usertype, String password, String nome, String cognome,String indirizzo, String dataNascita) {
        this.registerDAO.registerUser(username, usertype, password, nome, cognome, indirizzo, dataNascita);
    }
}