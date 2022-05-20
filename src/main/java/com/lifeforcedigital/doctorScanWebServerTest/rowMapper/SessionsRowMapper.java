package com.lifeforcedigital.doctorScanWebServerTest.rowMapper;

import com.lifeforcedigital.doctorScanWebServerTest.model.Sessions;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SessionsRowMapper implements RowMapper<Sessions> {

    @Override
    public Sessions mapRow(ResultSet rs, int rowNum) throws SQLException {
        Sessions genPrac = new Sessions();
        genPrac.setId(rs.getInt("id"));
        genPrac.setUserId(rs.getInt("userId"));
        genPrac.setSessionId(rs.getInt("sessionId"));
        genPrac.setPractitionerId(rs.getInt("practitionerId"));
        genPrac.setDayOfWk(rs.getInt("dayOfWk"));
        genPrac.setApptBookId(rs.getInt("apptBookId"));

        genPrac.setOneStart(rs.getString("oneStart"));
        genPrac.setOneEnd(rs.getString("oneEnd"));
        genPrac.setOneType(rs.getInt("oneType"));

        genPrac.setTwoStart(rs.getString("twoStart"));
        genPrac.setTwoEnd(rs.getString("twoEnd"));
        genPrac.setTwoType(rs.getInt("twoType"));

        genPrac.setThreeStart(rs.getString("threeStart"));
        genPrac.setThreeEnd(rs.getString("threeEnd"));
        genPrac.setThreeType(rs.getInt("threeType"));

        genPrac.setFourStart(rs.getString("fourStart"));
        genPrac.setFourEnd(rs.getString("fourEnd"));
        genPrac.setFourType(rs.getInt("fourType"));

        genPrac.setFiveStart(rs.getString("fiveStart"));
        genPrac.setFiveEnd(rs.getString("fiveEnd"));
        genPrac.setFiveType(rs.getInt("fiveType"));

        genPrac.setSixStart(rs.getString("sixStart"));
        genPrac.setSixEnd(rs.getString("sixEnd"));
        genPrac.setSixType(rs.getInt("sixType"));

        return genPrac;
    }
}
