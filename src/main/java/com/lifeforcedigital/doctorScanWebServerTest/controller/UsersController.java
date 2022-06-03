package com.lifeforcedigital.doctorScanWebServerTest.controller;

import com.lifeforcedigital.doctorScanWebServerTest.model.TempSessions;
import com.lifeforcedigital.doctorScanWebServerTest.model.Users;
import com.lifeforcedigital.doctorScanWebServerTest.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/")
public class UsersController {
    @Autowired
    UsersRepository usersRepository;

    @PostMapping("/addingUsers")
    public List<Users> addingUsers(@RequestBody List<Users> usersList){
        List<Users> insertUsers = usersRepository.insertUsers(usersList);
        return insertUsers;
    }

    @GetMapping("/getUsers")
    public List<Users> getUsers(){
        List<Users> usersList = usersRepository.getUsers();
        return usersList;
    }
}
