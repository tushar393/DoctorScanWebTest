package com.lifeforcedigital.doctorScanWebServerTest.rowMapper;

import com.lifeforcedigital.doctorScanWebServerTest.model.CancelAppointment;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CancelAppointmentRowMapper implements RowMapper<CancelAppointment> {
    @Override
    public CancelAppointment mapRow(ResultSet rs, int rowNum) throws SQLException {
        CancelAppointment genAppointment = new CancelAppointment();
        genAppointment.setApptID(rs.getInt("apptID"));
        genAppointment.setDescription(rs.getString("description"));
        genAppointment.setWebId(rs.getInt("id"));
        return genAppointment;
    }
}
