package com.lifeforcedigital.doctorScanWebServerTest.rowMapper;

import com.lifeforcedigital.doctorScanWebServerTest.model.AppPractitioner;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class AppPractitionerRowMapper implements RowMapper<AppPractitioner> {

    @Override
    public AppPractitioner mapRow(ResultSet rs, int rowNum) throws SQLException {
        AppPractitioner genPrac = new AppPractitioner();
        genPrac.setId(rs.getInt("id"));
        genPrac.setUserId(rs.getInt("userId"));
        genPrac.setApptBookID(rs.getInt("apptBookID"));
        genPrac.setPracID(rs.getInt("pracID"));
        genPrac.setPractitionerID(rs.getInt("practitionerID"));
        genPrac.setPractitioner(rs.getString("practitioner"));
        genPrac.setLocation(rs.getString("location"));
        genPrac.setName(rs.getString("name"));
        genPrac.setEmail(rs.getString("email"));
        genPrac.setPhoneNo(rs.getString("phoneNo"));
        genPrac.setStatus(rs.getString("status"));
        return genPrac;
    }
}
