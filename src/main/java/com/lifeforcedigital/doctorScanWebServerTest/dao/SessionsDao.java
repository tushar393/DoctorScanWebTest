package com.lifeforcedigital.doctorScanWebServerTest.dao;

import com.lifeforcedigital.doctorScanWebServerTest.model.Sessions;

import java.util.List;

public interface SessionsDao {
    List<Sessions> insertSessions(List<Sessions> sessionsList);
    List<Sessions> fetchSessions();
}
