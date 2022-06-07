package com.lifeforcedigital.doctorScanWebServerTest.model;

import lombok.Data;

@Data
public class GenericResponse {
    public int status;
    public Boolean success;
    public String message;
    public Object data;
}

