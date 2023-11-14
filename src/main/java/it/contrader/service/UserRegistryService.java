package it.contrader.service;

import it.contrader.converter.UserRegistryConverter;
import it.contrader.dao.UserRegistryDAO;
import it.contrader.dto.UserRegistryDTO;
import it.contrader.model.UserRegistry;

public class UserRegistryService extends AbstractService<UserRegistry, UserRegistryDTO> {

    public UserRegistryService(){
        this.dao=new UserRegistryDAO();
        this.converter= new UserRegistryConverter();
    }
}
