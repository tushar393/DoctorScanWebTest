package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.dto.BookingSlotsDto;
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
    public List<BookingSlots> addingBookingSlots(@RequestBody BookingSlotsDto bookingSlotsDto){
        List<BookingSlots> bookingSlotsList = bookingSlotsDto.getData();
        List<BookingSlots> bookingSlots = bookingSlotsRepository.insertBookingSlots(bookingSlotsList);
        return bookingSlots;
    }

    @GetMapping
    public List<BookingSlots> getBookingSlots(){
        List<BookingSlots> bookingSlotsList = bookingSlotsRepository.getBookingSlots();
        return bookingSlotsList;
    }

    @PutMapping
    public GenericResponse updateBookingSlots(@RequestBody BookingSlotsDto bookingSlotsDto) {
        GenericResponse genericResponse = new GenericResponse();
        List<BookingSlots> bookingSlotsList = bookingSlotsDto.getData();
        if (bookingSlotsList.isEmpty()) {
            genericResponse.setStatus(500);
            genericResponse.setMessage("APPT BOOKSET List is empty");
        }
        genericResponse.setStatus(201);
        genericResponse.setMessage("APPT BOOKSET List updated");
        return genericResponse;
    }
}
