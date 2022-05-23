package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.model.PatientDetails;
import com.lifeforcedigital.doctorScanWebServerTest.repository.PatientDetailsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class PatientDetailsController {

    @Autowired
    PatientDetailsRepository patientDetailsRepository;

    @PostMapping("/addingPatientDetails")
    public List<PatientDetails> addingPatientDetails(@RequestBody List<PatientDetails> patientDetailsList){
        List<PatientDetails> patientDetails = patientDetailsRepository.insertPatientDetails(patientDetailsList);
        return patientDetails;
    }

    @GetMapping("/getPatientDetails")
    public List<PatientDetails> getPatientDetails(){
        List<PatientDetails> patientDetailsList = patientDetailsRepository.getPatientDetails();
        return patientDetailsList;
    }
}
