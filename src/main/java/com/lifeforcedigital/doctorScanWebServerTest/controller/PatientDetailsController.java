package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.model.Patient;
import com.lifeforcedigital.doctorScanWebServerTest.model.Users;
import com.lifeforcedigital.doctorScanWebServerTest.repository.PatientDetailsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;
import java.util.List;

@RestController
@RequestMapping("/api/v1/sync-patients")
public class PatientDetailsController {

    @Autowired
    PatientDetailsRepository patientDetailsRepository;

    @PostMapping
    public List<Patient> addingPatientDetails(@RequestBody List<Patient> patientList) throws SQLException {
        List<Patient> patientDetails = patientDetailsRepository.insertPatientDetails(patientList);
        return patientDetails;
    }

    @GetMapping
    public List<Users> getPatientDetails(){
        List<Users> patientList = patientDetailsRepository.getPatientDetails();
        return patientList;
    }
}
