package com.lifeforcedigital.doctorScanWebServerTest.repository;

import com.lifeforcedigital.doctorScanWebServerTest.dao.AppPractitionerDao;
import com.lifeforcedigital.doctorScanWebServerTest.dao.AppointmentDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.AppPractitioner;
import com.lifeforcedigital.doctorScanWebServerTest.model.Appointment;
import com.lifeforcedigital.doctorScanWebServerTest.model.GenericResponse;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.sql.SQLException;
import java.util.List;

@Component
public class AppointmentRepository {
    public static final String DAO_BEAN_SUFFIX = "AppointmentDao";

    private BeanFactory beanFactory;
    private AppointmentDao appointmentDao;

    public AppointmentRepository(BeanFactory beanFactory) {
        this.beanFactory = beanFactory;
    }

    @PostConstruct
    public void init() {
        appointmentDao =
                (AppointmentDao) beanFactory.getBean("App" + DAO_BEAN_SUFFIX);
    }

    public List<Appointment> insertAppointment(List<Appointment> appointmentList) throws SQLException {
        return appointmentDao.insertAppointment(appointmentList);
    }
    public List<Appointment> getAppointment() {
        return appointmentDao.fetchAppointments();
    }
}
