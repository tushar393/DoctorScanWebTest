package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.service.ClearDbDaoImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ClearDbController {

    @Autowired
    ClearDbDaoImpl clearDbDao;

    @GetMapping("/api/v1/clear-staging-test-data")
    public void clearDb(){
        clearDbDao.clearDb();
    }

    @GetMapping("/api/v1/new-staging-test-data")
    public void registerPracAndPatient(){
    }

}
