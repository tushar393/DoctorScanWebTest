package com.lifeforcedigital.doctorScanWebServerTest.model;

import lombok.Data;

@Data
public class Patient {
    int id;
//    int patientId;
//    String medicareNumber;
//    String medicareIndex;
//    String medicareExpDate;
//    String medicareGender;
//    String insuranceNumber;
//    String insuranceCompanyID;
//    String insuranceType;

    private int patientID;
    private String title;
    private String firstName ;
    private String middleName ;
    private String surname ;
    private String dob;
    private String gender ;
    private String phnHome ;
    private String phnWork ;
    private String phnMobile;
    private String street1 ;
    private String street2;
    private String street3 ;
    private String city;
    private String postcode ;
    private String email;
    private String medicareNumber;
    private String medicareIndex;
    private String medicareExpDate ;
    private String medicareGender ;
    private String insuranceNumber ;
    private String insuranceCompanyId ;
    private String insuranceType ;
    private int stampUserId = 2;
}
