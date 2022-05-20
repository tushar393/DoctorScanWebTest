package com.lifeforcedigital.doctorScanWebServerTest.repository;

import com.lifeforcedigital.doctorScanWebServerTest.dao.TempSessionsDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.TempSessions;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.List;

@Component
public class TempSessionsRepository {

    public static final String DAO_BEAN_SUFFIX = "TempSessionsDao";

    private BeanFactory beanFactory;
    private TempSessionsDao tempSessionsDao;

    public TempSessionsRepository(BeanFactory beanFactory) {
        this.beanFactory = beanFactory;
    }

    @PostConstruct
    public void init() {
        tempSessionsDao =
                (TempSessionsDao) beanFactory.getBean("App" + DAO_BEAN_SUFFIX);
    }

    public List<TempSessions> insertTempSessions(List<TempSessions> tempSessionsList) {
        return tempSessionsDao.insertTempSessions(tempSessionsList);
    }
    public List<TempSessions> getTempSessions() {
        return tempSessionsDao.fetchTempSessions();
    }
}
