package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.model.BookingSlots;
import com.lifeforcedigital.doctorScanWebServerTest.repository.BookingSlotsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class BookingSlotsController {

    @Autowired
    BookingSlotsRepository bookingSlotsRepository;

    @PostMapping("/addingBookingSlots")
    public List<BookingSlots> addingBookingSlots(@RequestBody List<BookingSlots> bookingSlotsList){
        List<BookingSlots> bookingSlots = bookingSlotsRepository.insertBookingSlots(bookingSlotsList);
        return bookingSlots;
    }

    @GetMapping("/getBookingSlots")
    public List<BookingSlots> getBookingSlots(){
        List<BookingSlots> bookingSlotsList = bookingSlotsRepository.getBookingSlots();
        return bookingSlotsList;
    }
}
