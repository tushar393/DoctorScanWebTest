package com.lifeforcedigital.doctorScanWebServerTest.rowMapper;

import com.lifeforcedigital.doctorScanWebServerTest.model.TempSessions;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class TempSessionsRowMapper implements RowMapper<TempSessions> {


    @Override
    public TempSessions mapRow(ResultSet rs, int rowNum) throws SQLException {
        TempSessions genPrac = new TempSessions();
        genPrac.setId(rs.getInt("id"));
        genPrac.setUserId(rs.getInt("userId"));
        genPrac.setTempSessionId(rs.getInt("tempSessionId"));
        genPrac.setPractitionerId(rs.getInt("practitionerId"));
        genPrac.setApptBookId(rs.getInt("apptBookId"));
        genPrac.setDate(rs.getString("date"));

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
