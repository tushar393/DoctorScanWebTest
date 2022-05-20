package com.lifeforcedigital.doctorScanWebServerTest.dao;

import com.lifeforcedigital.doctorScanWebServerTest.model.Sessions;
import com.lifeforcedigital.doctorScanWebServerTest.model.TempSessions;

import java.util.List;

public interface TempSessionsDao {
    List<TempSessions> insertTempSessions(List<TempSessions> tempSessionsList);
    List<TempSessions> fetchTempSessions();
}
