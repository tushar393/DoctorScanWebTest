package com.lifeforcedigital.doctorScanWebServerTest.repository;

import com.lifeforcedigital.doctorScanWebServerTest.dao.CancelAppointmentDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.CancelAppointment;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.sql.SQLException;
import java.util.List;

@Component
public class CancelAppointmentRepository {
    public static final String DAO_BEAN_SUFFIX = "CancelAppointmentDao";

    private BeanFactory beanFactory;
    private CancelAppointmentDao cancelAppointmentDao;

    public CancelAppointmentRepository(BeanFactory beanFactory) {
        this.beanFactory = beanFactory;
    }

    @PostConstruct
    public void init() {
        cancelAppointmentDao =
                (CancelAppointmentDao) beanFactory.getBean("App" + DAO_BEAN_SUFFIX);
    }

    public List<CancelAppointment> insertCancelAppointment(List<CancelAppointment> cancelAppointmentList) throws SQLException {
        return cancelAppointmentDao.insertCancelAppointment(cancelAppointmentList);
    }
    public List<CancelAppointment> getCancelAppointment() {
        return cancelAppointmentDao.fetchCancelAppointment();
    }
}
