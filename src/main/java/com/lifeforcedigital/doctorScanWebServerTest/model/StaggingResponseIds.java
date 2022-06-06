package com.lifeforcedigital.doctorScanWebServerTest.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StaggingResponseIds {
    int patientId;
    int doctorId;
    int appPractisonarId;

}
