package com.lifeforcedigital.doctorScanWebServerTest.dto;

import com.lifeforcedigital.doctorScanWebServerTest.model.Appointment;
import lombok.Data;

import java.util.List;

@Data
public class AppointmentDto {
    public List<Appointment> data;
}
