package com.lifeforcedigital.doctorScanWebServerTest.repository;

import com.lifeforcedigital.doctorScanWebServerTest.dao.PatientDetailsDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.PatientDetails;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.List;

@Component
public class PatientDetailsRepository {
    public static final String DAO_BEAN_SUFFIX = "PatientDetailsDao";

    private BeanFactory beanFactory;
    private PatientDetailsDao patientDetailsDao;

    public PatientDetailsRepository(BeanFactory beanFactory) {
        this.beanFactory = beanFactory;
    }

    @PostConstruct
    public void init() {
        patientDetailsDao =
                (PatientDetailsDao) beanFactory.getBean("App" + DAO_BEAN_SUFFIX);
    }

    public List<PatientDetails> insertPatientDetails(List<PatientDetails> patientDetailsList) {
        return patientDetailsDao.insertPatientDetails(patientDetailsList);
    }
    public List<PatientDetails> getPatientDetails() {
        return patientDetailsDao.fetchPatientDetails();
    }
}
