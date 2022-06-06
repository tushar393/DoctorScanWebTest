package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.dto.AppPractitionerDto;
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
    public List<AppPractitioner> addingPrac(@RequestBody AppPractitionerDto appPractitionerDto){
        List<AppPractitioner> appPractitionerList = appPractitionerDto.getData();
        List<AppPractitioner> practitionerList = appPractitionerRepository.insertPrac(appPractitionerList);
        return practitionerList;
    }

    @GetMapping
    public List<AppPractitioner> getPractitioner(){
        List<AppPractitioner> practitionerList = appPractitionerRepository.getPrac();
        return practitionerList;
    }

    @PutMapping
    public GenericResponse updateAppPractitioner(@RequestBody AppPractitionerDto appPractitionerDto) {
        GenericResponse genericResponse = new GenericResponse();
        List<AppPractitioner> appPractitionerList = appPractitionerDto.getData();
        if (appPractitionerList.isEmpty()) {
            genericResponse.setStatus(500);
            genericResponse.setMessage("Doctor List is empty");
        }
        genericResponse.setStatus(201);
        genericResponse.setMessage("Doctor List updated");
        return genericResponse;
    }
}
