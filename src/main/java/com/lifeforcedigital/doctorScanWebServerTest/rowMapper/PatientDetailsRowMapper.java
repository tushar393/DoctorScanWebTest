package com.lifeforcedigital.doctorScanWebServerTest.rowMapper;

import com.lifeforcedigital.doctorScanWebServerTest.model.PatientDetails;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PatientDetailsRowMapper implements RowMapper<PatientDetails> {
    @Override
    public PatientDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
        PatientDetails genPrac = new PatientDetails();
        genPrac.setId(rs.getInt("id"));
        genPrac.setPatientId(rs.getInt("patientId"));
        genPrac.setMedicareNumber(rs.getString("medicareNumber"));
        genPrac.setMedicareExpDate(rs.getString("medicareIndex"));
        genPrac.setMedicareIndex(rs.getString("medicareExpDate"));
        genPrac.setMedicareGender(rs.getString("medicareGender"));
        genPrac.setInsuranceNumber(rs.getString("insuranceNumber"));
        genPrac.setInsuranceCompanyID(rs.getString("insuranceCompanyID"));
        genPrac.setInsuranceType(rs.getString("insuranceType"));

        return genPrac;
    }
}
