package com.lifeforcedigital.doctorScanWebServerTest.model;

import lombok.Data;

@Data
public class Sessions {
    int id;
    int userId;
    int sessionId;
    int practitionerId;
    int dayOfWk;
    int apptBookId;
    String oneStart;
    String oneEnd;
    int oneType;
    String twoStart;
    String twoEnd;
    int twoType;
    String threeStart;
    String threeEnd;
    int threeType;
    String fourStart;
    String fourEnd;
    int fourType;
    String fiveStart;
    String fiveEnd;
    int fiveType;
    String sixStart;
    String sixEnd;
    int sixType;
}
