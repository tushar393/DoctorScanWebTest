package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.dto.FetchClinicsDto;
import com.lifeforcedigital.doctorScanWebServerTest.model.*;
import com.lifeforcedigital.doctorScanWebServerTest.repository.AppPractitionerRepository;
import com.lifeforcedigital.doctorScanWebServerTest.repository.PatientDetailsRepository;
import com.lifeforcedigital.doctorScanWebServerTest.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@RestController
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

    @GetMapping("/api/v1/new-staging-test-data")
    public GenericResponse getUsers() throws SQLException {
        StaggingResponseIds staggingResponseIds = new StaggingResponseIds();
        AppPractitioner appPractitioner = new AppPractitioner(1, 1, 1, 1, null, null, "Dr I Feelgood", "feelgood.samples@hcn.com.au", "1300 788 802", "A");
        Patient patient = new Patient(3, null, "Heather", null, "ANDREWS", "1963-05-12 00:00:00.000", "F", null, null, "1300 788 802", "234 George Street", null, null, "Bundaberg", "4670", "andrews.h@hcn.sampledb.com.au", "3500265121", null, null, "F", null, null, null, 2);
        List<AppPractitioner> appPractitionerUserList = usersRepository.insertUsers(List.of(appPractitioner));
        staggingResponseIds.setDoctorId(appPractitionerUserList.get(0).getId());
        List<AppPractitioner> appPractitionerList = appPractitionerRepository.insertPrac(appPractitionerUserList);
       staggingResponseIds.setAppPractisonarId(appPractitionerList.get(0).getId());
        List<Patient> patientList = patientDetailsRepository.insertPatientDetails(List.of(patient));
        staggingResponseIds.setPatientId(patientList.get(0).getId());
        GenericResponse genericResponse = new GenericResponse();
        genericResponse.setStatus(201);
        genericResponse.setSuccess(true);
        genericResponse.setData(staggingResponseIds);
        genericResponse.setMessage("New Data Created");
        return genericResponse;
    }

    @GetMapping("/admin/user/list")
    public HashMap<String,Object> getClinics(@RequestParam("user_type") int user_type,
                                             @RequestParam("page") int page,
                                             @RequestParam("perPage") int perPage){
        HashMap<String,Object> objectMap = new HashMap<String,Object>();
        HashMap<String,Integer> objectIntMap = new HashMap<String,Integer>();
        //Just select those users whose user_type is 4 , i.e clicnics
        List<Users> usersList = usersRepository.getUsers();
        List<FetchClinics> fetchClinicsList = new ArrayList<>();
        for (Users users : usersList){
            FetchClinics fetchClinics = new FetchClinics();
            fetchClinics.setId(users.getId());
            fetchClinics.setName(users.getName());
            fetchClinics.setEmail(users.getEmail());
            fetchClinics.setToken("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwidXNlclR5cGUiOjQsInRva2VuVHlwZSI6ImF1dGhUb2tlbiIsImlhdCI6MTY1NDY4Mzc4MiwiZXhwIjoxNjg2MjE5NzgyfQ.J6-nnF7Mdv1J_VIkMiQlQEn-dB9fJmpPGZ6FlX46mu8");
            fetchClinicsList.add(fetchClinics);
        }
        objectIntMap.put("perPage",200);
        objectIntMap.put("page",1);
        objectIntMap.put("totalCount",3);

        objectMap.put("status","success");
        objectMap.put("data",fetchClinicsList);
        objectMap.put("pagination",objectIntMap);

        return objectMap;
    }
}
