package com.lifeforcedigital.doctorScanWebServerTest.service;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class ClearDbDaoImpl {

    private static final String CLEAR_DB_appointments=
            "DELETE FROM public.appointments";
    private static final String CLEAR_DB_login_histories=
            "DELETE FROM public.login_histories";
    private static final String CLEAR_DB_room_users=
            "DELETE FROM public.room_users";
    private static final String CLEAR_DB_user_rooms=
            "DELETE FROM public.user_rooms";
    private static final String CLEAR_DB_message_viewers=
            "DELETE FROM public.message_viewers";
    private static final String CLEAR_DB_user_conversations=
            "DELETE FROM public.user_conversations";
    private static final String CLEAR_DB_user_practitioners=
            "DELETE FROM public.user_practitioners";
    private static final String CLEAR_DB_patient_details=
            "DELETE FROM public.patient_details";
    private static final String CLEAR_DB_clinic_infos=
            "DELETE FROM public.clinic_infos";
    private static final String CLEAR_DB_clinic_user_types=
            "DELETE FROM public.clinic_user_types";
    private static final String CLEAR_DB_transaction_logs=
            "DELETE FROM public.transaction_logs";
    private static final String CLEAR_DB_audio_call_logs=
            "DELETE FROM public.audio_call_logs";
    private static final String CLEAR_DB_user_fcm_tokens=
            "DELETE FROM public.user_fcm_tokens";
    private static final String CLEAR_DB_sessions=
            "DELETE FROM public.sessions";
    private static final String CLEAR_DB_app_practitioners=
            "DELETE FROM public.app_practitioners";
    private static final String CLEAR_DB_booking_slots=
            "DELETE FROM public.booking_slots";
    private static final String CLEAR_DB_system_infos=
            "DELETE FROM public.system_infos";
    private static final String CLEAR_DB_users=
            "DELETE FROM public.users u WHERE u.\"id\"!=1 AND \"id\"!=2";


    private final JdbcTemplate jdbcTemplate;

    public ClearDbDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void clearDb(){
        jdbcTemplate.update(CLEAR_DB_appointments);
        jdbcTemplate.update(CLEAR_DB_login_histories);
        jdbcTemplate.update(CLEAR_DB_room_users);
        jdbcTemplate.update(CLEAR_DB_user_rooms);
        jdbcTemplate.update(CLEAR_DB_message_viewers);
        jdbcTemplate.update(CLEAR_DB_user_conversations);
        jdbcTemplate.update(CLEAR_DB_user_practitioners);
        jdbcTemplate.update(CLEAR_DB_patient_details);
        jdbcTemplate.update(CLEAR_DB_clinic_infos);
        jdbcTemplate.update(CLEAR_DB_clinic_user_types);
        jdbcTemplate.update(CLEAR_DB_transaction_logs);
        jdbcTemplate.update(CLEAR_DB_audio_call_logs);
        jdbcTemplate.update(CLEAR_DB_user_fcm_tokens);
        jdbcTemplate.update(CLEAR_DB_sessions);
        jdbcTemplate.update(CLEAR_DB_app_practitioners);
        jdbcTemplate.update(CLEAR_DB_booking_slots);
        jdbcTemplate.update(CLEAR_DB_system_infos);
        jdbcTemplate.update(CLEAR_DB_users);
    }
}
