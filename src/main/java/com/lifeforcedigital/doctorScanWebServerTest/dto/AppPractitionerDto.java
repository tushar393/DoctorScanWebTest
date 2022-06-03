package com.lifeforcedigital.doctorScanWebServerTest.dto;

import com.lifeforcedigital.doctorScanWebServerTest.model.AppPractitioner;
import lombok.Data;

import java.util.List;

@Data
public class AppPractitionerDto {
    List<AppPractitioner> data;
}
