package com.lifeforcedigital.doctorScanWebServerTest.dao;

import com.lifeforcedigital.doctorScanWebServerTest.model.BookingSlots;

import java.util.List;

public interface BookingSlotsDao {
    List<BookingSlots> insertBookingSlots(List<BookingSlots> bookingSlotsList);
    List<BookingSlots> updateBookingSlots(List<BookingSlots> bookingSlotsList);

    List<BookingSlots> fetchBookingSlots();
}
