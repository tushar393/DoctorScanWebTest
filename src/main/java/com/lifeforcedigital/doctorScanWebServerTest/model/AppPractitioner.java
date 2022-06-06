package com.lifeforcedigital.doctorScanWebServerTest.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
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

    public AppPractitioner(int userId, int apptBookID, int pracID, int practitionerID, String practitioner, String location, String name, String email, String phoneNo, String status) {
        this.userId = userId;
        this.apptBookID = apptBookID;
        this.pracID = pracID;
        this.practitionerID = practitionerID;
        this.practitioner = practitioner;
        this.location = location;
        this.name = name;
        this.email = email;
        this.phoneNo = phoneNo;
        this.status = status;
    }
}
