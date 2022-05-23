package com.lifeforcedigital.doctorScanWebServerTest.service;

import com.lifeforcedigital.doctorScanWebServerTest.dao.PatientDetailsDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.PatientDetails;
import com.lifeforcedigital.doctorScanWebServerTest.rowMapper.PatientDetailsRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository("AppPatientDetailsDao")
public class PatientDetailsDaoImpl implements PatientDetailsDao {

    private static final String INSERT_PatientDetails =
            "INSERT INTO public.patient_details (\"patientId\", \"medicareNumber\", \"medicareIndex\", \"medicareExpDate\", \"medicareGender\", \"insuranceNumber\", \"insuranceCompanyID\", \"insuranceType\", \"createdAt\", \"updatedAt\") VALUES(?,?,?,?,?,?,?,?,?,?)";

    private static final String FETCH_PatientDetails ="select * from public.patient_details";

    private final JdbcTemplate jdbcTemplate;

    public PatientDetailsDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public List<PatientDetails> insertPatientDetails(List<PatientDetails> patientDetailsList) {
//        List <TempSessions> tempSessions1= this.fetchTempSessions();
        for (PatientDetails patientDetails : patientDetailsList) {
//            if (tempSessions1.stream().filter(slots -> slots.getTempSessionId() == tempSessions.getTempSessionId()).findAny().orElse(null) == null) {

                jdbcTemplate.update(INSERT_PatientDetails, new Object[]{
                        patientDetails.getPatientId(),
                        patientDetails.getMedicareNumber(),
                        patientDetails.getMedicareIndex(),
                        patientDetails.getMedicareExpDate(),
                        patientDetails.getMedicareGender(),
                        patientDetails.getInsuranceNumber(),
                        patientDetails.getInsuranceCompanyID(),
                        patientDetails.getInsuranceType(),
                        new Date(),
                        new Date()
                });
            }
//        }
        return patientDetailsList;
    }

    @Override
    public List<PatientDetails> fetchPatientDetails() {
        List<PatientDetails> patientDetailsList =
                jdbcTemplate.query(
                        FETCH_PatientDetails, new PatientDetailsRowMapper());
        return patientDetailsList;
    }
}
