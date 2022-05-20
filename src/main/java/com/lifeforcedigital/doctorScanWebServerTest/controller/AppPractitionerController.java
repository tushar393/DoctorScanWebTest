package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.model.AppPractitioner;
import com.lifeforcedigital.doctorScanWebServerTest.repository.AppPractitionerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class AppPractitionerController {
    @Autowired
    AppPractitionerRepository appPractitionerRepository;

    @PostMapping("/addingPrac")
    public List<AppPractitioner> addingPrac(@RequestBody List<AppPractitioner> appPractitionerList){
        List<AppPractitioner> practitionerList = appPractitionerRepository.insertPrac(appPractitionerList);
        return practitionerList;
    }

    @GetMapping("/getPractitioner")
    public List<AppPractitioner> getPractitioner(){
        List<AppPractitioner> practitionerList = appPractitionerRepository.getPrac();
        return practitionerList;
    }
}
