package com.lifeforcedigital.doctorScanWebServerTest.rowMapper;

import com.lifeforcedigital.doctorScanWebServerTest.model.Patient;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PatientDetailsRowMapper implements RowMapper<Patient> {
    @Override
    public Patient mapRow(ResultSet rs, int rowNum) throws SQLException {
        Patient genPatient = new Patient();
//        genPatient.getPhnHome(setId(rs.getInt("id"));
        genPatient.setPatientID(rs.getInt("patientID"));
        genPatient.setTitle(rs.getString("title"));
        genPatient.setFirstName(rs.getString("firstName"));
        genPatient.setMiddleName(rs.getString("middleName"));
        genPatient.setSurname(rs.getString("surname"));
        genPatient.setDob(rs.getString("dob"));
        genPatient.setGender(rs.getString("gender"));
        genPatient.setPhnHome(rs.getString("phnHome"));
genPatient.setPhnWork(rs.getString("phnWork"));
genPatient.setPhnMobile(rs.getString("phnMobile"));
genPatient.setStreet1(rs.getString("street1"));
genPatient.setStreet2(rs.getString("street2"));
genPatient.setStreet3(rs.getString("street3"));
genPatient.setCity(rs.getString("city"));
genPatient.setPostcode(rs.getString("postcode"));
genPatient.setEmail(rs.getString("email"));
genPatient.setMedicareNumber(rs.getString("medicareNumber"));
genPatient.setMedicareIndex(rs.getString("medicareIndex"));
genPatient.setMedicareExpDate(rs.getString("medicareExpDate"));
genPatient.setMedicareGender(rs.getString("medicareGender"));
genPatient.setInsuranceNumber(rs.getString("insuranceNumber"));
genPatient.setInsuranceCompanyId(rs.getString("insuranceCompanyId"));
genPatient.setInsuranceType(rs.getString("insuranceType"));
//genPatient.setStampUserId(rs.getInt("stampUserId"));
        return genPatient;
    }
}
