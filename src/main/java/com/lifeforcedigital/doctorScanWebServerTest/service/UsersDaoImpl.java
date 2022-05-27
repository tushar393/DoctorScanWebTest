package com.lifeforcedigital.doctorScanWebServerTest.service;

import com.lifeforcedigital.doctorScanWebServerTest.dao.UsersDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.Users;
import com.lifeforcedigital.doctorScanWebServerTest.rowMapper.UsersRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository("AppUsersDao")
public class UsersDaoImpl implements UsersDao {

    private static final String INSERT_Users =
            "INSERT INTO public.users (\"parentId\", title, \"firstName\", \"middleName\", surname, name, \"patientID\", email, phone, business_logo, business_name, waitingmusic, dob, gender, country, region, city, street1, street2, street3, suite, house, postcode, \"phnHome\", \"phnWork\", \"countryCode\", \"phnMobile\", \"phnTwilio\", \"faxTwilio\", profile_image, social_id, website, accreditation, \"fbLink\", \"twitterLink\", \"instagramLink\", \"wheelChairAccess\", \"teleHealthOnly\", facilities, \"paymentMethods\", \"billingType\", \"billingPolicy\", \"bulkBilling\", \"directionsParking\", \"alertMessage\", login_type, about, \"password\", profession, professionid, qualifications, education, \"areas_of_Interest\", professional_statement, \"allowPatienttoBookStatus\", \"patientApointmentFutureDays\", \"onlineBookingVisibleStatus\", \"tellNewPatientStatus\", app_practitioner, bg_color, fg_color, \"availableForVideo\", \"availableForAudio\", \"location\", latitude, longitude, \"stripeAccountId\", \"stripeVerified\", available_status, reference, \"medicareNumber\", \"expiryDate\", status, \"registrationStatus\", user_type, \"createdAt\", \"updatedAt\", \"regPageIndex\", \"countryShort\", \"language\") VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

    private static final String FETCH_Users ="select * from public.users";

    private final JdbcTemplate jdbcTemplate;

    public UsersDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public List<Users> insertUsers(List<Users> usersList) {
//        List <Users> usersList1= this.fetchUsers();
        for (Users users : usersList) {
//            if (usersList1.stream().filter(users1 -> users1.getTempSessionId() == users.getTempSessionId()).findAny().orElse(null) == null) {

                jdbcTemplate.update(INSERT_Users, new Object[]{
                        users.getParentId(),
                        users.getTitle(),
                        users.getFirstName(),
                        users.getMiddleName(),
                        users.getSurname(),
                        users.getName(),
                        users.getPatientId(),
                        users.getEmail(),
                        users.getPhone(),
                        users.getBusiness_logo(),
                        users.getBusiness_name(),
                        users.getWaitingmusic(),
                        users.getDob(),
                        users.getGender(),
                        users.getCountry(),
                        users.getRegion(),
                        users.getCity(),
                        users.getStreet1(),
                        users.getStreet2(),
                        users.getStreet3(),
                        users.getSuite(),
                        users.getHouse(),
                        users.getPostcode(),
                        users.getPhnHome(),
                        users.getPhnWork(),
                        users.getCountryCode(),
                        users.getPhnMobile(),
                        users.getPhnTwilio(),
                        users.getFaxTwilio(),
                        users.getProfile_image(),
                        users.getSocial_id(),
                        users.getWebsite(),
                        users.getAccreditation(),
                        users.getFbLink(),
                        users.getTwitterLink(),
                        users.getInstagramLink(),
                        users.getWheelChairAccess(),
                        users.getTeleHealthOnly(),
                        users.getFacilities(),
                        users.getPaymentMethods(),
                        users.getBillingType(),
                        users.getBillingPolicy(),
                        users.getBulkBilling(),
                        users.getDirectionsParking(),
                        users.getAlertMessage(),
                        users.getLogin_type(),
                        users.getAbout(),
                        users.getPassword(),
                        users.getProfession(),
                        users.getProfessionid(),
                        users.getQualifications(),
                        users.getEducation(),
                        users.getAreas_of_Interest(),
                        users.getProfessional_statement(),
                        users.getAllowPatienttoBookStatus(),
                        users.getPatientApointmentFutureDays(),
                        users.getOnlineBookingVisibleStatus(),
                        users.getTellNewPatientStatus(),
                        users.getLatitude(),
                        users.getBg_color(),
                        users.getFg_color(),
                        users.getAvailableForVideo(),
                        users.getAvailableForAudio(),
                        users.getLocation(),
                        users.getLongitude(),
                        users.getStripeAccountId(),
                        users.getStripeVerified(),
                        users.getAvailable_status(),
                        users.getReference(),
                        users.getMedicareNumber(),
                        users.getExpiryDate(),
                        users.getStatus(),
                        users.getRegistrationStatus(),
                        users.getUser_type(),
                        new Date(),
                        new Date(),
                        users.getRegPageIndex(),
                        users.getCountryShort(),
                        users.getLanguage()
                });
            }
//        }
        return usersList;
    }

    @Override
    public List<Users> fetchUsers() {
        List<Users> usersList =
                jdbcTemplate.query(
                        FETCH_Users, new UsersRowMapper());
        return usersList;
    }
}
