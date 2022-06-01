package com.lifeforcedigital.doctorScanWebServerTest.service;

import com.lifeforcedigital.doctorScanWebServerTest.dao.CancelAppointmentDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.CancelAppointment;
import com.lifeforcedigital.doctorScanWebServerTest.rowMapper.CancelAppointmentRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

@Repository("AppCancelAppointmentDao")
public class CancelAppointmentDaoImpl implements CancelAppointmentDao {

    private static final String FETCH_Cancel_Appointment = "select * from public.appointments a where a.\"status\" = 4 and a.\"isSync\" = false ";
    private static final String INSERT_Cancel_Appointment =
            "INSERT INTO public.appointments (\"apptID\",\"apptTypeId\",\"practitionerID\",\"practiceId\",\"patientID\",\"practitioner_id\",\"patient_id\",\"urNo\",\"type\",\"description\",\"when\",\"flag\",\"user\",\"dts\",\"lockID\",\"apptBookID\",\"timeInWaitRoom\",\"timeInConsult\",\"timeGone\",\"almsExportDate\",\"arrived\",\"smsFlag\",\"bookingFor\",\"bookFrom\",\"callUrl\",\"audioCallUrl\",\"status\",\"deviceType\",\"isSync\",\"createdAt\",\"updatedAt\") VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

    private static final String UPDATE_Cancel_Appointment =
    "UPDATE public.appointments SET \"status\"=4, \"isSync\"=true , \"updatedAt\"=? WHERE \"apptID\" =?";

    private final JdbcTemplate jdbcTemplate;

    public CancelAppointmentDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<CancelAppointment> insertCancelAppointment(List<CancelAppointment> cancelAppointmentList) throws SQLException {
        for (CancelAppointment cancelAppointment : cancelAppointmentList){
            jdbcTemplate.query(UPDATE_Cancel_Appointment,new CancelAppointmentRowMapper(),new Date(),cancelAppointment.getApptID());
        }
        return cancelAppointmentList;
    }

    @Override
    public List<CancelAppointment> fetchCancelAppointment() {
        List<CancelAppointment> cancelAppointmentList =
                jdbcTemplate.query(
                        FETCH_Cancel_Appointment, new CancelAppointmentRowMapper());
        return cancelAppointmentList;
    }
}
