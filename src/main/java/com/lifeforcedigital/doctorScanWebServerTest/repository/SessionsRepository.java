package com.lifeforcedigital.doctorScanWebServerTest.repository;

import com.lifeforcedigital.doctorScanWebServerTest.dao.BookingSlotsDao;
import com.lifeforcedigital.doctorScanWebServerTest.dao.SessionsDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.BookingSlots;
import com.lifeforcedigital.doctorScanWebServerTest.model.Sessions;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.List;

@Component
public class SessionsRepository {
    public static final String DAO_BEAN_SUFFIX = "SessionsDao";

    private BeanFactory beanFactory;
    private SessionsDao sessionsDao;

    public SessionsRepository(BeanFactory beanFactory) {
        this.beanFactory = beanFactory;
    }

    @PostConstruct
    public void init() {
        sessionsDao =
                (SessionsDao) beanFactory.getBean("App" + DAO_BEAN_SUFFIX);
    }

    public List<Sessions> insertSessions(List<Sessions> sessionsList) {
        return sessionsDao.insertSessions(sessionsList);
    }
    public List<Sessions> getSessions() {
        return sessionsDao.fetchSessions();
    }
}
