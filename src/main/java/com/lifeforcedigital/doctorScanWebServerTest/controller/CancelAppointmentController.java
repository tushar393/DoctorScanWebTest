package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.dto.CancelAppointmentDto;
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
    public List<CancelAppointment> updateCancelAppointment(@RequestBody CancelAppointmentDto cancelAppointmentDto) throws SQLException {
        List<CancelAppointment> cancelAppointmentList = cancelAppointmentDto.getData();
        List<CancelAppointment> cancelAppointments = cancelAppointmentRepository.insertCancelAppointment(cancelAppointmentList);
        return cancelAppointments;
    }
    @PostMapping
    public List<CancelAppointment> addCancelAppointment(@RequestBody CancelAppointmentDto cancelAppointmentDto) throws SQLException {
        List<CancelAppointment> cancelAppointmentList = cancelAppointmentDto.getData();
        List<CancelAppointment> cancelAppointments = cancelAppointmentRepository.insertCancelAppointment(cancelAppointmentList);
        return cancelAppointments;
    }

    @GetMapping
    public CancelAppointmentDto getCancelAppointment(){
        CancelAppointmentDto cancelAppointmentDto=new CancelAppointmentDto();
        List<CancelAppointment> cancelAppointmentList = cancelAppointmentRepository.getCancelAppointment();
        cancelAppointmentDto.setData(cancelAppointmentList);
        return cancelAppointmentDto;
    }
}
