package it.contrader.service;

import it.contrader.converter.HospitalRegistryConverter;
import it.contrader.dao.HospitalRegistryDAO;
import it.contrader.dto.HospitalRegistryDTO;
import it.contrader.model.HospitalRegistry;

public class HospitalRegistryService extends  AbstractService<HospitalRegistry,HospitalRegistryDTO> {
    public HospitalRegistryService() {
        this.dao = new HospitalRegistryDAO();
        this.converter = new HospitalRegistryConverter();
    }
}