package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.dto.AppointmentDto;
import com.lifeforcedigital.doctorScanWebServerTest.model.Appointment;
import com.lifeforcedigital.doctorScanWebServerTest.model.GenericResponse;
import com.lifeforcedigital.doctorScanWebServerTest.repository.AppointmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;
import java.util.List;

@RestController
@RequestMapping("/api/v1/sync-appointments")
public class AppointmentController {
    @Autowired
    AppointmentRepository appointmentRepository;

    @PostMapping
    public List<Appointment> addingPrac(@RequestBody AppointmentDto appointmentDto) throws SQLException {
        List<Appointment> appointmentList = appointmentDto.getData();
        List<Appointment> appointments = appointmentRepository.insertAppointment(appointmentList);
        return appointments;
    }

    @GetMapping
    public List<Appointment> getAppointments(){
        List<Appointment> getAppointmentList = appointmentRepository.getAppointment();
        return getAppointmentList;
    }
    //put
}
