package com.lifeforcedigital.doctorScanWebServerTest.model;

import lombok.Data;

@Data
public class CancelAppointment {
    public int apptID;
    public String description;
    public int webId;
}
