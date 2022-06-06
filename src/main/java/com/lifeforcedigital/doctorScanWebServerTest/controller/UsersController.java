package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.model.AppPractitioner;
import com.lifeforcedigital.doctorScanWebServerTest.model.GenericResponse;
import com.lifeforcedigital.doctorScanWebServerTest.model.Patient;
import com.lifeforcedigital.doctorScanWebServerTest.model.StaggingResponseIds;
import com.lifeforcedigital.doctorScanWebServerTest.repository.AppPractitionerRepository;
import com.lifeforcedigital.doctorScanWebServerTest.repository.PatientDetailsRepository;
import com.lifeforcedigital.doctorScanWebServerTest.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.SQLException;
import java.util.List;

@RestController
@RequestMapping("/api/v1/")
public class UsersController {
    @Autowired
    UsersRepository usersRepository;
    @Autowired
    PatientDetailsRepository patientDetailsRepository;
    @Autowired
    AppPractitionerRepository appPractitionerRepository;

//    @PostMapping("/addingUsers")
//    public List<Users> addingUsers(@RequestBody List<Users> usersList){
//        List<Users> insertUsers = usersRepository.insertUsers(usersList);
//        return insertUsers;
//    }

    @GetMapping("/new-staging-test-data")
    public GenericResponse getUsers() throws SQLException {
        AppPractitioner appPractitioner = new AppPractitioner(1, 1, 1, 1, null, null, "Dr I Feelgood", "feelgood.samples@hcn.com.au", "1300 788 802", "A");
        Patient patient = new Patient(3, null, "Heather", null, "ANDREWS", "1963-05-12 00", "F", null, null, "1300 788 802", "234 George Street", null, null, "Bundaberg", "4670", "andrews.h@hcn.sampledb.com.au", "3500265121", null, null, "F", null, null, null, 2);
        List<AppPractitioner> appPractitionerUserList = usersRepository.insertUsers(List.of(appPractitioner));
        List<AppPractitioner> appPractitionerList = appPractitionerRepository.insertPrac(appPractitionerUserList);
        List<Patient> patientList = patientDetailsRepository.insertPatientDetails(List.of(patient));
        StaggingResponseIds staggingResponseIds = new StaggingResponseIds(patientList.get(0).getId(), appPractitionerUserList.get(0).getId(), appPractitionerList.get(0).getId());
        GenericResponse genericResponse = new GenericResponse();
        genericResponse.setStatus(201);
        genericResponse.setData(staggingResponseIds);
        genericResponse.setMessage("New Data Created");
        return genericResponse;
    }
}
