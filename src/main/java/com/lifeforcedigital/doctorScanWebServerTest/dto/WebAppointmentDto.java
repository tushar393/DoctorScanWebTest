package com.lifeforcedigital.doctorScanWebServerTest.dto;

import com.lifeforcedigital.doctorScanWebServerTest.model.WebAppointment;
import lombok.Data;

import java.util.List;

@Data
public class WebAppointmentDto {
    public List<Integer> data;
}
