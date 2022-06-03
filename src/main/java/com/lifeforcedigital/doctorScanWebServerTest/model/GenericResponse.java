package com.lifeforcedigital.doctorScanWebServerTest.model;

import lombok.Data;

@Data
public class GenericResponse {
    public int status;
    public String msg;
    public Object data;
}
