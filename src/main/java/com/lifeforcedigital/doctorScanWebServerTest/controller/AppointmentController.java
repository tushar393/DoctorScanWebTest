package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.model.AppPractitioner;
import com.lifeforcedigital.doctorScanWebServerTest.model.Appointment;
import com.lifeforcedigital.doctorScanWebServerTest.repository.AppPractitionerRepository;
import com.lifeforcedigital.doctorScanWebServerTest.repository.AppointmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.sql.SQLException;
import java.util.List;
@RestController
public class AppointmentController {
    @Autowired
    AppointmentRepository appointmentRepository;

    @PostMapping("/addAppointment")
    public List<Appointment> addingPrac(@RequestBody List<Appointment> appointmentList) throws SQLException {
        List<Appointment> appointments = appointmentRepository.insertAppointment(appointmentList);
        return appointments;
    }

    @GetMapping("/getAppointment")
    public List<Appointment> getAppointments(){
        List<Appointment> getAppointmentList = appointmentRepository.getAppointment();
        return getAppointmentList;
    }
}
