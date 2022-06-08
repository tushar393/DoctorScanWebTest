package com.lifeforcedigital.doctorScanWebServerTest.dto;

import com.lifeforcedigital.doctorScanWebServerTest.model.FetchClinics;
import lombok.Data;

import java.util.List;

@Data
public class FetchClinicsDto {
    List<FetchClinics> data;
}
