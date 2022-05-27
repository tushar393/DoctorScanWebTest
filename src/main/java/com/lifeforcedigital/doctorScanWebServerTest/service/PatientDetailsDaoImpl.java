package com.lifeforcedigital.doctorScanWebServerTest.service;

import com.lifeforcedigital.doctorScanWebServerTest.dao.PatientDetailsDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.Patient;
import com.lifeforcedigital.doctorScanWebServerTest.model.Users;
import com.lifeforcedigital.doctorScanWebServerTest.rowMapper.PatientDetailsRowMapper;
import com.lifeforcedigital.doctorScanWebServerTest.rowMapper.UsersRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;
import org.postgresql.util.PGobject;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.List;

@Repository("AppPatientDetailsDao")
public class PatientDetailsDaoImpl implements PatientDetailsDao {
    private static final String INSERT_Users =
            "INSERT INTO public.users (\"parentId\",\"title\",\"firstName\",\"middleName\",\"surname\",\"name\",\"patientID\",\"email\",\"phone\",\"business_logo\",\"business_name\",\"waitingmusic\",\"dob\",\"gender\",\"country\",\"region\",\"city\",\"street1\",\"street2\",\"street3\",\"suite\",\"house\",\"postcode\",\"phnHome\",\"phnWork\",\"countryCode\",\"phnMobile\",\"phnTwilio\",\"faxTwilio\",\"profile_image\",\"social_id\",\"website\",\"accreditation\",\"fbLink\",\"twitterLink\",\"instagramLink\",\"wheelChairAccess\",\"teleHealthOnly\",\"facilities\",\"paymentMethods\",\"billingType\",\"billingPolicy\",\"bulkBilling\",\"directionsParking\",\"alertMessage\",\"login_type\",\"about\",\"password\",\"profession\",\"professionid\",\"qualifications\",\"education\",\"areas_of_Interest\",\"professional_statement\",\"allowPatienttoBookStatus\",\"patientApointmentFutureDays\",\"onlineBookingVisibleStatus\",\"tellNewPatientStatus\",\"bg_color\",\"fg_color\",\"availableForVideo\",\"availableForAudio\",\"location\",\"latitude\",\"longitude\",\"stripeAccountId\",\"stripeVerified\",\"available_status\",\"reference\",\"medicareNumber\",\"expiryDate\",\"status\",\"registrationStatus\",\"user_type\",\"createdAt\",\"updatedAt\",\"regPageIndex\",\"countryShort\",\"language\") VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?::json,?,?,?,?,?,?::json,?::json,?,?,?::json,?,?,?,?,?,?,?,?,?,?::json,?,?,?,?,?,?,?,?,?,?::geometry,?,?,?,?,?,?,?,?,?,?,?,?::timestamptz,?::timestamptz,?,?,?::json)";

    private static final String INSERT_patient_details =
//            "INSERT INTO public.patient_details (\"patientId\", \"medicareNumber\", \"medicareIndex\", \"medicareExpDate\", \"medicareGender\", \"insuranceNumber\", \"insuranceCompanyID\", \"insuranceType\", \"createdAt\", \"updatedAt\") VALUES(?,?,?,?,?,?,?,?,?,?)";
            "INSERT INTO public.patient_details (\"patientId\", \"medicareNumber\", \"medicareIndex\", \"medicareExpDate\", \"medicareGender\", \"insuranceNumber\", \"insuranceCompanyID\", \"insuranceType\", \"createdAt\", \"updatedAt\") VALUES(?,?,?,?,?,?,?,?,?,?)";

    private static final String FETCH_PatientDetails ="select * from public.users where \"user_type\" =3";
//    private static final String FETCH_PatientDetails ="select \"email\", \"phnHome\", \"phnWork\", \"phnMobile\" from public.users";

    private final JdbcTemplate jdbcTemplate;

    public PatientDetailsDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Patient> insertPatientDetails(List<Patient> patientList) throws SQLException {
        KeyHolder keyHolder = new GeneratedKeyHolder();
        List<Users> patientListDb = this.fetchPatientDetails();
        for (Patient patientDetails : patientList) {
            if (patientListDb.stream().filter(
                    patient ->
                            patient.getEmail().equals(patientDetails.getEmail()) || patient.getPhnMobile().equals(patientDetails.getPhnMobile()) || patient.getPhnHome().equals(patientDetails.getPhnHome())
            ).findAny().orElse(null) == null) {
            PGobject jsonObject = new PGobject();
            jsonObject.setType("json");
            jsonObject.setValue(null);
                jdbcTemplate.update(
                        connection -> {
                            PreparedStatement ps = connection.prepareStatement(INSERT_Users,
                                    new String[] {"id"});
                            ps.setInt(1,patientDetails.getPatientID());
                            ps.setString(2,patientDetails.getTitle());
                            ps.setString(3,patientDetails.getFirstName());
                            ps.setString(4,patientDetails.getMiddleName());
                            ps.setString(5,patientDetails.getSurname());
                            ps.setString(6,patientDetails.getTitle()+" "+patientDetails.getFirstName()+" "+patientDetails.getMiddleName()+" "+patientDetails.getSurname());
                            ps.setInt(7,patientDetails.getPatientID());
                            ps.setString(8,patientDetails.getEmail());
                            ps.setString(9,null);
                            ps.setString(10,null);
                            ps.setString(11,null);
                            ps.setInt(12,3);//Music
                            ps.setString(13,patientDetails.getDob());
                            ps.setString(14,patientDetails.getGender());
                            ps.setString(15,"Australia");
                            ps.setString(16,null);
                            ps.setString(17,patientDetails.getCity());
                            ps.setString(18,patientDetails.getStreet1());
                            ps.setString(19,patientDetails.getStreet2());
                            ps.setString(20,patientDetails.getStreet3());
                            ps.setString(21,null);
                            ps.setString(22,null);
                            ps.setString(23,patientDetails.getPostcode());
                            ps.setString(24,patientDetails.getPhnHome());
                            ps.setString(25,patientDetails.getPhnWork());
                            ps.setString(26,null);
                            ps.setString(27,patientDetails.getPhnMobile());
                            ps.setString(28,null);
                            ps.setString(29,null);
                            ps.setString(30,null);
                            ps.setString(31,null);
                            ps.setObject(32,null);
                            ps.setString(33,null);
                            ps.setString(34,null);
                            ps.setString(35,null);
                            ps.setString(36,null);
                            ps.setBoolean(37,false);
                            ps.setObject(38,null);
                            ps.setObject(39,null);
                            ps.setString(40,null);
                            ps.setString(41,null);
                            ps.setObject(42,null);
                            ps.setString(43,null);
                            ps.setString(44,null);
                            ps.setString(45,null);
                            ps.setInt(46,0);
                            ps.setString(47,null);
                            ps.setString(48,null);//pass
                            ps.setString(49,null);
                            ps.setInt(50,0);
                            ps.setString(51,null);
                            ps.setObject(52,null);
                            ps.setString(53,null);
                            ps.setString(54,null);
                            ps.setBoolean(55,false);
                            ps.setInt(56,0);
                            ps.setBoolean(57,false);
                            ps.setBoolean(58,false);
                            ps.setString(59,null);
                            ps.setString(60,null);
                            ps.setInt(61,0);
                            ps.setInt(62,1);
                            ps.setString(63,null);
                            ps.setString(64,null);
                            ps.setString(65,null);
                            ps.setString(66,null);
                            ps.setBoolean(67,false);
                            ps.setInt(68,0);
                            ps.setString(69,null);
                            ps.setString(70,patientDetails.getMedicareNumber());
                            ps.setString(71,patientDetails.getMedicareExpDate());
                            ps.setInt(72,3);
                            ps.setString(73,"active");
                            ps.setInt(74,3);
                            ps.setString(75, String.valueOf(new Date()));
                            ps.setString(76, String.valueOf(new Date()));
//                            ps.setDate(i++,(java.sql.Date) new Date());
                            ps.setString(77,null);
                            ps.setString(78,"AU");

                            ps.setObject(79,null);
                            return ps;
                        }, keyHolder);


                int id = keyHolder.getKey().intValue();

                System.out.println(id);
                jdbcTemplate.update(INSERT_patient_details, new Object[]{
                        id,
                        patientDetails.getMedicareNumber(),
                        patientDetails.getMedicareIndex(),
                        patientDetails.getMedicareExpDate(),
                        patientDetails.getMedicareGender(),
                        patientDetails.getInsuranceNumber(),
                        patientDetails.getInsuranceCompanyId(),
                        patientDetails.getInsuranceType(),
                        new Date(),
                        new Date()
                });

            }
        }
            return patientList;
        }

    @Override
    public List<Users> fetchPatientDetails() {
        List<Users> patientList =
                jdbcTemplate.query(
                        FETCH_PatientDetails, new UsersRowMapper());
        return patientList;
    }
}
