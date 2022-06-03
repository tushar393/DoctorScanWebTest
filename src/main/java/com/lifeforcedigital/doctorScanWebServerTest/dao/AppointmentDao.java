package com.lifeforcedigital.doctorScanWebServerTest.dao;

import com.lifeforcedigital.doctorScanWebServerTest.model.AppPractitioner;
import com.lifeforcedigital.doctorScanWebServerTest.model.Appointment;
import com.lifeforcedigital.doctorScanWebServerTest.model.GenericResponse;

import java.sql.SQLException;
import java.util.List;

public interface AppointmentDao {
    List<Appointment> insertAppointment(List<Appointment> appointmentList) throws SQLException;

    List<Appointment> fetchAppointments();
}
