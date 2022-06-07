package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.dto.AppointmentDto;
import com.lifeforcedigital.doctorScanWebServerTest.model.Appointment;
import com.lifeforcedigital.doctorScanWebServerTest.model.GenericResponse;
import com.lifeforcedigital.doctorScanWebServerTest.model.WebAppointment;
import com.lifeforcedigital.doctorScanWebServerTest.repository.AppointmentRepository;
import com.lifeforcedigital.doctorScanWebServerTest.repository.CancelAppointmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/v1")
public class AppointmentController {
    @Autowired
    AppointmentRepository appointmentRepository;
    @Autowired
    CancelAppointmentRepository cancelAppointmentRepository;


    @PostMapping("/sync-appointments")
    public List<Appointment> addingPrac(@RequestBody AppointmentDto appointmentDto) throws SQLException {
        List<Appointment> appointmentList = appointmentDto.getData();
        List<Appointment> appointments = appointmentRepository.insertAppointment(appointmentList);
        return appointments;
    }

    @GetMapping("/sync-appointments")
    public AppointmentDto getAppointments() {
        List<Appointment> getAppointmentList = appointmentRepository.getAppointment();
        AppointmentDto appointmentDto = new AppointmentDto();
        appointmentDto.setData(getAppointmentList);
        return appointmentDto;
    }

    @PostMapping("/appointment")
    public GenericResponse webAppointment(@RequestBody WebAppointment webAppointment) {
//        WebAppointmentDto webAppointmentDto = new WebAppointmentDto();

        ArrayList<Integer> arr = new ArrayList();
        WebAppointment webAppointment1 = appointmentRepository.insertWebAppointment(webAppointment);
//        webAppointmentDto.setData(webAppointment1);
        GenericResponse genericResponse = new GenericResponse();
        genericResponse.setSuccess(true);
        genericResponse.setMessage("Created successfully");
//        Integer[] in = new Integer[5];
        arr.add(webAppointment1.getId());
        genericResponse.setData(arr);
//        {"success":true,"message":"Created successfully","data":[1065]}
        return genericResponse;
    }

    @PutMapping("/appointment/changestatus/{webid}")
    public GenericResponse webCancelAppointment(@PathVariable int webid, @RequestBody GenericResponse genericResponse) {
        appointmentRepository.updateWebAppointment(webid, genericResponse.getStatus());
        return genericResponse;
    }
}
