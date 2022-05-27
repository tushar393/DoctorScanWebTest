package com.lifeforcedigital.doctorScanWebServerTest.dao;

import com.lifeforcedigital.doctorScanWebServerTest.model.Patient;
import com.lifeforcedigital.doctorScanWebServerTest.model.Users;

import java.sql.SQLException;
import java.util.List;

public interface PatientDetailsDao {
    List<Patient> insertPatientDetails(List<Patient> patientDetails) throws SQLException;
    List<Users> fetchPatientDetails();
}
