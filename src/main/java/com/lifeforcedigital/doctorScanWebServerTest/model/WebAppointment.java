package com.lifeforcedigital.doctorScanWebServerTest.model;

import lombok.Data;

@Data
public class WebAppointment {
    int id;
    int apptTypeId;
    int practitionerID;
    int patientID;
    int practitioner_id;
    int patient_id;
    String description;
    String when;
    Boolean allow_new_patient;
    String bookingFor;
    String callUrl;
    String audioCallUrl;
    int practiceId;
    String deviceType;
}
