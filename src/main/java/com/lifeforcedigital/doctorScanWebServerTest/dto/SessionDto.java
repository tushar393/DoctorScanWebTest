package com.lifeforcedigital.doctorScanWebServerTest.dto;

import com.lifeforcedigital.doctorScanWebServerTest.model.Sessions;
import lombok.Data;

import java.util.List;

@Data
public class SessionDto {
    List<Sessions> data;
}
