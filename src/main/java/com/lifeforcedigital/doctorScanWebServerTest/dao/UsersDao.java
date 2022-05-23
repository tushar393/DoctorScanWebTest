package com.lifeforcedigital.doctorScanWebServerTest.dao;

import com.lifeforcedigital.doctorScanWebServerTest.model.Users;

import java.util.List;

public interface UsersDao {
    List<Users> insertUsers(List<Users> usersList);
    List<Users> fetchUsers();
}
