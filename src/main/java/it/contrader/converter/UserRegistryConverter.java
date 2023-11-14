package it.contrader.converter;

import it.contrader.dto.UserRegistryDTO;
import it.contrader.model.UserRegistry;

import java.util.ArrayList;
import java.util.List;

public class UserRegistryConverter implements Converter<UserRegistry, UserRegistryDTO>{
    @Override
    public UserRegistryDTO toDTO(UserRegistry userRegistry) {
        UserRegistryDTO userRegistryDTO = new UserRegistryDTO(
                userRegistry.getId(),
                userRegistry.getAddress(),
                userRegistry.getName(),
                userRegistry.getSurname(),
                userRegistry.getBirthDate(),
                userRegistry.getUserId());
        return userRegistryDTO;
    }

    @Override
    public UserRegistry toEntity(UserRegistryDTO userRegistryDTO) {
        UserRegistry userRegistry = new UserRegistry(
                userRegistryDTO.getId(),
                userRegistryDTO.getAddress(),
                userRegistryDTO.getName(),
                userRegistryDTO.getSurname(),
                userRegistryDTO.getBirthDate(),
                userRegistryDTO.getUserId());
        return userRegistry;
    }

    @Override
    public List<UserRegistryDTO> toDTOList(List<UserRegistry> userRegistryList) {
        List<UserRegistryDTO> userRegistryDTOList = new ArrayList<UserRegistryDTO>();

        for(UserRegistry userRegistry : userRegistryList) {
            userRegistryDTOList.add(toDTO(userRegistry));
        }
        return userRegistryDTOList;
    }
}
