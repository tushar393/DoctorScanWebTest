package com.lifeforcedigital.doctorScanWebServerTest.rowMapper;

import com.lifeforcedigital.doctorScanWebServerTest.model.Appointment;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class AppointmentRowMapper implements RowMapper<Appointment> {

    @Override
    public Appointment mapRow(ResultSet rs, int rowNum) throws SQLException {
        Appointment genAppointment = new Appointment();
        genAppointment.setApptID(rs.getInt("apptID"));
        genAppointment.setPractitionerID(rs.getInt("practitionerID"));
        genAppointment.setPatientID(rs.getInt("patientID"));
        genAppointment.setUrNo(rs.getString("urNo"));
        genAppointment.setApptTypeId(rs.getInt("apptTypeId"));
        genAppointment.setDescription(rs.getString("description"));
        genAppointment.setWhen(rs.getString("when"));
        genAppointment.setFlag(rs.getInt("flag"));
        genAppointment.setUser(rs.getString("user"));
        genAppointment.setDts(rs.getString("dts"));
        genAppointment.setLockId(rs.getInt("lockID"));
        genAppointment.setApptBookID(rs.getInt("apptBookID"));
        genAppointment.setTimeInWaitRoom(rs.getString("timeInWaitRoom"));
        genAppointment.setTimeInConsult(rs.getString("timeInConsult"));
        genAppointment.setTimeGone(rs.getString("timeGone"));
        genAppointment.setAlmsExportDate(rs.getString("almsExportDate"));
//genAppointment.setRowVersion(rs.getString(""));
//genAppointment.setApptGuuId(rs.);
        genAppointment.setArrived(rs.getInt("arrived"));
        genAppointment.setSmsFlag(rs.getInt("smsFlag"));

        return genAppointment;
    }
}

