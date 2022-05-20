package com.lifeforcedigital.doctorScanWebServerTest.rowMapper;

import com.lifeforcedigital.doctorScanWebServerTest.model.BookingSlots;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BookingSlotsRowMapper implements RowMapper<BookingSlots> {

    @Override
    public BookingSlots mapRow(ResultSet rs, int rowNum) throws SQLException {
        BookingSlots genPrac = new BookingSlots();
        genPrac.setId(rs.getInt("id"));
        genPrac.setUserId(rs.getInt("userId"));
        genPrac.setApptBookID(rs.getInt("apptBookID"));
        genPrac.setTimeSlotSize(rs.getInt("timeSlotSize"));
        genPrac.setStartTime(rs.getString("startTime"));
        genPrac.setEndTime(rs.getString("endTime"));
        genPrac.setDescription(rs.getString("description"));
        return genPrac;
    }
}
