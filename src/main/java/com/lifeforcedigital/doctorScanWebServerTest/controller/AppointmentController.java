package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.dto.AppointmentDto;
import com.lifeforcedigital.doctorScanWebServerTest.dto.WebAppointmentDto;
import com.lifeforcedigital.doctorScanWebServerTest.model.Appointment;
import com.lifeforcedigital.doctorScanWebServerTest.model.GenericResponse;
import com.lifeforcedigital.doctorScanWebServerTest.model.WebAppointment;
import com.lifeforcedigital.doctorScanWebServerTest.repository.AppointmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;
import java.util.List;

@RestController
@RequestMapping("/api/v1")
public class AppointmentController {
    @Autowired
    AppointmentRepository appointmentRepository;

    @PostMapping("/sync-appointments")
    public List<Appointment> addingPrac(@RequestBody AppointmentDto appointmentDto) throws SQLException {
        List<Appointment> appointmentList = appointmentDto.getData();
        List<Appointment> appointments = appointmentRepository.insertAppointment(appointmentList);
        return appointments;
    }

    @GetMapping("/sync-appointments")
    public List<Appointment> getAppointments(){
        List<Appointment> getAppointmentList = appointmentRepository.getAppointment();
        return getAppointmentList;
    }

    @PostMapping("/appointment")
    public WebAppointmentDto webAppointment(@RequestBody WebAppointment webAppointment){
        WebAppointmentDto webAppointmentDto = new WebAppointmentDto();
        WebAppointment webAppointment1 = appointmentRepository.insertWebAppointment(webAppointment);
        webAppointmentDto.setData(webAppointment1);
        return webAppointmentDto;
    }
}
