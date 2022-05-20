package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.model.Sessions;
import com.lifeforcedigital.doctorScanWebServerTest.repository.SessionsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class SessionsController {

    @Autowired
    SessionsRepository sessionsRepository;

    @PostMapping("/addingSessions")
    public List<Sessions> addingSessions(@RequestBody List<Sessions> sessionsList){
        List<Sessions> insertSessions = sessionsRepository.insertSessions(sessionsList);
        return insertSessions;
    }

    @GetMapping("/getSessions")
    public List<Sessions> getSessions(){
        List<Sessions> sessionsList = sessionsRepository.getSessions();
        return sessionsList;
    }
}
