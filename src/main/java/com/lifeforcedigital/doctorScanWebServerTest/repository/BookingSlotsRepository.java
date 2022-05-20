package com.lifeforcedigital.doctorScanWebServerTest.repository;

import com.lifeforcedigital.doctorScanWebServerTest.dao.BookingSlotsDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.BookingSlots;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.List;

@Component
public class BookingSlotsRepository {

    public static final String DAO_BEAN_SUFFIX = "BookingDao";

    private BeanFactory beanFactory;
    private BookingSlotsDao appBookingDao;

    public BookingSlotsRepository(BeanFactory beanFactory) {
        this.beanFactory = beanFactory;
    }

    @PostConstruct
    public void init() {
        appBookingDao =
                (BookingSlotsDao) beanFactory.getBean("App" + DAO_BEAN_SUFFIX);
    }

    public List<BookingSlots> insertBookingSlots(List<BookingSlots> bookingSlotsList) {
        return appBookingDao.insertBookingSlots(bookingSlotsList);
    }
    public List<BookingSlots> getBookingSlots() {
        return appBookingDao.fetchBookingSlots();
    }
}
