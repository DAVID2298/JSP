package it.contrader.converter;

import it.contrader.dto.AppointmentDTO;
import it.contrader.dto.UserDTO;
import it.contrader.model.Appointment;
import it.contrader.model.User;

import java.util.ArrayList;
import java.util.List;

public class AppointmentConverter implements Converter<Appointment, AppointmentDTO> {

    @Override
    public AppointmentDTO toDTO(Appointment appointment){
        AppointmentDTO appointmentDTO= new AppointmentDTO(
                appointment.getId(),
                appointment.getDate(),
                appointment.getHour(),
                appointment.getCost(),
                appointment.getDemand(),
                appointment.getUser_id(),
                appointment.getId_ME()
        );
        return appointmentDTO;
    }

    @Override
    public Appointment toEntity(AppointmentDTO appointmentDTO){
        Appointment appointment= new Appointment(
                appointmentDTO.getId(),
                appointmentDTO.getDate(),
                appointmentDTO.getHour(),
                appointmentDTO.getCost(),
                appointmentDTO.getDemand(),
                appointmentDTO.getUser_id(),
                appointmentDTO.getId_ME()
        );
        return appointment;
    }

    @Override
    public List<AppointmentDTO> toDTOList(List<Appointment> appointmentList) {
        List<AppointmentDTO> appointmentDTOList = new ArrayList<AppointmentDTO>();

        for(Appointment appointment : appointmentList) {
            appointmentDTOList.add(toDTO(appointment));
        }
        return appointmentDTOList;
    }
}