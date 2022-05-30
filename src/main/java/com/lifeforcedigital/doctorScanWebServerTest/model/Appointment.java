package com.lifeforcedigital.doctorScanWebServerTest.model;

import lombok.Data;

@Data
public class Appointment {
    private int id;
    private int apptID;
    private int practitionerID;
    private int patientID;

    private String urNo;
    private int apptTypeId;
    private String description;
    private String when;
    private int flag;
    private String user;
    private String dts;
    private int lockId;

    private int apptBookID;
    private String timeInWaitRoom;
    private String timeInConsult;
    private String timeGone;
    private String almsExportDate;
    private String rowVersion;
    private String apptGuuId;
    private int arrived;
    private int smsFlag;

    private Patient patient;
}
