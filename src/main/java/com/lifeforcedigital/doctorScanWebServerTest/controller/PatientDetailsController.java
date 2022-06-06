package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.dto.PatientDto;
import com.lifeforcedigital.doctorScanWebServerTest.model.GenericResponse;
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
    public List<Patient> addingPatientDetails(@RequestBody PatientDto patientDto) throws SQLException {
        List<Patient> patientList = patientDto.getData();
        List<Patient> patientDetails = patientDetailsRepository.insertPatientDetails(patientList);
        return patientDetails;
    }

    @GetMapping
    public GenericResponse getPatientDetails() {
        List<Users> patientList = patientDetailsRepository.getPatientDetails();
        GenericResponse genericResponse = new GenericResponse();
        genericResponse.setSuccess("Success");
        genericResponse.setMessage("Ok");
        genericResponse.setData(patientList);
        return genericResponse;
    }
}
