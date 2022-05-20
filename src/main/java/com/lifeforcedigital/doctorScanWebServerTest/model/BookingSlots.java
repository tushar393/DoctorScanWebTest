package com.lifeforcedigital.doctorScanWebServerTest.model;

import lombok.Data;

@Data
public class BookingSlots {
    int id;
    int userId;
    int apptBookID;
    int timeSlotSize;
    String startTime;
    String endTime;
    String description;
}
