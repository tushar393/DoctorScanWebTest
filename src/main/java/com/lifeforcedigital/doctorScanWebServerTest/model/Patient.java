package com.lifeforcedigital.doctorScanWebServerTest.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
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

    public Patient(int patientID, String title, String firstName, String middleName, String surname, String dob, String gender, String phnHome, String phnWork, String phnMobile, String street1, String street2, String street3, String city, String postcode, String email, String medicareNumber, String medicareIndex, String medicareExpDate, String medicareGender, String insuranceNumber, String insuranceCompanyId, String insuranceType, int stampUserId) {
        this.patientID = patientID;
        this.title = title;
        this.firstName = firstName;
        this.middleName = middleName;
        this.surname = surname;
        this.dob = dob;
        this.gender = gender;
        this.phnHome = phnHome;
        this.phnWork = phnWork;
        this.phnMobile = phnMobile;
        this.street1 = street1;
        this.street2 = street2;
        this.street3 = street3;
        this.city = city;
        this.postcode = postcode;
        this.email = email;
        this.medicareNumber = medicareNumber;
        this.medicareIndex = medicareIndex;
        this.medicareExpDate = medicareExpDate;
        this.medicareGender = medicareGender;
        this.insuranceNumber = insuranceNumber;
        this.insuranceCompanyId = insuranceCompanyId;
        this.insuranceType = insuranceType;
        this.stampUserId = stampUserId;
    }
}
