package com.lifeforcedigital.doctorScanWebServerTest.service;

import com.lifeforcedigital.doctorScanWebServerTest.dao.AppPractitionerDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.AppPractitioner;
import com.lifeforcedigital.doctorScanWebServerTest.rowMapper.AppPractitionerRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository("AppPracDao")
public class AppPractitionerDaoImpl implements AppPractitionerDao {
    private final KeyHolder keyHolder = new GeneratedKeyHolder();

    private static final String INSERT_Practitioner =
    "INSERT INTO public.app_practitioners (\"userId\", \"apptBookID\", \"pracID\", \"practitionerID\", \"practitioner\", \"location\", \"name\", \"email\", \"phoneNo\", \"status\",\"createdAt\",\"updatedAt\") VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";

    private static final String FETCH_PRAC ="select * from public.app_practitioners";

    private final JdbcTemplate jdbcTemplate;

    public AppPractitionerDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<AppPractitioner> insertPrac(List<AppPractitioner> appPractitionerList) {

        List <AppPractitioner> dbAppPractitioner= this.fetchPrac();

        for (AppPractitioner appPractioner : appPractitionerList) {
            if (dbAppPractitioner.stream().filter(appPractitioner1 -> appPractitioner1.getPractitionerID() == appPractioner.getPractitionerID()).findAny().orElse(null) == null) {

//            }
//        }
//        for (AppPractitioner appPractioner : appPractitionerList) {

                jdbcTemplate.update(INSERT_Practitioner, new Object[]{
                        appPractioner.getUserId(),
                        appPractioner.getApptBookID(),
                        appPractioner.getPracID(),
                        appPractioner.getPractitionerID(),
                        appPractioner.getPractitioner(),
                        appPractioner.getLocation(),
                        appPractioner.getName(),
                        appPractioner.getEmail(),
                        appPractioner.getPhoneNo(),
                        appPractioner.getStatus(),
                        new Date(),
                        new Date()

                });
            }


//            try {
//                jdbcTemplate.update(
//                        connection -> {
//                            PreparedStatement ps =
//                                    connection.prepareStatement(INSERT_Practitioner, new String[] {"id"});
//                            ps.setInt(1, appPractioner.getUserId());
//                            ps.setInt(2, appPractioner.getApptBookID());
//                            ps.setInt(3, appPractioner.getPracID());
//                            ps.setInt(4, appPractioner.getPractitionerID());
//                            ps.setString(5, appPractioner.getPractitioner());
//                            ps.setString(6, appPractioner.getLocation());
//                            ps.setString(7, appPractioner.getName());
//                            ps.setString(8, appPractioner.getEmail());
//                            ps.setString(9, appPractioner.getPhoneNo());
//                            ps.setString(10, appPractioner.getStatus());
//                            ps.setString(11, String.valueOf(new Date()));
//                            ps.setString(12, String.valueOf(new Date()));
//                            return ps;
//                        },
//                        keyHolder);
//                int key = keyHolder.getKey().intValue();
//
//                appPractioner.setId(key);
//            } catch (Exception e) {
//                e.printStackTrace();
//                //LOGGER.error("Failed to insert Web Appointment: " + appPractioner, e);
//            }
        }
        return appPractitionerList;
    }

    @Override
    public List<AppPractitioner> fetchPrac() {
        List<AppPractitioner> genPrac =
                jdbcTemplate.query(
                        FETCH_PRAC, new AppPractitionerRowMapper());
        return genPrac;
    }

    @Override
    public List<AppPractitioner> updatePrac(List<AppPractitioner> appPractitionerList) {
        return null;
    }
}
