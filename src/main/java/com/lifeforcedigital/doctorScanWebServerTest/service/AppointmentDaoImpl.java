package com.lifeforcedigital.doctorScanWebServerTest.service;

import com.lifeforcedigital.doctorScanWebServerTest.dao.AppointmentDao;
import com.lifeforcedigital.doctorScanWebServerTest.dao.PatientDetailsDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Repository("AppAppointmentDao")
public class AppointmentDaoImpl implements AppointmentDao {
    private static final String FETCH_APPONTMENT = "select * from public.appointments a join users u on a.\"patient_id\"=u.\"id\" join patient_details pd on a.\"patient_id\"=pd.\"patientId\"";
    private static final String INSERT_Appointment =
            "INSERT INTO public.appointments (\"apptID\",\"apptTypeId\",\"practitionerID\",\"practiceId\",\"patientID\",\"practitioner_id\",\"patient_id\",\"urNo\",\"type\",\"description\",\"when\",\"flag\",\"user\",\"dts\",\"lockID\",\"apptBookID\",\"timeInWaitRoom\",\"timeInConsult\",\"timeGone\",\"almsExportDate\",\"arrived\",\"smsFlag\",\"bookingFor\",\"bookFrom\",\"callUrl\",\"audioCallUrl\",\"status\",\"deviceType\",\"isSync\",\"createdAt\",\"updatedAt\") VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?::timestamptz,?::timestamptz)";
    private static final String UPDATE_Cancel_Appointment =
            "UPDATE public.appointments SET \"status\"=?, \"isSync\"=false , \"updatedAt\"=? WHERE \"id\" =?";
    private static final String UPDATE_Appointment =
            "UPDATE public.appointments SET \"apptID\"=?, \"updatedAt\"=? WHERE \"id\" =?";

    private final JdbcTemplate jdbcTemplate;
    @Autowired
    PatientDetailsDao patientDetailsDao;

    public AppointmentDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Appointment> insertAppointment(List<Appointment> appointmentList) throws SQLException {
        KeyHolder keyHolder = new GeneratedKeyHolder();

        List<Users> patientListDb = patientDetailsDao.fetchPatientDetails();
        for (Appointment appointment : appointmentList) {
            if (appointment.getPatient() != null) {
                if (patientListDb.stream().filter(
                        patient ->
                                patient.getEmail().equals(appointment.getPatient().getEmail()) || patient.getPhnMobile().equals(appointment.getPatient().getPhnMobile()) || patient.getPhnHome().equals(appointment.getPatient().getPhnHome())
                ).findAny().orElse(null) == null) {
                    Patient patient = patientDetailsDao.insertPatientDetails(List.of(appointment.getPatient())).get(0);
                    appointment.setPatient(patient);
                }

                jdbcTemplate.update(INSERT_Appointment, new Object[]{
                        appointment.getApptID(),
                        appointment.getApptTypeId(),
                        appointment.getPractitionerID(),
                        1,
                        appointment.getPatientID(),
                        appointment.getPractitionerID(),//practitioner_id
                        appointment.getPatientID(), //patient_id
                        appointment.getUrNo(),
                        null,//type
                        appointment.getDescription(),
                        appointment.getWhen(),
                        appointment.getFlag(),
                        appointment.getUser(),
                        appointment.getDts(),
                        appointment.getLockId(),
                        appointment.getApptBookID(),
                        appointment.getTimeInWaitRoom(),
                        appointment.getTimeInConsult(),
                        appointment.getTimeGone(),
                        appointment.getAlmsExportDate(),
                        appointment.getArrived(),
                        appointment.getSmsFlag(),
                        null,//booking for
                        null,//booking from
                        null,//call url
                        null,//audio call
                        2,//status
                        null,//null
                        false,//is sync
//                    appointment.getRowVersion(),
//                    appointment.getApptGuuId(),


                        new Date(),
                        new Date()
                });
            }
        }
        return appointmentList;
    }

    @Override
    public List<Appointment> fetchAppointments() {
        List<Appointment> appointments = new ArrayList<>();
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(FETCH_APPONTMENT);
        for (Map row : rows) {
            Appointment genAppointment = new Appointment();
            Patient genPatient = new Patient();
            genAppointment.setId(((Integer) row.get("id")));
            genAppointment.setApptID((Integer) row.get("apptID"));
            genAppointment.setPractitionerID((Integer) row.get("practitionerID"));
            genAppointment.setPatientID((Integer) row.get("patientID"));
            genAppointment.setUrNo((String) row.get("urNo"));
            genAppointment.setApptTypeId((Integer) row.get("apptTypeId"));
            genAppointment.setDescription((String) row.get("description"));
            genAppointment.setWhen((String) row.get("when"));

            genAppointment.setFlag(row.get("flag") == null ? 0 : (Integer) row.get("flag"));

            genAppointment.setUser((String) row.get("user"));
            genAppointment.setDts((String) row.get("dts"));
            genAppointment.setLockId(row.get("lockID") == null ? 0 : (Integer) row.get("lockID"));
            genAppointment.setApptBookID((Integer) row.get("apptBookID"));
            genAppointment.setTimeInWaitRoom((String) row.get("timeInWaitRoom"));
            genAppointment.setTimeInConsult((String) row.get("timeInConsult"));
            genAppointment.setTimeGone((String) row.get("timeGone"));
            genAppointment.setAlmsExportDate((String) row.get("almsExportDate"));
//genAppointment.setRowVersion(rs.getString(""));
//genAppointment.setApptGuuId(rs.);
            genAppointment.setArrived(row.get("arrived") == null ? 0 : Integer.parseInt((String) row.get("arrived")));
//            genAppointment.setArrived((String) row.get("arrived"));
            genAppointment.setSmsFlag(row.get("smsFlag") == null ? 0 : Integer.parseInt((String) row.get("smsFlag")));

            genPatient.setPatientID((Integer) row.get("patientID"));
            genPatient.setTitle((String) row.get("title"));
            genPatient.setFirstName((String) row.get("firstName"));
            genPatient.setMiddleName((String) row.get("middleName"));
            genPatient.setSurname((String) row.get("surname"));
            genPatient.setDob((String) row.get("dob"));
            genPatient.setGender((String) row.get("gender"));
            genPatient.setPhnHome((String) row.get("phnHome"));
            genPatient.setPhnWork((String) row.get("phnWork"));
            genPatient.setPhnMobile((String) row.get("phnMobile"));
            genPatient.setStreet1((String) row.get("street1"));
            genPatient.setStreet2((String) row.get("street2"));
            genPatient.setStreet3((String) row.get("street3"));
            genPatient.setCity((String) row.get("city"));
            genPatient.setPostcode((String) row.get("postcode"));
            genPatient.setEmail((String) row.get("email"));
            genPatient.setMedicareNumber((String) row.get("medicareNumber"));
            genPatient.setMedicareIndex((String) row.get("medicareIndex"));
            genPatient.setMedicareExpDate((String) row.get("medicareExpDate"));
            genPatient.setMedicareGender((String) row.get("medicareGender"));
            genPatient.setInsuranceNumber((String) row.get("insuranceNumber"));
            genPatient.setInsuranceCompanyId((String) row.get("insuranceCompanyId"));
            genPatient.setInsuranceType((String) row.get("insuranceType"));
//            genPatient.setStampUserId((Integer) row.get("stampUserId"));
            genAppointment.setPatient(genPatient);

            appointments.add(genAppointment);
        }


        return appointments;
    }

    @Override
    public WebAppointment insertWebAppointment(WebAppointment webAppointment) {
        KeyHolder keyHolder = new GeneratedKeyHolder();

        jdbcTemplate.update(
                connection -> {
                    PreparedStatement ps = connection.prepareStatement(INSERT_Appointment,
                            new String[]{"id"});
                    ps.setInt(1, 0);
                    ps.setInt(2, webAppointment.getApptTypeId());
                    ps.setInt(3, 2);
                    ps.setInt(4, webAppointment.getPracticeId());
                    ps.setInt(5, 3);
                    ps.setInt(6, webAppointment.getPractitioner_id());
                    ps.setInt(7, webAppointment.getPatient_id());
                    ps.setString(8, null);
                    ps.setInt(9, 0);
                    ps.setString(10, webAppointment.getDescription());
                    ps.setString(11, webAppointment.getWhen());
                    ps.setInt(12, 0);
                    ps.setString(13, null);
                    ps.setString(14, null);
                    ps.setInt(15, 0);
                    ps.setInt(16, 1);
                    ps.setString(17, null);
                    ps.setString(18, null);
                    ps.setString(19, null);
                    ps.setString(20, null);
                    ps.setString(21, null);
                    ps.setInt(22, 0);
                    ps.setString(23, webAppointment.getBookingFor());
                    ps.setInt(24, 1);
                    ps.setString(25, webAppointment.getCallUrl());
                    ps.setString(26, webAppointment.getAudioCallUrl());
                    ps.setInt(27, 2);
                    ps.setString(28, webAppointment.getDeviceType());
                    ps.setBoolean(29, false);
                    ps.setString(30, String.valueOf(new Date()));
                    ps.setString(31, String.valueOf(new Date()));
                    return ps;
                }, keyHolder);
        int id = keyHolder.getKey().intValue();
        webAppointment.setId(id);
        return webAppointment;
    }

    @Override
    public void updateWebAppointment(int webid, int status) {
        jdbcTemplate.update(UPDATE_Cancel_Appointment, status, new Date(), webid);
    }

    @Override
    public void updateAckWebAppointment(List<ApptWebId> apptWebIds) {
        for (ApptWebId apptWebId : apptWebIds) {
            jdbcTemplate.update(UPDATE_Appointment, apptWebId.getApptID(), new Date(), apptWebId.getWebId());
        }
    }

}
