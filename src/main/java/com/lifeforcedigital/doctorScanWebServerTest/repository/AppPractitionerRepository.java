package com.lifeforcedigital.doctorScanWebServerTest.repository;

import com.lifeforcedigital.doctorScanWebServerTest.dao.AppPractitionerDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.AppPractitioner;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.List;

@Component
public class AppPractitionerRepository {

    public static final String DAO_BEAN_SUFFIX = "PracDao";

    private BeanFactory beanFactory;
    private AppPractitionerDao appPracdao;

    public AppPractitionerRepository(BeanFactory beanFactory) {
        this.beanFactory = beanFactory;
    }

    @PostConstruct
    public void init() {
        appPracdao =
                (AppPractitionerDao) beanFactory.getBean("App" + DAO_BEAN_SUFFIX);
    }

    public List<AppPractitioner> insertPrac(List<AppPractitioner> appPractitionerList) {
        return appPracdao.insertPrac(appPractitionerList);
    }
    public List<AppPractitioner> getPrac() {
        return appPracdao.fetchPrac();
    }
}
