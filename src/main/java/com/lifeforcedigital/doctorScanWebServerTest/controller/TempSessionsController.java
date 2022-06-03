package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.dto.TempSessionDto;
import com.lifeforcedigital.doctorScanWebServerTest.model.GenericResponse;
import com.lifeforcedigital.doctorScanWebServerTest.model.TempSessions;
import com.lifeforcedigital.doctorScanWebServerTest.repository.TempSessionsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/sync-temp-sessions")
public class TempSessionsController {
    @Autowired
    TempSessionsRepository tempSessionsRepository;

    @PostMapping
    public List<TempSessions> addingTempSessions(@RequestBody TempSessionDto tempSessionDto){
        List<TempSessions> tempSessionsList = tempSessionDto.getData();
        List<TempSessions> insertTempsessions = tempSessionsRepository.insertTempSessions(tempSessionsList);
        return insertTempsessions;
    }

    @GetMapping
    public List<TempSessions> getTempSessions(){
        List<TempSessions> tempSessionsList = tempSessionsRepository.getTempSessions();
        return tempSessionsList;
    }

    @PutMapping
    public GenericResponse updateTempSession(@RequestBody TempSessionDto tempSessionDto) {
        GenericResponse genericResponse = new GenericResponse();
        List<TempSessions> tempSessionsList = tempSessionDto.getData();
        if (tempSessionsList.isEmpty()) {
            genericResponse.setStatus(500);
            genericResponse.setMsg("TempSessions List is empty");
        }
        genericResponse.setStatus(200);
        genericResponse.setMsg("TempSessions List updated");
        return genericResponse;
    }
}
