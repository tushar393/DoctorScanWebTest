package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.model.*;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UnitTestController {

    @PutMapping("/updateSession")
    public GenericResponse updateSession(@RequestBody List<Sessions> sessionsList) {
        GenericResponse genericResponse = new GenericResponse();
        if (sessionsList.isEmpty()) {
            genericResponse.setStatus(500);
            genericResponse.setMsg("Sessions List is empty");
        }
        genericResponse.setStatus(200);
        genericResponse.setMsg("Sessions List updated");
        return genericResponse;
    }

    @PutMapping("/updateTempSession")
    public GenericResponse updateTempSession(@RequestBody List<TempSessions> tempSessionsList) {
        GenericResponse genericResponse = new GenericResponse();
        if (tempSessionsList.isEmpty()) {
            genericResponse.setStatus(500);
            genericResponse.setMsg("TempSessions List is empty");
        }
        genericResponse.setStatus(200);
        genericResponse.setMsg("TempSessions List updated");
        return genericResponse;
    }

    @PutMapping("/updateAPPTBOOKSET")
    public GenericResponse updateBookingSlots(@RequestBody List<BookingSlots> bookingSlotsList) {
        GenericResponse genericResponse = new GenericResponse();
        if (bookingSlotsList.isEmpty()) {
            genericResponse.setStatus(500);
            genericResponse.setMsg("APPT BOOKSET List is empty");
        }
        genericResponse.setStatus(201);
        genericResponse.setMsg("APPT BOOKSET List updated");
        return genericResponse;
    }

    @PutMapping("/updateDoctor")
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
