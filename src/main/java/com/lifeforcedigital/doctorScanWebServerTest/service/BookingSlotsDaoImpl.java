package com.lifeforcedigital.doctorScanWebServerTest.service;

import com.lifeforcedigital.doctorScanWebServerTest.dao.BookingSlotsDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.BookingSlots;
import com.lifeforcedigital.doctorScanWebServerTest.rowMapper.BookingSlotsRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository("AppBookingDao")
public class BookingSlotsDaoImpl implements BookingSlotsDao {

    private static final String INSERT_Booking_Slots =
            "INSERT INTO public.booking_slots (\"userId\", \"apptBookID\", \"timeSlotSize\", \"startTime\", \"endTime\", \"description\",\"createdAt\",\"updatedAt\") VALUES(?,?,?,?,?,?,?,?)";

    private static final String FETCH_Booking_Slots ="select * from public.booking_slots";
//    private static final String APPT_BOOKID_PRESENT ="select * from public.booking_slots";

    private final JdbcTemplate jdbcTemplate;

    public BookingSlotsDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public List<BookingSlots> insertBookingSlots(List<BookingSlots> bookingSlotsList) {

        for (BookingSlots bookingSlots : bookingSlotsList) {

            jdbcTemplate.update(INSERT_Booking_Slots, new Object[]{
                    bookingSlots.getUserId(),
                    bookingSlots.getApptBookID(),
                    bookingSlots.getTimeSlotSize(),
                    bookingSlots.getStartTime(),
                    bookingSlots.getEndTime(),
                    bookingSlots.getDescription(),
                    new Date(),
                    new Date()
            });
        }
        return bookingSlotsList;
    }

    @Override
    public List<BookingSlots> fetchBookingSlots() {
        List<BookingSlots> genBookingSlots =
                jdbcTemplate.query(
                        FETCH_Booking_Slots, new BookingSlotsRowMapper());
        return genBookingSlots;
    }

//    public List<BookingSlots> isapptBookIdPresent() {
//        List<BookingSlots> genBookingSlots =
//                jdbcTemplate.query(
//                        FETCH_Booking_Slots, new BookingSlotsRowMapper());
//        return genBookingSlots;
//    }
}
