package it.contrader.service;

import it.contrader.converter.MedicalExaminationConverter;
import it.contrader.dao.MedicalExaminationDAO;
import it.contrader.dto.MedicalExaminationDTO;
import it.contrader.model.MedicalExamination;

public class MedicalExaminationService extends AbstractService<MedicalExamination, MedicalExaminationDTO>{

    //Istanzio DAO  e Converter specifici.
    public MedicalExaminationService(){
        this.dao = new MedicalExaminationDAO();
        this.converter = new MedicalExaminationConverter();
    }


}