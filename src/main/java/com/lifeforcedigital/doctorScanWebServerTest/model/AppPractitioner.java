package com.lifeforcedigital.doctorScanWebServerTest.model;

import lombok.Data;

@Data
public class AppPractitioner {
    int id;
    int userId;
    int apptBookID;
    int pracID;
    int practitionerID;
    String practitioner;
    String location;
    String name;
    String email;
    String phoneNo;
    String status;
}
