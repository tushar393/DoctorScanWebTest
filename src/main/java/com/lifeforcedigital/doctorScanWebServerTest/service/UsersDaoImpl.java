package com.lifeforcedigital.doctorScanWebServerTest.service;

import com.lifeforcedigital.doctorScanWebServerTest.dao.UsersDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.AppPractitioner;
import com.lifeforcedigital.doctorScanWebServerTest.model.Patient;
import com.lifeforcedigital.doctorScanWebServerTest.model.Users;
import com.lifeforcedigital.doctorScanWebServerTest.repository.AppPractitionerRepository;
import com.lifeforcedigital.doctorScanWebServerTest.rowMapper.UsersRowMapper;
import org.postgresql.util.PGobject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

@Repository("AppUsersDao")
public class UsersDaoImpl implements UsersDao {

    private static final String INSERT_Users =
            "INSERT INTO public.users (\"parentId\",\"title\",\"firstName\",\"middleName\",\"surname\",\"name\",\"patientID\",\"email\",\"phone\",\"business_logo\",\"business_name\",\"waitingmusic\",\"dob\",\"gender\",\"country\",\"region\",\"city\",\"street1\",\"street2\",\"street3\",\"suite\",\"house\",\"postcode\",\"phnHome\",\"phnWork\",\"countryCode\",\"phnMobile\",\"phnTwilio\",\"faxTwilio\",\"profile_image\",\"social_id\",\"website\",\"accreditation\",\"fbLink\",\"twitterLink\",\"instagramLink\",\"wheelChairAccess\",\"teleHealthOnly\",\"facilities\",\"paymentMethods\",\"billingType\",\"billingPolicy\",\"bulkBilling\",\"directionsParking\",\"alertMessage\",\"login_type\",\"about\",\"password\",\"profession\",\"professionid\",\"qualifications\",\"education\",\"areas_of_Interest\",\"professional_statement\",\"allowPatienttoBookStatus\",\"patientApointmentFutureDays\",\"onlineBookingVisibleStatus\",\"tellNewPatientStatus\",\"bg_color\",\"fg_color\",\"availableForVideo\",\"availableForAudio\",\"location\",\"latitude\",\"longitude\",\"stripeAccountId\",\"stripeVerified\",\"available_status\",\"reference\",\"medicareNumber\",\"expiryDate\",\"status\",\"registrationStatus\",\"user_type\",\"createdAt\",\"updatedAt\",\"regPageIndex\",\"countryShort\",\"language\") VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?::json,?,?,?,?,?,?::json,?::json,?,?,?::json,?,?,?,?,?,?,?,?,?,?::json,?,?,?,?,?,?,?,?,?,?::geometry,?,?,?,?,?,?,?,?,?,?,?,?::timestamptz,?::timestamptz,?,?,?::json)";

    private static final String FETCH_Users ="select * from public.users u where u.\"user_type\"=4";

    private final JdbcTemplate jdbcTemplate;

    public UsersDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
@Autowired
AppPractitionerRepository appPractitionerRepository;
    @Override
    public List<AppPractitioner> insertUsers(List<AppPractitioner> practitionerList) throws SQLException {
        KeyHolder keyHolder = new GeneratedKeyHolder();
//        List<Users> patientListDb = this.fetchPatientDetails();
        for (AppPractitioner practitioner : practitionerList) {
//            if (patientListDb.stream().filter(
//                    patient ->
//                            patient.getEmail().equals(patientDetails.getEmail()) || patient.getPhnMobile().equals(patientDetails.getPhnMobile()) || patient.getPhnHome().equals(patientDetails.getPhnHome())
//            ).findAny().orElse(null) == null) {
                PGobject jsonObject = new PGobject();
                jsonObject.setType("json");
                jsonObject.setValue(null);
                jdbcTemplate.update(
                        connection -> {
                            PreparedStatement ps = connection.prepareStatement(INSERT_Users,
                                    new String[] {"id"});
                            ps.setInt(1,1);
                            ps.setString(2,null);
                            ps.setString(3,"I");
                            ps.setString(4,null);
                            ps.setString(5,"Feelgood");
                            ps.setString(6,practitioner.getName());
                            ps.setInt(7,0);
                            ps.setString(8,practitioner.getEmail());
                            ps.setString(9,practitioner.getPhoneNo());
                            ps.setString(10,null);
                            ps.setString(11,null);
                            ps.setInt(12,3);//Music
                            ps.setString(13,null);
                            ps.setString(14,"F");
                            ps.setString(15,"Australia");
                            ps.setString(16,null);
                            ps.setString(17,null);
                            ps.setString(18,null);
                            ps.setString(19,null);
                            ps.setString(20,null);
                            ps.setString(21,null);
                            ps.setString(22,null);
                            ps.setString(23,null);
                            ps.setString(24,null);
                            ps.setString(25,null);
                            ps.setString(26,null);
                            ps.setString(27,practitioner.getPhoneNo());
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
                            ps.setString(48, "$2b$10$zI9Nzb5utdlg8TZJXlMuseydASQXL3kRp8HPYILH/DViXr7cOPOgW");//pass
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
                            ps.setString(70,null);
                            ps.setString(71,null);
                            ps.setInt(72,1);
                            ps.setString(73,"active");
                            ps.setInt(74,2);
                            ps.setString(75, String.valueOf(new Date()));
                            ps.setString(76, String.valueOf(new Date()));
//                            ps.setDate(i++,(java.sql.Date) new Date());
                            ps.setString(77, "complete");
                            ps.setString(78,"AU");

                            ps.setObject(79,null);
                            return ps;
                        }, keyHolder);


                int id = keyHolder.getKey().intValue();
                practitioner.setId(id);
//                System.out.println(id);
//                practitioner.setId(id);
//                jdbcTemplate.update(INSERT_patient_details, new Object[]{
//                        id,
//                        practitioner.getMedicareNumber(),
//                        practitioner.getMedicareIndex(),
//                        practitioner.getMedicareExpDate(),
//                        practitioner.getMedicareGender(),
//                        practitioner.getInsuranceNumber(),
//                        practitioner.getInsuranceCompanyId(),
//                        practitioner.getInsuranceType(),
//                        new Date(),
//                        new Date()
//                });

            }
//        }
        return practitionerList;

////        List <Users> usersList1= this.fetchUsers();
//        for (Users users : usersList) {
////            if (usersList1.stream().filter(users1 -> users1.getTempSessionId() == users.getTempSessionId()).findAny().orElse(null) == null) {
//
//                jdbcTemplate.update(INSERT_Users, new Object[]{
//                        users.getParentId(),
//                        users.getTitle(),
//                        users.getFirstName(),
//                        users.getMiddleName(),
//                        users.getSurname(),
//                        users.getName(),
//                        users.getPatientId(),
//                        users.getEmail(),
//                        users.getPhone(),
//                        users.getBusiness_logo(),
//                        users.getBusiness_name(),
//                        users.getWaitingmusic(),
//                        users.getDob(),
//                        users.getGender(),
//                        users.getCountry(),
//                        users.getRegion(),
//                        users.getCity(),
//                        users.getStreet1(),
//                        users.getStreet2(),
//                        users.getStreet3(),
//                        users.getSuite(),
//                        users.getHouse(),
//                        users.getPostcode(),
//                        users.getPhnHome(),
//                        users.getPhnWork(),
//                        users.getCountryCode(),
//                        users.getPhnMobile(),
//                        users.getPhnTwilio(),
//                        users.getFaxTwilio(),
//                        users.getProfile_image(),
//                        users.getSocial_id(),
//                        users.getWebsite(),
//                        users.getAccreditation(),
//                        users.getFbLink(),
//                        users.getTwitterLink(),
//                        users.getInstagramLink(),
//                        users.getWheelChairAccess(),
//                        users.getTeleHealthOnly(),
//                        users.getFacilities(),
//                        users.getPaymentMethods(),
//                        users.getBillingType(),
//                        users.getBillingPolicy(),
//                        users.getBulkBilling(),
//                        users.getDirectionsParking(),
//                        users.getAlertMessage(),
//                        users.getLogin_type(),
//                        users.getAbout(),
//                        users.getPassword(),
//                        users.getProfession(),
//                        users.getProfessionid(),
//                        users.getQualifications(),
//                        users.getEducation(),
//                        users.getAreas_of_Interest(),
//                        users.getProfessional_statement(),
//                        users.getAllowPatienttoBookStatus(),
//                        users.getPatientApointmentFutureDays(),
//                        users.getOnlineBookingVisibleStatus(),
//                        users.getTellNewPatientStatus(),
//                        users.getLatitude(),
//                        users.getBg_color(),
//                        users.getFg_color(),
//                        users.getAvailableForVideo(),
//                        users.getAvailableForAudio(),
//                        users.getLocation(),
//                        users.getLongitude(),
//                        users.getStripeAccountId(),
//                        users.getStripeVerified(),
//                        users.getAvailable_status(),
//                        users.getReference(),
//                        users.getMedicareNumber(),
//                        users.getExpiryDate(),
//                        users.getStatus(),
//                        users.getRegistrationStatus(),
//                        users.getUser_type(),
//                        new Date(),
//                        new Date(),
//                        users.getRegPageIndex(),
//                        users.getCountryShort(),
//                        users.getLanguage()
//                });
//            }
////        }
//        return usersList;
    }

    @Override
    public List<Users> fetchUsers() {
        List<Users> usersList =
                jdbcTemplate.query(
                        FETCH_Users, new UsersRowMapper());
        return usersList;
    }
}
