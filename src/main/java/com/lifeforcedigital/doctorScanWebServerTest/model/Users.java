package com.lifeforcedigital.doctorScanWebServerTest.model;

import lombok.Data;

@Data
public class Users {
    int id;
    int parentId;
    String title;
    String firstName;
    String middleName;
    String surname;
    String name;
    int patientId;
    String email;
    String phone;
    String business_logo;
    String business_name;
    int waitingmusic;
    String dob;
    String gender;
    String country;
    String region;
    String city;
    String street1;
    String street2;
    String street3;
    String suite;
    String house;
    String postcode;
    String phnHome;
    String phnWork;
    String countryCode;
    String phnMobile;
    String phnTwilio;
    String faxTwilio;
    String profile_image;
    String social_id;
    String website;
    String accreditation;
    String fbLink;
    String twitterLink;
    String instagramLink;
    Boolean wheelChairAccess;
    String teleHealthOnly;
    String facilities;
    String paymentMethods;
    String billingType;
    String billingPolicy;
    String bulkBilling;
    String directionsParking;
    String alertMessage;
    int login_type;
    String about;
    String password;
    String profession;
    int professionid;
    String qualifications;
    String education;
    String areas_of_Interest;
    String professional_statement;
    Boolean allowPatienttoBookStatus;
    int patientApointmentFutureDays;
    Boolean onlineBookingVisibleStatus;
    Boolean tellNewPatientStatus;
    String latitude;
    String bg_color;
    String fg_color;
    int availableForVideo;
    int availableForAudio;
    String location;
    String longitude;
    String stripeAccountId;
    Boolean stripeVerified;

    int available_status;
    String reference;
    String medicareNumber;
    String expiryDate;
    int status;
    String registrationStatus;
    int user_type;
    //createdAt
    //updatedAt
    String regPageIndex;
    String countryShort;
    String language;
}
