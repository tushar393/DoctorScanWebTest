package com.lifeforcedigital.doctorScanWebServerTest.dao;

import com.lifeforcedigital.doctorScanWebServerTest.model.PatientDetails;

import java.util.List;

public interface PatientDetailsDao {
    List<PatientDetails> insertPatientDetails(List<PatientDetails> patientDetails);
    List<PatientDetails> fetchPatientDetails();
}
