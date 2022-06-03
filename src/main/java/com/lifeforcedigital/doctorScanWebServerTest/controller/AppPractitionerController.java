package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.model.AppPractitioner;
import com.lifeforcedigital.doctorScanWebServerTest.model.GenericResponse;
import com.lifeforcedigital.doctorScanWebServerTest.repository.AppPractitionerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/sync-practitioners")
public class AppPractitionerController {
    @Autowired
    AppPractitionerRepository appPractitionerRepository;

    @PostMapping
    public List<AppPractitioner> addingPrac(@RequestBody List<AppPractitioner> appPractitionerList){
        List<AppPractitioner> practitionerList = appPractitionerRepository.insertPrac(appPractitionerList);
        return practitionerList;
    }

    @GetMapping
    public List<AppPractitioner> getPractitioner(){
        List<AppPractitioner> practitionerList = appPractitionerRepository.getPrac();
        return practitionerList;
    }

    @PutMapping
    public GenericResponse updateAppPractitioner(@RequestBody List<AppPractitioner> appPractitionerList) {
        GenericResponse genericResponse = new GenericResponse();
        if (appPractitionerList.isEmpty()) {
            genericResponse.setStatus(500);
            genericResponse.setMsg("Doctor List is empty");
        }
        genericResponse.setStatus(201);
        genericResponse.setMsg("Doctor List updated");
        return genericResponse;
    }
}
