package com.lifeforcedigital.doctorScanWebServerTest.service;

import com.lifeforcedigital.doctorScanWebServerTest.dao.TempSessionsDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.TempSessions;
import com.lifeforcedigital.doctorScanWebServerTest.rowMapper.TempSessionsRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository("AppTempSessionsDao")
public class TempSessionsDaoImpl implements TempSessionsDao {

    private static final String INSERT_TempSessions =
            "INSERT INTO public.temp_sessions (\"userId\", \"tempSessionId\", \"practitionerId\", \"apptBookId\", \"date\", \"oneStart\",\"oneEnd\",\"oneType\",\"twoStart\",\"twoEnd\",\"twoType\",\"threeStart\",\"threeEnd\",\"threeType\",\"fourStart\",\"fourEnd\",\"fourType\",\"fiveStart\",\"fiveEnd\",\"fiveType\",\"sixStart\",\"sixEnd\",\"sixType\",\"createdAt\",\"updatedAt\") VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

    private static final String FETCH_TempSessions ="select * from public.temp_sessions";

    private final JdbcTemplate jdbcTemplate;

    public TempSessionsDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public List<TempSessions> insertTempSessions(List<TempSessions> tempSessionsList) {
        List <TempSessions> tempSessions1= this.fetchTempSessions();
        for (TempSessions tempSessions : tempSessionsList) {
            if (tempSessions1.stream().filter(slots -> slots.getTempSessionId() == tempSessions.getTempSessionId()).findAny().orElse(null) == null) {

                jdbcTemplate.update(INSERT_TempSessions, new Object[]{
                        tempSessions.getUserId(),
                        tempSessions.getTempSessionId(),
                        tempSessions.getPractitionerId(),
                        tempSessions.getApptBookId(),
                        tempSessions.getDate(),
                        tempSessions.getOneStart(),
                        tempSessions.getOneEnd(),
                        tempSessions.getOneType(),
                        tempSessions.getTwoStart(),
                        tempSessions.getTwoEnd(),
                        tempSessions.getTwoType(),
                        tempSessions.getThreeStart(),
                        tempSessions.getThreeEnd(),
                        tempSessions.getThreeType(),
                        tempSessions.getFourStart(),
                        tempSessions.getFourEnd(),
                        tempSessions.getFourType(),
                        tempSessions.getFiveStart(),
                        tempSessions.getFiveEnd(),
                        tempSessions.getFiveType(),
                        tempSessions.getSixStart(),
                        tempSessions.getSixEnd(),
                        tempSessions.getSixType(),
                        new Date(),
                        new Date()
                });
            }
        }
        return tempSessionsList;
    }

    @Override
    public List<TempSessions> fetchTempSessions() {
        List<TempSessions> genTempSessions =
                jdbcTemplate.query(
                        FETCH_TempSessions, new TempSessionsRowMapper());
        return genTempSessions;
    }
}
