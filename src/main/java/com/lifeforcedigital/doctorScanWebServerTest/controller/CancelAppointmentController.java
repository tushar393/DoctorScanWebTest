package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.model.CancelAppointment;
import com.lifeforcedigital.doctorScanWebServerTest.repository.CancelAppointmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;
import java.util.List;

@RestController
@RequestMapping("/api/v1/sync-cancel-appointments")
public class CancelAppointmentController {
    @Autowired
    CancelAppointmentRepository cancelAppointmentRepository;

    @PutMapping
    public List<CancelAppointment> updateCancelAppointment(@RequestBody List<CancelAppointment> cancelAppointmentList) throws SQLException {
        List<CancelAppointment> cancelAppointments = cancelAppointmentRepository.insertCancelAppointment(cancelAppointmentList);
        return cancelAppointments;
    }

    @GetMapping
    public List<CancelAppointment> getCancelAppointment(){
        List<CancelAppointment> cancelAppointmentList = cancelAppointmentRepository.getCancelAppointment();
        return cancelAppointmentList;
    }
}
