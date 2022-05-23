package com.lifeforcedigital.doctorScanWebServerTest.model;

import lombok.Data;

@Data
public class PatientDetails {
    int id;
    int patientId;
    String medicareNumber;
    String medicareIndex;
    String medicareExpDate;
    String medicareGender;
    String insuranceNumber;
    String insuranceCompanyID;
    String insuranceType;
}
