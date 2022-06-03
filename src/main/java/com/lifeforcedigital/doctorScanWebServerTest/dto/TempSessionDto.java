package com.lifeforcedigital.doctorScanWebServerTest.dto;

import com.lifeforcedigital.doctorScanWebServerTest.model.TempSessions;
import lombok.Data;

import java.util.List;

@Data
public class TempSessionDto {
    List<TempSessions> data;
}
