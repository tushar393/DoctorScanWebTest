package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.dto.SessionDto;
import com.lifeforcedigital.doctorScanWebServerTest.model.GenericResponse;
import com.lifeforcedigital.doctorScanWebServerTest.model.Sessions;
import com.lifeforcedigital.doctorScanWebServerTest.repository.SessionsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/sync-sessions")
public class SessionsController {

    @Autowired
    SessionsRepository sessionsRepository;

    @PostMapping
    public List<Sessions> addingSessions(@RequestBody SessionDto sessionDto){
        List<Sessions> sessionsList = sessionDto.getData();
        List<Sessions> insertSessions = sessionsRepository.insertSessions(sessionsList);
        return insertSessions;
    }

    @GetMapping
    public List<Sessions> getSessions(){
        List<Sessions> sessionsList = sessionsRepository.getSessions();
        return sessionsList;
    }

    @PutMapping
    public GenericResponse updateSession(@RequestBody SessionDto sessionDto) {
        GenericResponse genericResponse = new GenericResponse();
        List<Sessions> sessionsList = sessionDto.getData();
        if (sessionsList.isEmpty()) {
            genericResponse.setStatus(500);
            genericResponse.setMessage("Sessions List is empty");
        }
        genericResponse.setStatus(200);
        genericResponse.setMessage("Sessions List updated");
        return genericResponse;
    }
}
