package com.lifeforcedigital.doctorScanWebServerTest.dao;

import com.lifeforcedigital.doctorScanWebServerTest.model.Appointment;
import com.lifeforcedigital.doctorScanWebServerTest.model.WebAppointment;

import java.sql.SQLException;
import java.util.List;

public interface AppointmentDao {
    List<Appointment> insertAppointment(List<Appointment> appointmentList) throws SQLException;

    List<Appointment> fetchAppointments();

    WebAppointment insertWebAppointment(WebAppointment webAppointment);

    void updateWebAppointment(int webid, int status);
}
