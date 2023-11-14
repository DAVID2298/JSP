package it.contrader.converter;

import it.contrader.dto.MedicalExaminationDTO;
import it.contrader.model.MedicalExamination;

import java.util.ArrayList;
import java.util.List;

public class MedicalExaminationConverter implements Converter<MedicalExamination, MedicalExaminationDTO> {
    @Override
    public MedicalExaminationDTO toDTO(MedicalExamination medicalExamination) {
        MedicalExaminationDTO medicalExaminationDTO=new MedicalExaminationDTO(
                medicalExamination.getId(),
                medicalExamination.getTypology(),
                medicalExamination.getCost(),
                medicalExamination.getCode(),
                medicalExamination.getImg());
        return medicalExaminationDTO;
    }

    @Override
    public MedicalExamination toEntity(MedicalExaminationDTO medicalExaminationDTO) {
        MedicalExamination medicalExamination=new MedicalExamination(
                medicalExaminationDTO.getId(),
                medicalExaminationDTO.getTypology(),
                medicalExaminationDTO.getCost(),
                medicalExaminationDTO.getCode(),
                medicalExaminationDTO.getImg());
        return medicalExamination;
    }

    @Override
    public List<MedicalExaminationDTO> toDTOList(List<MedicalExamination> medicalExaminationList) {
        List<MedicalExaminationDTO> medicalExaminationDTOList = new ArrayList<MedicalExaminationDTO>();

        for(MedicalExamination medicalExamination : medicalExaminationList) {
            medicalExaminationDTOList.add(toDTO(medicalExamination));
        }
        return medicalExaminationDTOList;
    }
}