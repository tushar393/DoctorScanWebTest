package com.lifeforcedigital.doctorScanWebServerTest.model;

import lombok.Data;

@Data
public class ApptWebId {
    private int apptID; // Incorrect naming convention used to match v1 web frontend
    private int webId;
}
