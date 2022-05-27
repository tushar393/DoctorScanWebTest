package com.lifeforcedigital.doctorScanWebServerTest.service;

import com.lifeforcedigital.doctorScanWebServerTest.dao.SessionsDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.BookingSlots;
import com.lifeforcedigital.doctorScanWebServerTest.model.Sessions;
import com.lifeforcedigital.doctorScanWebServerTest.rowMapper.SessionsRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository("AppSessionsDao")
public class SessionsDaoImpl implements SessionsDao {

    private static final String INSERT_Sessions =
            "INSERT INTO public.sessions (\"userId\", \"sessionId\", \"practitionerId\", \"dayOfWk\", \"apptBookId\", \"oneStart\",\"oneEnd\",\"oneType\",\"twoStart\",\"twoEnd\",\"twoType\",\"threeStart\",\"threeEnd\",\"threeType\",\"fourStart\",\"fourEnd\",\"fourType\",\"fiveStart\",\"fiveEnd\",\"fiveType\",\"sixStart\",\"sixEnd\",\"sixType\",\"createdAt\",\"updatedAt\") VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

    private static final String FETCH_Sessions ="select * from public.sessions";

    private final JdbcTemplate jdbcTemplate;

    public SessionsDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public List<Sessions> insertSessions(List<Sessions> sessionsList) {

        List <Sessions> fetchSessions= this.fetchSessions();

        for (Sessions sessions : sessionsList) {
            if (fetchSessions.stream().filter(slots -> slots.getSessionId() == sessions.getSessionId()).findAny().orElse(null) == null) {

                jdbcTemplate.update(INSERT_Sessions, new Object[]{
                        sessions.getUserId(),
                        sessions.getSessionId(),
                        sessions.getPractitionerId(),
                        sessions.getDayOfWk(),
                        sessions.getApptBookId(),
                        sessions.getOneStart(),
                        sessions.getOneEnd(),
                        sessions.getOneType(),
                        sessions.getTwoStart(),
                        sessions.getTwoEnd(),
                        sessions.getTwoType(),
                        sessions.getThreeStart(),
                        sessions.getThreeEnd(),
                        sessions.getThreeType(),
                        sessions.getFourStart(),
                        sessions.getFourEnd(),
                        sessions.getFourType(),
                        sessions.getFiveStart(),
                        sessions.getFiveEnd(),
                        sessions.getFiveType(),
                        sessions.getSixStart(),
                        sessions.getSixEnd(),
                        sessions.getSixType(),
                        new Date(),
                        new Date()
                });
            }
        }
        return sessionsList;
    }

    @Override
    public List<Sessions> updateSessions(List<Sessions> sessionsList) {
        return null;
    }

    @Override
    public List<Sessions> fetchSessions() {
        List<Sessions> genSessions =
                jdbcTemplate.query(
                        FETCH_Sessions, new SessionsRowMapper());
        return genSessions;
    }
}
