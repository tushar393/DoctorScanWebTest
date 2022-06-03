package com.lifeforcedigital.doctorScanWebServerTest.dto;

import com.lifeforcedigital.doctorScanWebServerTest.model.Patient;
import lombok.Data;

import java.util.List;

@Data
public class PatientDto {
    List<Patient> data;
}
