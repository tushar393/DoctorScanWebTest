package com.lifeforcedigital.doctorScanWebServerTest.dao;

import com.lifeforcedigital.doctorScanWebServerTest.model.AppPractitioner;

import java.util.List;

public interface AppPractitionerDao {
    List<AppPractitioner> insertPrac(List<AppPractitioner> appPractitionerList);

    List<AppPractitioner> fetchPrac();

}
