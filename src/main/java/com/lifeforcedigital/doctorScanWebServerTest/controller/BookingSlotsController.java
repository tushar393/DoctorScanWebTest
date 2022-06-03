package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.model.BookingSlots;
import com.lifeforcedigital.doctorScanWebServerTest.model.GenericResponse;
import com.lifeforcedigital.doctorScanWebServerTest.repository.BookingSlotsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/sync-booking-slots")
public class BookingSlotsController {

    @Autowired
    BookingSlotsRepository bookingSlotsRepository;

    @PostMapping
    public List<BookingSlots> addingBookingSlots(@RequestBody List<BookingSlots> bookingSlotsList){
        List<BookingSlots> bookingSlots = bookingSlotsRepository.insertBookingSlots(bookingSlotsList);
        return bookingSlots;
    }

    @GetMapping
    public List<BookingSlots> getBookingSlots(){
        List<BookingSlots> bookingSlotsList = bookingSlotsRepository.getBookingSlots();
        return bookingSlotsList;
    }

    @PutMapping
    public GenericResponse updateBookingSlots(@RequestBody List<BookingSlots> bookingSlotsList) {
        GenericResponse genericResponse = new GenericResponse();
        if (bookingSlotsList.isEmpty()) {
            genericResponse.setStatus(500);
            genericResponse.setMsg("APPT BOOKSET List is empty");
        }
        genericResponse.setStatus(201);
        genericResponse.setMsg("APPT BOOKSET List updated");
        return genericResponse;
    }
}
