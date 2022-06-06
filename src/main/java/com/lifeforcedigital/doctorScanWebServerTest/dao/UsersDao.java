package com.lifeforcedigital.doctorScanWebServerTest.dao;

import com.lifeforcedigital.doctorScanWebServerTest.model.AppPractitioner;
import com.lifeforcedigital.doctorScanWebServerTest.model.Users;

import java.sql.SQLException;
import java.util.List;

public interface UsersDao {
    List<AppPractitioner> insertUsers(List<AppPractitioner> usersList) throws SQLException;
    List<Users> fetchUsers();
}
