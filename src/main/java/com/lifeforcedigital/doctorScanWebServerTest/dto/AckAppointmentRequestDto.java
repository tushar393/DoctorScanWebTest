package com.lifeforcedigital.doctorScanWebServerTest.dto;

import com.lifeforcedigital.doctorScanWebServerTest.model.ApptWebId;
import lombok.Data;

import java.util.List;

@Data
public class AckAppointmentRequestDto {

    private List<ApptWebId> data;
}
