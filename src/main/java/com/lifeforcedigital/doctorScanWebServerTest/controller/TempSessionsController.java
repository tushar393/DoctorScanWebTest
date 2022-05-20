package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.model.TempSessions;
import com.lifeforcedigital.doctorScanWebServerTest.repository.TempSessionsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class TempSessionsController {
    @Autowired
    TempSessionsRepository tempSessionsRepository;

    @PostMapping("/addingTempSessions")
    public List<TempSessions> addingTempSessions(@RequestBody List<TempSessions> tempSessionsList){
        List<TempSessions> insertTempsessions = tempSessionsRepository.insertTempSessions(tempSessionsList);
        return insertTempsessions;
    }

    @GetMapping("/getTempSessions")
    public List<TempSessions> getTempSessions(){
        List<TempSessions> tempSessionsList = tempSessionsRepository.getTempSessions();
        return tempSessionsList;
    }
}
