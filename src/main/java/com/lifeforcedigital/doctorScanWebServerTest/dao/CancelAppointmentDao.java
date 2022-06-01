package com.lifeforcedigital.doctorScanWebServerTest.dao;

import com.lifeforcedigital.doctorScanWebServerTest.model.CancelAppointment;

import java.sql.SQLException;
import java.util.List;

public interface CancelAppointmentDao {
    List<CancelAppointment> insertCancelAppointment(List<CancelAppointment> cancelAppointmentList) throws SQLException;

    List<CancelAppointment> fetchCancelAppointment();
}
