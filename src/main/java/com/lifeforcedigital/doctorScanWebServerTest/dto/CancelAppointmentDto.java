package com.lifeforcedigital.doctorScanWebServerTest.dto;

import com.lifeforcedigital.doctorScanWebServerTest.model.CancelAppointment;
import lombok.Data;

import java.util.List;

@Data
public class CancelAppointmentDto {
    List<CancelAppointment> data;
}
