package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.model.CancelAppointment;
import com.lifeforcedigital.doctorScanWebServerTest.repository.CancelAppointmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.sql.SQLException;
import java.util.List;

@RestController
public class CancelAppointmentController {
    @Autowired
    CancelAppointmentRepository cancelAppointmentRepository;

    @PostMapping("/updateCancelAppointment")
    public List<CancelAppointment> updateCancelAppointment(@RequestBody List<CancelAppointment> cancelAppointmentList) throws SQLException {
        List<CancelAppointment> cancelAppointments = cancelAppointmentRepository.insertCancelAppointment(cancelAppointmentList);
        return cancelAppointments;
    }

    @GetMapping("/getCancelAppointment")
    public List<CancelAppointment> getCancelAppointment(){
        List<CancelAppointment> cancelAppointmentList = cancelAppointmentRepository.getCancelAppointment();
        return cancelAppointmentList;
    }
}
