package it.contrader.service;

import it.contrader.converter.AppointmentConverter;
import it.contrader.converter.UserConverter;
import it.contrader.dao.AppointmentDAO;
import it.contrader.dao.UserDAO;
import it.contrader.dto.AppointmentDTO;
import it.contrader.model.Appointment;

public class AppointmentService extends  AbstractService<Appointment, AppointmentDTO> {

    public AppointmentService(){
        this.dao = new AppointmentDAO();
        this.converter = new AppointmentConverter();
    }
}
