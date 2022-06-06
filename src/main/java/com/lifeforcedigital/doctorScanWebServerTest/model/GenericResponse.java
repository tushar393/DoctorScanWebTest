package com.lifeforcedigital.doctorScanWebServerTest.model;

import lombok.Data;

@Data
public class GenericResponse {
    public int status;
    public String success;
    public String message;
    public Object data;
}

