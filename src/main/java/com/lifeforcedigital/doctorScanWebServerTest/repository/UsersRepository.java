package com.lifeforcedigital.doctorScanWebServerTest.repository;

import com.lifeforcedigital.doctorScanWebServerTest.dao.UsersDao;
import com.lifeforcedigital.doctorScanWebServerTest.model.Users;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.List;

@Component
public class UsersRepository {
    public static final String DAO_BEAN_SUFFIX = "UsersDao";

    private BeanFactory beanFactory;
    private UsersDao usersDao;

    public UsersRepository(BeanFactory beanFactory) {
        this.beanFactory = beanFactory;
    }

    @PostConstruct
    public void init() {
        usersDao =
                (UsersDao) beanFactory.getBean("App" + DAO_BEAN_SUFFIX);
    }

    public List<Users> insertUsers(List<Users> usersList) {
        return usersDao.insertUsers(usersList);
    }
    public List<Users> getUsers() {
        return usersDao.fetchUsers();
    }
}
