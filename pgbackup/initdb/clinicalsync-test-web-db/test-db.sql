\connect test

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 18037)
-- Name: DumpData; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."DumpData" (
    id integer NOT NULL,
    type character varying(255),
    body text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 216 (class 1259 OID 18042)
-- Name: DumpData_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."DumpData_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4880 (class 0 OID 0)
-- Dependencies: 216
-- Name: DumpData_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."DumpData_id_seq" OWNED BY public."DumpData".id;


--
-- TOC entry 217 (class 1259 OID 18043)
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


--
-- TOC entry 218 (class 1259 OID 18046)
-- Name: app_practitioners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.app_practitioners (
    id integer NOT NULL,
    "userId" integer,
    "apptBookID" integer,
    "pracID" integer,
    "practitionerID" integer,
    practitioner character varying(100),
    location character varying(100),
    name character varying(100),
    email character varying(100),
    "phoneNo" character varying(100),
    status character varying(10) DEFAULT 'A'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 219 (class 1259 OID 18052)
-- Name: app_practitioners_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.app_practitioners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4881 (class 0 OID 0)
-- Dependencies: 219
-- Name: app_practitioners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.app_practitioners_id_seq OWNED BY public.app_practitioners.id;


--
-- TOC entry 220 (class 1259 OID 18053)
-- Name: appointments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.appointments (
    id integer NOT NULL,
    "apptID" integer,
    "apptTypeId" integer,
    "practitionerID" integer,
    "practiceId" integer,
    "patientID" integer,
    practitioner_id integer,
    patient_id integer,
    "urNo" character varying(100),
    type integer,
    description character varying(100),
    "when" character varying(100),
    flag integer,
    "user" character varying(100),
    dts character varying(100),
    "lockID" integer,
    "apptBookID" integer,
    "timeInWaitRoom" character varying(100),
    "timeInConsult" character varying(100),
    "timeGone" character varying(50),
    "almsExportDate" character varying(100),
    arrived character varying(100),
    "smsFlag" character varying(100) DEFAULT 0,
    "bookingFor" character varying(100),
    "bookFrom" smallint DEFAULT 1,
    "callUrl" character varying(100),
    "audioCallUrl" character varying(100),
    status smallint DEFAULT 1,
    "deviceType" character varying(10) DEFAULT 'W'::character varying,
    "isSync" boolean DEFAULT false,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 221 (class 1259 OID 18063)
-- Name: appointments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.appointments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4882 (class 0 OID 0)
-- Dependencies: 221
-- Name: appointments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.appointments_id_seq OWNED BY public.appointments.id;


--
-- TOC entry 222 (class 1259 OID 18064)
-- Name: appt_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.appt_types (
    id integer NOT NULL,
    name character varying(255),
    is_online boolean DEFAULT false,
    check_reason boolean DEFAULT false,
    set_message boolean DEFAULT false,
    message text,
    "isTeleHealth" boolean DEFAULT false,
    allow_existing_patient boolean DEFAULT false,
    appointment_length_e_p character varying(100),
    show_tearms_e_p boolean DEFAULT false,
    terms_e_p text,
    allow_new_patient boolean DEFAULT false,
    appointment_length_n_p character varying(100),
    show_tearms_n_p boolean DEFAULT false,
    terms_n_p text,
    link_e_p integer,
    link_n_p integer,
    practitioner character varying(255),
    status smallint DEFAULT 1,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 223 (class 1259 OID 18078)
-- Name: appt_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.appt_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4883 (class 0 OID 0)
-- Dependencies: 223
-- Name: appt_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.appt_types_id_seq OWNED BY public.appt_types.id;


--
-- TOC entry 224 (class 1259 OID 18079)
-- Name: area_of_interests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.area_of_interests (
    id integer NOT NULL,
    name character varying(255),
    "createdBy" integer DEFAULT 0,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 225 (class 1259 OID 18083)
-- Name: area_of_interests_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.area_of_interests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4884 (class 0 OID 0)
-- Dependencies: 225
-- Name: area_of_interests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.area_of_interests_id_seq OWNED BY public.area_of_interests.id;


--
-- TOC entry 226 (class 1259 OID 18084)
-- Name: audio_call_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.audio_call_logs (
    id integer NOT NULL,
    "from" integer,
    "to" integer,
    status smallint DEFAULT 1,
    "readStatus" smallint DEFAULT 0,
    "receivedAt" timestamp with time zone DEFAULT '2022-05-12 16:38:39.287+10'::timestamp with time zone,
    "completedAt" timestamp with time zone DEFAULT '2022-05-12 16:38:39.287+10'::timestamp with time zone,
    "callType" smallint DEFAULT 1,
    "appointmentId" integer,
    "callDuration" integer DEFAULT 0,
    "callSid" character varying(255),
    "originalResponse" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 227 (class 1259 OID 18095)
-- Name: audio_call_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.audio_call_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4885 (class 0 OID 0)
-- Dependencies: 227
-- Name: audio_call_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.audio_call_logs_id_seq OWNED BY public.audio_call_logs.id;


--
-- TOC entry 228 (class 1259 OID 18096)
-- Name: audio_call_statuses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.audio_call_statuses (
    id integer NOT NULL,
    "from" character varying(255),
    "to" character varying(255),
    "callStatus" character varying(255),
    direction character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 229 (class 1259 OID 18101)
-- Name: audio_call_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.audio_call_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4886 (class 0 OID 0)
-- Dependencies: 229
-- Name: audio_call_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.audio_call_statuses_id_seq OWNED BY public.audio_call_statuses.id;


--
-- TOC entry 230 (class 1259 OID 18102)
-- Name: awaiting_queue_voices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.awaiting_queue_voices (
    id integer NOT NULL,
    doctor_id integer,
    user_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 231 (class 1259 OID 18105)
-- Name: awaiting_queue_voices_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.awaiting_queue_voices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4887 (class 0 OID 0)
-- Dependencies: 231
-- Name: awaiting_queue_voices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.awaiting_queue_voices_id_seq OWNED BY public.awaiting_queue_voices.id;


--
-- TOC entry 232 (class 1259 OID 18106)
-- Name: awaiting_queues; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.awaiting_queues (
    id integer NOT NULL,
    room_id integer,
    user_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 233 (class 1259 OID 18109)
-- Name: awaiting_queues_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.awaiting_queues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4888 (class 0 OID 0)
-- Dependencies: 233
-- Name: awaiting_queues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.awaiting_queues_id_seq OWNED BY public.awaiting_queues.id;


--
-- TOC entry 234 (class 1259 OID 18110)
-- Name: booking_slots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.booking_slots (
    id integer NOT NULL,
    "userId" integer,
    "apptBookID" integer,
    "timeSlotSize" integer,
    "startTime" character varying(100),
    "endTime" character varying(100),
    description text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 235 (class 1259 OID 18115)
-- Name: booking_slots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.booking_slots_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4889 (class 0 OID 0)
-- Dependencies: 235
-- Name: booking_slots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.booking_slots_id_seq OWNED BY public.booking_slots.id;


--
-- TOC entry 236 (class 1259 OID 18116)
-- Name: chat_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chat_users (
    id integer NOT NULL,
    "roomId" integer,
    "userId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 237 (class 1259 OID 18119)
-- Name: chat_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.chat_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4890 (class 0 OID 0)
-- Dependencies: 237
-- Name: chat_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.chat_users_id_seq OWNED BY public.chat_users.id;


--
-- TOC entry 238 (class 1259 OID 18120)
-- Name: clinic_infos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clinic_infos (
    id integer NOT NULL,
    "userId" integer,
    "publishProfile" boolean DEFAULT false,
    monday json,
    tuesday json,
    wednesday json,
    thursday json,
    friday json,
    saturday json,
    sunday json,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 239 (class 1259 OID 18126)
-- Name: clinic_infos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clinic_infos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4891 (class 0 OID 0)
-- Dependencies: 239
-- Name: clinic_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clinic_infos_id_seq OWNED BY public.clinic_infos.id;


--
-- TOC entry 240 (class 1259 OID 18127)
-- Name: clinic_invitations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clinic_invitations (
    id integer NOT NULL,
    "inviteBy" integer,
    "clinicEmail" character varying(100),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 241 (class 1259 OID 18130)
-- Name: clinic_invitations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clinic_invitations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4892 (class 0 OID 0)
-- Dependencies: 241
-- Name: clinic_invitations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clinic_invitations_id_seq OWNED BY public.clinic_invitations.id;


--
-- TOC entry 242 (class 1259 OID 18131)
-- Name: clinic_invite_doctors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clinic_invite_doctors (
    id integer NOT NULL,
    "inviteBy" integer,
    "inviteTo" integer,
    "practsoftLinkId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 243 (class 1259 OID 18134)
-- Name: clinic_invite_doctors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clinic_invite_doctors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4893 (class 0 OID 0)
-- Dependencies: 243
-- Name: clinic_invite_doctors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clinic_invite_doctors_id_seq OWNED BY public.clinic_invite_doctors.id;


--
-- TOC entry 244 (class 1259 OID 18135)
-- Name: clinic_timings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clinic_timings (
    id integer NOT NULL,
    "userId" integer,
    day_number character varying(255),
    time_from character varying(255),
    time_to character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 245 (class 1259 OID 18140)
-- Name: clinic_timings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clinic_timings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4894 (class 0 OID 0)
-- Dependencies: 245
-- Name: clinic_timings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clinic_timings_id_seq OWNED BY public.clinic_timings.id;


--
-- TOC entry 246 (class 1259 OID 18141)
-- Name: clinic_user_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clinic_user_types (
    id integer NOT NULL,
    "clinicId" integer,
    "userId" integer,
    "userType" smallint DEFAULT 6,
    "isDefault" smallint DEFAULT 0,
    "isAccepted" smallint DEFAULT 0,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 247 (class 1259 OID 18147)
-- Name: clinic_user_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clinic_user_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4895 (class 0 OID 0)
-- Dependencies: 247
-- Name: clinic_user_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clinic_user_types_id_seq OWNED BY public.clinic_user_types.id;


--
-- TOC entry 248 (class 1259 OID 18148)
-- Name: dump_data; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dump_data (
    id integer NOT NULL,
    type character varying(255),
    body text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 249 (class 1259 OID 18153)
-- Name: dump_data_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dump_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4896 (class 0 OID 0)
-- Dependencies: 249
-- Name: dump_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dump_data_id_seq OWNED BY public.dump_data.id;


--
-- TOC entry 250 (class 1259 OID 18154)
-- Name: email_templates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.email_templates (
    id integer NOT NULL,
    user_id integer,
    type character varying(100),
    subject character varying(100),
    body text,
    status smallint DEFAULT 1,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 251 (class 1259 OID 18160)
-- Name: email_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.email_templates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4897 (class 0 OID 0)
-- Dependencies: 251
-- Name: email_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.email_templates_id_seq OWNED BY public.email_templates.id;


--
-- TOC entry 252 (class 1259 OID 18161)
-- Name: facilities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.facilities (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 253 (class 1259 OID 18164)
-- Name: facilities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.facilities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4898 (class 0 OID 0)
-- Dependencies: 253
-- Name: facilities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.facilities_id_seq OWNED BY public.facilities.id;


--
-- TOC entry 254 (class 1259 OID 18165)
-- Name: favourite_contacts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.favourite_contacts (
    id integer NOT NULL,
    user_id integer,
    favourite_id integer,
    status smallint DEFAULT 0,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 255 (class 1259 OID 18169)
-- Name: favourite_contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.favourite_contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4899 (class 0 OID 0)
-- Dependencies: 255
-- Name: favourite_contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.favourite_contacts_id_seq OWNED BY public.favourite_contacts.id;


--
-- TOC entry 256 (class 1259 OID 18170)
-- Name: favourite_rooms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.favourite_rooms (
    id integer NOT NULL,
    user_id integer,
    room_id integer,
    status smallint DEFAULT 0,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 257 (class 1259 OID 18174)
-- Name: favourite_rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.favourite_rooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4900 (class 0 OID 0)
-- Dependencies: 257
-- Name: favourite_rooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.favourite_rooms_id_seq OWNED BY public.favourite_rooms.id;


--
-- TOC entry 258 (class 1259 OID 18175)
-- Name: favourites; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.favourites (
    id integer NOT NULL,
    user_id integer,
    practice_id integer,
    practitioner_id integer,
    type smallint DEFAULT 2,
    status smallint DEFAULT 1,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 259 (class 1259 OID 18180)
-- Name: favourites_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.favourites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4901 (class 0 OID 0)
-- Dependencies: 259
-- Name: favourites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.favourites_id_seq OWNED BY public.favourites.id;


--
-- TOC entry 260 (class 1259 OID 18181)
-- Name: forgot_passwords; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forgot_passwords (
    id integer NOT NULL,
    "userId" integer,
    "userType" integer,
    "resetToken" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 261 (class 1259 OID 18186)
-- Name: forgot_passwords_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.forgot_passwords_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4902 (class 0 OID 0)
-- Dependencies: 261
-- Name: forgot_passwords_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.forgot_passwords_id_seq OWNED BY public.forgot_passwords.id;


--
-- TOC entry 262 (class 1259 OID 18187)
-- Name: hide_sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hide_sessions (
    id integer NOT NULL,
    "practitionerId" integer,
    "startTime" character varying(100),
    "endTime" character varying(100),
    "repeatType" character varying(100),
    "endDate" character varying(100),
    description text,
    status smallint DEFAULT 0,
    "userId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 263 (class 1259 OID 18193)
-- Name: hide_sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.hide_sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4903 (class 0 OID 0)
-- Dependencies: 263
-- Name: hide_sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.hide_sessions_id_seq OWNED BY public.hide_sessions.id;


--
-- TOC entry 264 (class 1259 OID 18194)
-- Name: invitations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.invitations (
    id integer NOT NULL,
    room_id integer,
    invite_by integer,
    invitation_for integer,
    invite_email character varying(100),
    room_type smallint DEFAULT 2,
    status smallint DEFAULT 1,
    invitation_type smallint DEFAULT 1,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 265 (class 1259 OID 18200)
-- Name: invitations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.invitations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4904 (class 0 OID 0)
-- Dependencies: 265
-- Name: invitations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.invitations_id_seq OWNED BY public.invitations.id;


--
-- TOC entry 266 (class 1259 OID 18201)
-- Name: languages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.languages (
    id integer NOT NULL,
    name character varying(255),
    iso character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 267 (class 1259 OID 18206)
-- Name: languages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.languages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4905 (class 0 OID 0)
-- Dependencies: 267
-- Name: languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.languages_id_seq OWNED BY public.languages.id;


--
-- TOC entry 268 (class 1259 OID 18207)
-- Name: login_histories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.login_histories (
    id integer NOT NULL,
    "userId" integer,
    "loginDeviceDetails" text,
    "loginIp" character varying(100),
    "loginLocation" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 269 (class 1259 OID 18212)
-- Name: login_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.login_histories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4906 (class 0 OID 0)
-- Dependencies: 269
-- Name: login_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.login_histories_id_seq OWNED BY public.login_histories.id;


--
-- TOC entry 270 (class 1259 OID 18213)
-- Name: message_viewers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.message_viewers (
    id integer NOT NULL,
    message_id integer,
    room_id integer,
    viewer_id integer,
    status smallint DEFAULT 1,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 271 (class 1259 OID 18217)
-- Name: message_viewers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.message_viewers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4907 (class 0 OID 0)
-- Dependencies: 271
-- Name: message_viewers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.message_viewers_id_seq OWNED BY public.message_viewers.id;


--
-- TOC entry 272 (class 1259 OID 18218)
-- Name: message_viewers_temps; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.message_viewers_temps (
    id integer NOT NULL,
    message_id integer,
    room_id integer,
    viewer_id integer,
    status smallint DEFAULT 1,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 273 (class 1259 OID 18222)
-- Name: message_viewers_temps_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.message_viewers_temps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4908 (class 0 OID 0)
-- Dependencies: 273
-- Name: message_viewers_temps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.message_viewers_temps_id_seq OWNED BY public.message_viewers_temps.id;


--
-- TOC entry 274 (class 1259 OID 18223)
-- Name: music_lists; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.music_lists (
    id integer NOT NULL,
    name character varying(255),
    link text,
    created_by integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 275 (class 1259 OID 18228)
-- Name: music_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.music_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4909 (class 0 OID 0)
-- Dependencies: 275
-- Name: music_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.music_lists_id_seq OWNED BY public.music_lists.id;


--
-- TOC entry 276 (class 1259 OID 18229)
-- Name: notification_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.notification_settings (
    id integer NOT NULL,
    "userId" integer,
    system_email boolean DEFAULT false,
    system_push boolean DEFAULT false,
    system_text boolean DEFAULT false,
    clinic_chat_email boolean DEFAULT false,
    clinic_chat_push boolean DEFAULT false,
    doctor_chat_fax_call_email boolean DEFAULT false,
    doctor_chat_fax_call_push boolean DEFAULT false,
    doctor_chat_fax_call_text boolean DEFAULT false,
    clinic_fax_received boolean DEFAULT false,
    clinic_new_doctor_register boolean DEFAULT false,
    clinic_doctor_not_visible boolean DEFAULT false,
    clinic_doctor_visible boolean DEFAULT false,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 277 (class 1259 OID 18244)
-- Name: notification_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.notification_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4910 (class 0 OID 0)
-- Dependencies: 277
-- Name: notification_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.notification_settings_id_seq OWNED BY public.notification_settings.id;


--
-- TOC entry 278 (class 1259 OID 18245)
-- Name: notification_sounds; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.notification_sounds (
    id integer NOT NULL,
    "userId" integer,
    "fileOriginalName" character varying(255),
    "fileUniqueName" character varying(255),
    "fileSize" character varying(255),
    "fileType" character varying(255),
    "filePath" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 279 (class 1259 OID 18250)
-- Name: notification_sounds_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.notification_sounds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4911 (class 0 OID 0)
-- Dependencies: 279
-- Name: notification_sounds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.notification_sounds_id_seq OWNED BY public.notification_sounds.id;


--
-- TOC entry 280 (class 1259 OID 18251)
-- Name: notification_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.notification_types (
    id integer NOT NULL,
    flag character varying(255),
    "notificationName" character varying(255),
    "notificationPriority" smallint DEFAULT 1,
    description text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 281 (class 1259 OID 18257)
-- Name: notification_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.notification_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 281
-- Name: notification_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.notification_types_id_seq OWNED BY public.notification_types.id;


--
-- TOC entry 282 (class 1259 OID 18258)
-- Name: notifications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.notifications (
    id integer NOT NULL,
    "notificationFor" integer,
    notificationtext text,
    "notifiedBy" integer,
    "notiType" character varying(100),
    "notiCategory" character varying(100),
    "typeId" integer,
    status smallint DEFAULT 0,
    "appointmentId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 283 (class 1259 OID 18264)
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 283
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- TOC entry 284 (class 1259 OID 18265)
-- Name: patient_alerts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.patient_alerts (
    id integer NOT NULL,
    "userId" integer,
    "lastName" character varying(100),
    dob character varying(100),
    note text,
    bookings boolean DEFAULT false,
    "checkIn" boolean DEFAULT false,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 285 (class 1259 OID 18272)
-- Name: patient_alerts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.patient_alerts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4914 (class 0 OID 0)
-- Dependencies: 285
-- Name: patient_alerts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.patient_alerts_id_seq OWNED BY public.patient_alerts.id;


--
-- TOC entry 286 (class 1259 OID 18273)
-- Name: patient_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.patient_details (
    id integer NOT NULL,
    "patientId" integer,
    "medicareNumber" character varying(100),
    "medicareIndex" character varying(100),
    "medicareExpDate" character varying(100),
    "medicareGender" character varying(100),
    "insuranceNumber" character varying(100),
    "insuranceCompanyID" character varying(100),
    "insuranceType" character varying(100),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 287 (class 1259 OID 18278)
-- Name: patient_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.patient_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 287
-- Name: patient_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.patient_details_id_seq OWNED BY public.patient_details.id;


--
-- TOC entry 288 (class 1259 OID 18279)
-- Name: practitioner_appointment_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.practitioner_appointment_types (
    id integer NOT NULL,
    practitioner_id integer,
    appointment_type_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 289 (class 1259 OID 18282)
-- Name: practitioner_appointment_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.practitioner_appointment_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 289
-- Name: practitioner_appointment_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.practitioner_appointment_types_id_seq OWNED BY public.practitioner_appointment_types.id;


--
-- TOC entry 290 (class 1259 OID 18283)
-- Name: practitioners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.practitioners (
    id integer NOT NULL,
    name character varying(255),
    email character varying(100),
    phone character varying(100),
    gender character varying(100),
    profession character varying(100),
    qualifications character varying(100),
    education character varying(100),
    language character varying(100),
    "areas_of_Interest" character varying(100),
    professional_statement text,
    profile_image character varying(100),
    "allowPatienttoBookStatus" boolean DEFAULT false,
    "patientApointmentFutureDays" integer,
    "onlineBookingVisibleStatus" boolean DEFAULT false,
    "tellNewPatientStatus" boolean DEFAULT false,
    app_practitioner integer,
    status smallint DEFAULT 1,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 291 (class 1259 OID 18292)
-- Name: practitioners_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.practitioners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 291
-- Name: practitioners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.practitioners_id_seq OWNED BY public.practitioners.id;


--
-- TOC entry 292 (class 1259 OID 18293)
-- Name: professions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.professions (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 293 (class 1259 OID 18296)
-- Name: professions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.professions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 293
-- Name: professions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.professions_id_seq OWNED BY public.professions.id;


--
-- TOC entry 294 (class 1259 OID 18297)
-- Name: qualifications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.qualifications (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 295 (class 1259 OID 18300)
-- Name: qualifications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.qualifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 295
-- Name: qualifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.qualifications_id_seq OWNED BY public.qualifications.id;


--
-- TOC entry 296 (class 1259 OID 18301)
-- Name: reminders_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.reminders_settings (
    id integer NOT NULL,
    practice_id integer,
    reminder boolean,
    push_notification boolean,
    doctors json,
    reminder_msg text,
    reminder_msg_within_24hours text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 297 (class 1259 OID 18306)
-- Name: reminders_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.reminders_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 297
-- Name: reminders_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.reminders_settings_id_seq OWNED BY public.reminders_settings.id;


--
-- TOC entry 298 (class 1259 OID 18307)
-- Name: room_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.room_users (
    id integer NOT NULL,
    room_id integer,
    room_user integer,
    added_by integer,
    room_type smallint DEFAULT 1,
    usestatus smallint DEFAULT 0,
    status smallint DEFAULT 1,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userNotification" boolean DEFAULT true
);


--
-- TOC entry 299 (class 1259 OID 18314)
-- Name: room_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.room_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 299
-- Name: room_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.room_users_id_seq OWNED BY public.room_users.id;


--
-- TOC entry 300 (class 1259 OID 18315)
-- Name: sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    "userId" integer,
    "sessionId" integer,
    "practitionerId" integer,
    "dayOfWk" smallint,
    "apptBookId" integer,
    "oneStart" character varying(100),
    "oneEnd" character varying(100),
    "oneType" integer,
    "twoStart" character varying(100),
    "twoEnd" character varying(100),
    "twoType" integer,
    "threeStart" character varying(100),
    "threeEnd" character varying(100),
    "threeType" integer,
    "fourStart" character varying(50),
    "fourEnd" character varying(50),
    "fourType" integer,
    "fiveStart" character varying(100),
    "fiveEnd" character varying(100),
    "fiveType" integer,
    "sixStart" character varying(255),
    "sixEnd" character varying(10),
    "sixType" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 301 (class 1259 OID 18320)
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 301
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- TOC entry 302 (class 1259 OID 18321)
-- Name: support_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.support_users (
    id integer NOT NULL,
    user_id integer,
    supporter_id integer,
    status smallint DEFAULT 1,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 303 (class 1259 OID 18325)
-- Name: support_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.support_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 303
-- Name: support_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.support_users_id_seq OWNED BY public.support_users.id;


--
-- TOC entry 304 (class 1259 OID 18326)
-- Name: system_infos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.system_infos (
    id integer NOT NULL,
    user_id integer,
    "systemInformation" json,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 305 (class 1259 OID 18331)
-- Name: system_infos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.system_infos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 305
-- Name: system_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.system_infos_id_seq OWNED BY public.system_infos.id;


--
-- TOC entry 306 (class 1259 OID 18332)
-- Name: temp_sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.temp_sessions (
    id integer NOT NULL,
    "userId" integer,
    "tempSessionId" integer,
    "practitionerId" integer,
    "apptBookId" integer,
    date character varying(100),
    "oneStart" character varying(100),
    "oneEnd" character varying(100),
    "oneType" integer,
    "twoStart" character varying(100),
    "twoEnd" character varying(100),
    "twoType" integer,
    "threeStart" character varying(100),
    "threeEnd" character varying(100),
    "threeType" integer,
    "fourStart" character varying(50),
    "fourEnd" character varying(50),
    "fourType" integer,
    "fiveStart" character varying(100),
    "fiveEnd" character varying(100),
    "fiveType" integer,
    "sixStart" character varying(255),
    "sixEnd" character varying(10),
    "sixType" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 307 (class 1259 OID 18337)
-- Name: temp_sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.temp_sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 307
-- Name: temp_sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.temp_sessions_id_seq OWNED BY public.temp_sessions.id;


--
-- TOC entry 308 (class 1259 OID 18338)
-- Name: transaction_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.transaction_logs (
    id integer NOT NULL,
    "userId" integer,
    "practiceId" integer,
    "appointmentId" integer,
    "connectedAccountId" character varying(100),
    amount numeric(10,2),
    "balanceTransaction" character varying(255),
    "transactionDate" date,
    type smallint DEFAULT 1,
    data json,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 309 (class 1259 OID 18344)
-- Name: transaction_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.transaction_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 309
-- Name: transaction_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.transaction_logs_id_seq OWNED BY public.transaction_logs.id;


--
-- TOC entry 310 (class 1259 OID 18345)
-- Name: user_address_changes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_address_changes (
    id integer NOT NULL,
    "userId" integer,
    latitude character varying(255),
    longitude character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 311 (class 1259 OID 18350)
-- Name: user_address_changes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_address_changes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 311
-- Name: user_address_changes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_address_changes_id_seq OWNED BY public.user_address_changes.id;


--
-- TOC entry 312 (class 1259 OID 18351)
-- Name: user_conversation_temps; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_conversation_temps (
    id integer NOT NULL,
    room_id integer,
    sender_id integer,
    message text,
    "fileName" character varying(255),
    "thumbNail" character varying(255),
    "mimeType" character varying(255),
    status smallint DEFAULT 1,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 313 (class 1259 OID 18357)
-- Name: user_conversation_temps_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_conversation_temps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 313
-- Name: user_conversation_temps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_conversation_temps_id_seq OWNED BY public.user_conversation_temps.id;


--
-- TOC entry 314 (class 1259 OID 18358)
-- Name: user_conversations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_conversations (
    id integer NOT NULL,
    room_id integer,
    sender_id integer,
    message text,
    "fileName" character varying(255),
    "thumbNail" character varying(255),
    "mimeType" character varying(255),
    status smallint DEFAULT 1,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "metaData" json
);


--
-- TOC entry 315 (class 1259 OID 18364)
-- Name: user_conversations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_conversations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4929 (class 0 OID 0)
-- Dependencies: 315
-- Name: user_conversations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_conversations_id_seq OWNED BY public.user_conversations.id;


--
-- TOC entry 316 (class 1259 OID 18365)
-- Name: user_faxes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_faxes (
    id integer NOT NULL,
    user_id integer,
    receiver_id integer,
    "from" character varying(255),
    "to" character varying(255),
    media_url text,
    fax_sid character varying(255),
    twilio_response json,
    twilio_status character varying(255) DEFAULT 'queued'::character varying,
    status smallint DEFAULT 1,
    "readStatus" smallint DEFAULT 0,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 317 (class 1259 OID 18373)
-- Name: user_faxes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_faxes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 317
-- Name: user_faxes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_faxes_id_seq OWNED BY public.user_faxes.id;


--
-- TOC entry 318 (class 1259 OID 18374)
-- Name: user_fcm_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_fcm_tokens (
    id integer NOT NULL,
    user_id integer,
    "deviceId" character varying(255),
    "fcmToken" character varying(255),
    "callPushToken" character varying(255),
    "deviceType" character varying(255),
    status character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 319 (class 1259 OID 18379)
-- Name: user_fcm_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_fcm_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 319
-- Name: user_fcm_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_fcm_tokens_id_seq OWNED BY public.user_fcm_tokens.id;


--
-- TOC entry 320 (class 1259 OID 18380)
-- Name: user_notification_sounds; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_notification_sounds (
    id integer NOT NULL,
    "userId" integer,
    "notificationTypeId" integer,
    "notificationSoundId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 321 (class 1259 OID 18383)
-- Name: user_notification_sounds_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_notification_sounds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 321
-- Name: user_notification_sounds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_notification_sounds_id_seq OWNED BY public.user_notification_sounds.id;


--
-- TOC entry 322 (class 1259 OID 18384)
-- Name: user_practitioners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_practitioners (
    "practiceId" integer,
    "practitionerId" integer,
    "isActive" smallint DEFAULT 0,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 323 (class 1259 OID 18388)
-- Name: user_rooms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_rooms (
    id integer NOT NULL,
    clinic_id integer,
    created_by integer,
    chat_status smallint DEFAULT 0,
    room_type smallint DEFAULT 1,
    status smallint DEFAULT 1,
    usestatus smallint DEFAULT 0,
    "roomName" character varying(255),
    other_user integer,
    "roomCoverImage" character varying(255),
    last_messageat timestamp with time zone,
    timer_start timestamp with time zone,
    "inCallStatus" integer DEFAULT 0,
    "callUrl" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 324 (class 1259 OID 18398)
-- Name: user_rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_rooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 324
-- Name: user_rooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_rooms_id_seq OWNED BY public.user_rooms.id;


--
-- TOC entry 325 (class 1259 OID 18399)
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    "parentId" integer,
    title character varying(100),
    "firstName" character varying(100),
    "middleName" character varying(100),
    surname character varying(100),
    name character varying(100),
    "patientID" integer,
    email character varying(100),
    phone character varying(100),
    business_logo character varying(500),
    business_name character varying(500),
    waitingmusic smallint DEFAULT 3,
    dob character varying(100),
    gender character varying(100),
    country character varying(100),
    region character varying(100),
    city character varying(100),
    street1 character varying(100),
    street2 character varying(100),
    street3 character varying(100),
    suite character varying(100),
    house character varying(100),
    postcode character varying(50),
    "phnHome" character varying(100),
    "phnWork" character varying(100),
    "countryCode" character varying(100),
    "phnMobile" character varying(100),
    "phnTwilio" character varying(100),
    "faxTwilio" character varying(100),
    profile_image character varying(255),
    social_id character varying(100),
    website character varying(100),
    accreditation json,
    "fbLink" character varying(100),
    "twitterLink" character varying(100),
    "instagramLink" character varying(100),
    "wheelChairAccess" boolean DEFAULT false,
    "teleHealthOnly" character varying(100),
    facilities json,
    "paymentMethods" json,
    "billingType" character varying(100),
    "billingPolicy" text,
    "bulkBilling" json,
    "directionsParking" text,
    "alertMessage" text,
    login_type smallint DEFAULT 0,
    about text,
    password character varying(100),
    profession character varying(100),
    professionid integer,
    qualifications character varying(100),
    education character varying(100),
    "areas_of_Interest" json,
    professional_statement text,
    "allowPatienttoBookStatus" boolean DEFAULT false,
    "patientApointmentFutureDays" integer,
    "onlineBookingVisibleStatus" boolean DEFAULT false,
    "tellNewPatientStatus" boolean DEFAULT false,
    app_practitioner integer,
    bg_color character varying(100) DEFAULT '#3399ff'::character varying,
    fg_color character varying(100) DEFAULT '#ffffff'::character varying,
    "availableForVideo" smallint DEFAULT 0,
    "availableForAudio" smallint DEFAULT 1,
    location public.geometry,
    latitude character varying(255),
    longitude character varying(255),
    "stripeAccountId" character varying(100),
    "stripeVerified" boolean DEFAULT false,
    available_status smallint DEFAULT 0,
    reference character varying(255),
    "medicareNumber" character varying(255),
    "expiryDate" character varying(255),
    status smallint DEFAULT 3,
    "registrationStatus" character varying(100) DEFAULT 'verification'::character varying,
    user_type smallint DEFAULT 2,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "regPageIndex" character varying(100) DEFAULT 'complete'::character varying,
    "countryShort" character varying(100),
    language json
);


--
-- TOC entry 326 (class 1259 OID 18420)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 326
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 327 (class 1259 OID 18421)
-- Name: video_call_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.video_call_logs (
    id integer NOT NULL,
    "roomId" integer,
    "callingUserId" integer,
    "reciverUserId" integer,
    status smallint DEFAULT 1,
    "readStatus" smallint DEFAULT 0,
    calltype smallint DEFAULT 1,
    duration integer,
    appointmentid integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 328 (class 1259 OID 18427)
-- Name: video_call_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.video_call_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4935 (class 0 OID 0)
-- Dependencies: 328
-- Name: video_call_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.video_call_logs_id_seq OWNED BY public.video_call_logs.id;


--
-- TOC entry 329 (class 1259 OID 18428)
-- Name: waiting_music_by_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.waiting_music_by_users (
    id integer NOT NULL,
    user_id integer,
    music_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 330 (class 1259 OID 18431)
-- Name: waiting_music_by_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.waiting_music_by_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 330
-- Name: waiting_music_by_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.waiting_music_by_users_id_seq OWNED BY public.waiting_music_by_users.id;


--
-- TOC entry 331 (class 1259 OID 18432)
-- Name: waiting_music_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.waiting_music_types (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 332 (class 1259 OID 18435)
-- Name: waiting_music_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.waiting_music_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 332
-- Name: waiting_music_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.waiting_music_types_id_seq OWNED BY public.waiting_music_types.id;


--
-- TOC entry 4338 (class 2604 OID 18436)
-- Name: DumpData id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."DumpData" ALTER COLUMN id SET DEFAULT nextval('public."DumpData_id_seq"'::regclass);


--
-- TOC entry 4340 (class 2604 OID 18437)
-- Name: app_practitioners id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.app_practitioners ALTER COLUMN id SET DEFAULT nextval('public.app_practitioners_id_seq'::regclass);


--
-- TOC entry 4346 (class 2604 OID 18438)
-- Name: appointments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appointments ALTER COLUMN id SET DEFAULT nextval('public.appointments_id_seq'::regclass);


--
-- TOC entry 4356 (class 2604 OID 18439)
-- Name: appt_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appt_types ALTER COLUMN id SET DEFAULT nextval('public.appt_types_id_seq'::regclass);


--
-- TOC entry 4358 (class 2604 OID 18440)
-- Name: area_of_interests id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.area_of_interests ALTER COLUMN id SET DEFAULT nextval('public.area_of_interests_id_seq'::regclass);


--
-- TOC entry 4365 (class 2604 OID 18441)
-- Name: audio_call_logs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.audio_call_logs ALTER COLUMN id SET DEFAULT nextval('public.audio_call_logs_id_seq'::regclass);


--
-- TOC entry 4366 (class 2604 OID 18442)
-- Name: audio_call_statuses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.audio_call_statuses ALTER COLUMN id SET DEFAULT nextval('public.audio_call_statuses_id_seq'::regclass);


--
-- TOC entry 4367 (class 2604 OID 18443)
-- Name: awaiting_queue_voices id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.awaiting_queue_voices ALTER COLUMN id SET DEFAULT nextval('public.awaiting_queue_voices_id_seq'::regclass);


--
-- TOC entry 4368 (class 2604 OID 18444)
-- Name: awaiting_queues id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.awaiting_queues ALTER COLUMN id SET DEFAULT nextval('public.awaiting_queues_id_seq'::regclass);


--
-- TOC entry 4369 (class 2604 OID 18445)
-- Name: booking_slots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.booking_slots ALTER COLUMN id SET DEFAULT nextval('public.booking_slots_id_seq'::regclass);


--
-- TOC entry 4370 (class 2604 OID 18446)
-- Name: chat_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chat_users ALTER COLUMN id SET DEFAULT nextval('public.chat_users_id_seq'::regclass);


--
-- TOC entry 4372 (class 2604 OID 18447)
-- Name: clinic_infos id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinic_infos ALTER COLUMN id SET DEFAULT nextval('public.clinic_infos_id_seq'::regclass);


--
-- TOC entry 4373 (class 2604 OID 18448)
-- Name: clinic_invitations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinic_invitations ALTER COLUMN id SET DEFAULT nextval('public.clinic_invitations_id_seq'::regclass);


--
-- TOC entry 4374 (class 2604 OID 18449)
-- Name: clinic_invite_doctors id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinic_invite_doctors ALTER COLUMN id SET DEFAULT nextval('public.clinic_invite_doctors_id_seq'::regclass);


--
-- TOC entry 4375 (class 2604 OID 18450)
-- Name: clinic_timings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinic_timings ALTER COLUMN id SET DEFAULT nextval('public.clinic_timings_id_seq'::regclass);


--
-- TOC entry 4379 (class 2604 OID 18451)
-- Name: clinic_user_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinic_user_types ALTER COLUMN id SET DEFAULT nextval('public.clinic_user_types_id_seq'::regclass);


--
-- TOC entry 4380 (class 2604 OID 18452)
-- Name: dump_data id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dump_data ALTER COLUMN id SET DEFAULT nextval('public.dump_data_id_seq'::regclass);


--
-- TOC entry 4382 (class 2604 OID 18453)
-- Name: email_templates id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.email_templates ALTER COLUMN id SET DEFAULT nextval('public.email_templates_id_seq'::regclass);


--
-- TOC entry 4383 (class 2604 OID 18454)
-- Name: facilities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.facilities ALTER COLUMN id SET DEFAULT nextval('public.facilities_id_seq'::regclass);


--
-- TOC entry 4385 (class 2604 OID 18455)
-- Name: favourite_contacts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favourite_contacts ALTER COLUMN id SET DEFAULT nextval('public.favourite_contacts_id_seq'::regclass);


--
-- TOC entry 4387 (class 2604 OID 18456)
-- Name: favourite_rooms id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favourite_rooms ALTER COLUMN id SET DEFAULT nextval('public.favourite_rooms_id_seq'::regclass);


--
-- TOC entry 4390 (class 2604 OID 18457)
-- Name: favourites id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favourites ALTER COLUMN id SET DEFAULT nextval('public.favourites_id_seq'::regclass);


--
-- TOC entry 4391 (class 2604 OID 18458)
-- Name: forgot_passwords id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forgot_passwords ALTER COLUMN id SET DEFAULT nextval('public.forgot_passwords_id_seq'::regclass);


--
-- TOC entry 4393 (class 2604 OID 18459)
-- Name: hide_sessions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hide_sessions ALTER COLUMN id SET DEFAULT nextval('public.hide_sessions_id_seq'::regclass);


--
-- TOC entry 4397 (class 2604 OID 18460)
-- Name: invitations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.invitations ALTER COLUMN id SET DEFAULT nextval('public.invitations_id_seq'::regclass);


--
-- TOC entry 4398 (class 2604 OID 18461)
-- Name: languages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.languages ALTER COLUMN id SET DEFAULT nextval('public.languages_id_seq'::regclass);


--
-- TOC entry 4399 (class 2604 OID 18462)
-- Name: login_histories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.login_histories ALTER COLUMN id SET DEFAULT nextval('public.login_histories_id_seq'::regclass);


--
-- TOC entry 4401 (class 2604 OID 18463)
-- Name: message_viewers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.message_viewers ALTER COLUMN id SET DEFAULT nextval('public.message_viewers_id_seq'::regclass);


--
-- TOC entry 4403 (class 2604 OID 18464)
-- Name: message_viewers_temps id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.message_viewers_temps ALTER COLUMN id SET DEFAULT nextval('public.message_viewers_temps_id_seq'::regclass);


--
-- TOC entry 4404 (class 2604 OID 18465)
-- Name: music_lists id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.music_lists ALTER COLUMN id SET DEFAULT nextval('public.music_lists_id_seq'::regclass);


--
-- TOC entry 4417 (class 2604 OID 18466)
-- Name: notification_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_settings ALTER COLUMN id SET DEFAULT nextval('public.notification_settings_id_seq'::regclass);


--
-- TOC entry 4418 (class 2604 OID 18467)
-- Name: notification_sounds id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_sounds ALTER COLUMN id SET DEFAULT nextval('public.notification_sounds_id_seq'::regclass);


--
-- TOC entry 4420 (class 2604 OID 18468)
-- Name: notification_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_types ALTER COLUMN id SET DEFAULT nextval('public.notification_types_id_seq'::regclass);


--
-- TOC entry 4422 (class 2604 OID 18469)
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- TOC entry 4425 (class 2604 OID 18470)
-- Name: patient_alerts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_alerts ALTER COLUMN id SET DEFAULT nextval('public.patient_alerts_id_seq'::regclass);


--
-- TOC entry 4426 (class 2604 OID 18471)
-- Name: patient_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_details ALTER COLUMN id SET DEFAULT nextval('public.patient_details_id_seq'::regclass);


--
-- TOC entry 4427 (class 2604 OID 18472)
-- Name: practitioner_appointment_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.practitioner_appointment_types ALTER COLUMN id SET DEFAULT nextval('public.practitioner_appointment_types_id_seq'::regclass);


--
-- TOC entry 4432 (class 2604 OID 18473)
-- Name: practitioners id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.practitioners ALTER COLUMN id SET DEFAULT nextval('public.practitioners_id_seq'::regclass);


--
-- TOC entry 4433 (class 2604 OID 18474)
-- Name: professions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professions ALTER COLUMN id SET DEFAULT nextval('public.professions_id_seq'::regclass);


--
-- TOC entry 4434 (class 2604 OID 18475)
-- Name: qualifications id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.qualifications ALTER COLUMN id SET DEFAULT nextval('public.qualifications_id_seq'::regclass);


--
-- TOC entry 4435 (class 2604 OID 18476)
-- Name: reminders_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reminders_settings ALTER COLUMN id SET DEFAULT nextval('public.reminders_settings_id_seq'::regclass);


--
-- TOC entry 4440 (class 2604 OID 18477)
-- Name: room_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.room_users ALTER COLUMN id SET DEFAULT nextval('public.room_users_id_seq'::regclass);


--
-- TOC entry 4441 (class 2604 OID 18478)
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- TOC entry 4443 (class 2604 OID 18479)
-- Name: support_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.support_users ALTER COLUMN id SET DEFAULT nextval('public.support_users_id_seq'::regclass);


--
-- TOC entry 4444 (class 2604 OID 18480)
-- Name: system_infos id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.system_infos ALTER COLUMN id SET DEFAULT nextval('public.system_infos_id_seq'::regclass);


--
-- TOC entry 4445 (class 2604 OID 18481)
-- Name: temp_sessions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.temp_sessions ALTER COLUMN id SET DEFAULT nextval('public.temp_sessions_id_seq'::regclass);


--
-- TOC entry 4447 (class 2604 OID 18482)
-- Name: transaction_logs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transaction_logs ALTER COLUMN id SET DEFAULT nextval('public.transaction_logs_id_seq'::regclass);


--
-- TOC entry 4448 (class 2604 OID 18483)
-- Name: user_address_changes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_address_changes ALTER COLUMN id SET DEFAULT nextval('public.user_address_changes_id_seq'::regclass);


--
-- TOC entry 4450 (class 2604 OID 18484)
-- Name: user_conversation_temps id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_conversation_temps ALTER COLUMN id SET DEFAULT nextval('public.user_conversation_temps_id_seq'::regclass);


--
-- TOC entry 4452 (class 2604 OID 18485)
-- Name: user_conversations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_conversations ALTER COLUMN id SET DEFAULT nextval('public.user_conversations_id_seq'::regclass);


--
-- TOC entry 4456 (class 2604 OID 18486)
-- Name: user_faxes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_faxes ALTER COLUMN id SET DEFAULT nextval('public.user_faxes_id_seq'::regclass);


--
-- TOC entry 4457 (class 2604 OID 18487)
-- Name: user_fcm_tokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_fcm_tokens ALTER COLUMN id SET DEFAULT nextval('public.user_fcm_tokens_id_seq'::regclass);


--
-- TOC entry 4458 (class 2604 OID 18488)
-- Name: user_notification_sounds id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_notification_sounds ALTER COLUMN id SET DEFAULT nextval('public.user_notification_sounds_id_seq'::regclass);


--
-- TOC entry 4465 (class 2604 OID 18489)
-- Name: user_rooms id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_rooms ALTER COLUMN id SET DEFAULT nextval('public.user_rooms_id_seq'::regclass);


--
-- TOC entry 4482 (class 2604 OID 18490)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4486 (class 2604 OID 18491)
-- Name: video_call_logs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.video_call_logs ALTER COLUMN id SET DEFAULT nextval('public.video_call_logs_id_seq'::regclass);


--
-- TOC entry 4487 (class 2604 OID 18492)
-- Name: waiting_music_by_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.waiting_music_by_users ALTER COLUMN id SET DEFAULT nextval('public.waiting_music_by_users_id_seq'::regclass);


--
-- TOC entry 4488 (class 2604 OID 18493)
-- Name: waiting_music_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.waiting_music_types ALTER COLUMN id SET DEFAULT nextval('public.waiting_music_types_id_seq'::regclass);


--
-- TOC entry 4755 (class 0 OID 18037)
-- Dependencies: 215
-- Data for Name: DumpData; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4757 (class 0 OID 18043)
-- Dependencies: 217
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."SequelizeMeta" VALUES ('20211125103159-create-profession.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211126080933-create-qualification.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211126090716-create-facility.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211126095222-create-language.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211126101240-create-area-of-interest.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211129055407-create-clinic-info.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211129073519-create-clinic-invitation.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211129080120-create-clinic-invite-doctor.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211129082205-create-clinic-timing.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211129101716-create-clinic-user-type.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211130053722-create-favourite-contact.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211130062103-create-favourite-room.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211130072508-create-email-template.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211130082026-create-invitation.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211201053823-create-notification.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211201060459-create-patient-detail.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211201062656-create-patient-alert.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211201064011-create-practitioner-appointment-type.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211201073050-create-practitioner.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211201075938-create-reminders-setting.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202054103-create-room-user.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202054941-create-session.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202060239-create-app-practitioner.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202061122-create-appointment-type.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202062404-create-appointment.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202064755-create-audio-call-log.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202065300-create-hide-session.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202065756-create-booking-slot.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202070451-create-music-list.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202071428-create-temp-session.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202073144-create-user-practitioner.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202075831-create-support-user.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202080629-create-transaction-log.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202082107-create-user.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202083100-create-waiting-music-by-user.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202093823-create-waiting-music-type.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202094452-create-audio-call-status.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202095525-create-system-info.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202100008-create-user-room.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202100627-create-awaiting-queue.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202101032-create-awaiting-queue-voice.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202101600-create-video-call-log.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202102406-create-user-fcm-token.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202102802-create-user-fax.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202103851-create-message-viewers-temp.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202104813-create-user-conversation.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202105110-create-user-conversation-temp.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202105548-create-dump-data.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202105957-create-favourite.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202110333-create-chat-user.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211214100943-create-user-address-change.js');
INSERT INTO public."SequelizeMeta" VALUES ('20220314115554-create-login-history.js');
INSERT INTO public."SequelizeMeta" VALUES ('20211202103212-create-message-viewer.js');
INSERT INTO public."SequelizeMeta" VALUES ('20220330060819-create-notification-sound.js');
INSERT INTO public."SequelizeMeta" VALUES ('20220330063027-create-user-notification-sound.js');
INSERT INTO public."SequelizeMeta" VALUES ('20220330055230-create-notification-type.js');
INSERT INTO public."SequelizeMeta" VALUES ('20220113114414-create-notification-setting.js');
INSERT INTO public."SequelizeMeta" VALUES ('20220429101706-create-forgot-password.js');


--
-- TOC entry 4758 (class 0 OID 18046)
-- Dependencies: 218
-- Data for Name: app_practitioners; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.app_practitioners VALUES (1992, 2529, 1, 2, 2, NULL, NULL, 'Dr A Practitioner', 'practitioner.a@hcn.samplesdb.com.au', '1300 788 802', 'A', '2022-04-19 15:05:45.428+10', '2022-04-19 15:05:45.428+10');
INSERT INTO public.app_practitioners VALUES (1993, 2529, 1, 1, 1, NULL, NULL, 'Dr I Feelgood', 'Feelgood.samples@hcn.com.au', '1300 788 802', 'A', '2022-04-19 15:05:45.438+10', '2022-04-19 15:05:45.438+10');
INSERT INTO public.app_practitioners VALUES (1994, 2529, 1, 3, 3, NULL, NULL, 'Sally Physio', NULL, NULL, 'A', '2022-04-19 15:05:45.446+10', '2022-04-19 15:05:45.446+10');
INSERT INTO public.app_practitioners VALUES (1995, 2529, 1, 4, 4, NULL, NULL, 'Mukherjee', NULL, NULL, 'A', '2022-04-19 15:05:45.454+10', '2022-04-19 15:05:45.454+10');
INSERT INTO public.app_practitioners VALUES (1996, 2529, 1, 5, 5, NULL, NULL, 'Dr Amit Test', 'AMIT@MAIL.COM', '1300 788 802', 'A', '2022-04-19 15:05:45.465+10', '2022-04-19 15:05:45.465+10');
INSERT INTO public.app_practitioners VALUES (4072, 1, 1, 101, 1, NULL, NULL, 'Test Practioner', NULL, NULL, 'A', '2022-05-13 17:05:10.978+10', '2022-05-13 17:05:10.978+10');


--
-- TOC entry 4760 (class 0 OID 18053)
-- Dependencies: 220
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4762 (class 0 OID 18064)
-- Dependencies: 222
-- Data for Name: appt_types; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4764 (class 0 OID 18079)
-- Dependencies: 224
-- Data for Name: area_of_interests; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.area_of_interests VALUES (1, 'Full body skin check', 0, '2022-01-31 19:15:14.841+11', '2022-01-31 19:15:14.841+11');
INSERT INTO public.area_of_interests VALUES (2, 'Implants insertion & removal', 0, '2022-01-31 19:15:14.841+11', '2022-01-31 19:15:14.841+11');
INSERT INTO public.area_of_interests VALUES (3, 'Skin cancer Checks', 0, '2022-01-31 19:15:14.841+11', '2022-01-31 19:15:14.841+11');
INSERT INTO public.area_of_interests VALUES (4, 'Aviation Medicals', 0, '2022-01-31 19:15:14.841+11', '2022-01-31 19:15:14.841+11');
INSERT INTO public.area_of_interests VALUES (5, 'Travel medicine', 0, '2022-01-31 19:15:14.841+11', '2022-01-31 19:15:14.841+11');
INSERT INTO public.area_of_interests VALUES (6, 'Chronic disease management', 0, '2022-01-31 19:15:14.841+11', '2022-01-31 19:15:14.841+11');
INSERT INTO public.area_of_interests VALUES (61, NULL, 2529, '2022-05-12 16:19:22.399+10', '2022-05-12 16:19:22.399+10');
INSERT INTO public.area_of_interests VALUES (62, NULL, 2529, '2022-05-12 16:19:22.403+10', '2022-05-12 16:19:22.403+10');
INSERT INTO public.area_of_interests VALUES (63, NULL, 2529, '2022-05-12 16:58:42.203+10', '2022-05-12 16:58:42.203+10');
INSERT INTO public.area_of_interests VALUES (64, NULL, 2529, '2022-05-12 16:58:42.215+10', '2022-05-12 16:58:42.215+10');
INSERT INTO public.area_of_interests VALUES (65, NULL, 2529, '2022-05-12 18:56:57.194+10', '2022-05-12 18:56:57.194+10');
INSERT INTO public.area_of_interests VALUES (66, NULL, 2529, '2022-05-12 18:56:57.198+10', '2022-05-12 18:56:57.198+10');
INSERT INTO public.area_of_interests VALUES (67, NULL, 2529, '2022-05-13 09:52:03.093+10', '2022-05-13 09:52:03.093+10');


--
-- TOC entry 4766 (class 0 OID 18084)
-- Dependencies: 226
-- Data for Name: audio_call_logs; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4768 (class 0 OID 18096)
-- Dependencies: 228
-- Data for Name: audio_call_statuses; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4770 (class 0 OID 18102)
-- Dependencies: 230
-- Data for Name: awaiting_queue_voices; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4772 (class 0 OID 18106)
-- Dependencies: 232
-- Data for Name: awaiting_queues; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4774 (class 0 OID 18110)
-- Dependencies: 234
-- Data for Name: booking_slots; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.booking_slots VALUES (2, 1, 102, 11, '02:00', '12:00', 'Gapp1', '2022-04-21 18:15:58.866+10', '2022-04-21 18:31:58.362+10');
INSERT INTO public.booking_slots VALUES (1, 1, 101, 1, 'Fri May 13 18:25:12 IST 2022', 'Fri May 13 18:25:12 IST 2022', 'Description', '2022-02-07 19:01:46.051+11', '2022-05-13 22:55:12.294+10');
INSERT INTO public.booking_slots VALUES (3, 1, 1, 5, '02:00', '12:30', 'Undefined', '2022-04-21 23:15:36.972+10', '2022-04-21 23:15:36.972+10');


--
-- TOC entry 4776 (class 0 OID 18116)
-- Dependencies: 236
-- Data for Name: chat_users; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4778 (class 0 OID 18120)
-- Dependencies: 238
-- Data for Name: clinic_infos; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.clinic_infos VALUES (1, 1, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-01 00:15:18.621+11', '2022-02-01 00:29:23.193+11');
INSERT INTO public.clinic_infos VALUES (33, 2529, true, '{"isActive":false,"renderCount":1,"openHours":[{"from":"02:30 AM","to":"05:30 PM"}]}', '{"isActive":false,"renderCount":1,"openHours":[{"from":"02:30 AM","to":"05:30 PM"}]}', '{"isActive":false,"renderCount":1,"openHours":[{"from":"02:30 AM","to":"05:30 PM"}]}', '{"isActive":false,"renderCount":1,"openHours":[{"from":"02:30 AM","to":"05:30 PM"}]}', '{"isActive":false,"renderCount":1,"openHours":[{"from":"02:30 AM","to":"05:30 PM"}]}', '{"isActive":false,"renderCount":1,"openHours":[{"from":"02:30 AM","to":"05:30 PM"}]}', '{"isActive":true,"renderCount":2,"openHours":[{"from":"02:30 AM","to":"05:30 PM"},{"from":"03:30 AM","to":"12:00 PM"}]}', '2022-04-19 14:51:05.001+10', '2022-04-19 14:55:51.599+10');


--
-- TOC entry 4780 (class 0 OID 18127)
-- Dependencies: 240
-- Data for Name: clinic_invitations; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4782 (class 0 OID 18131)
-- Dependencies: 242
-- Data for Name: clinic_invite_doctors; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.clinic_invite_doctors VALUES (16, 2529, 5141, 1993, '2022-05-13 09:52:03.145+10', '2022-05-13 09:52:03.145+10');


--
-- TOC entry 4784 (class 0 OID 18135)
-- Dependencies: 244
-- Data for Name: clinic_timings; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4786 (class 0 OID 18141)
-- Dependencies: 246
-- Data for Name: clinic_user_types; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4788 (class 0 OID 18148)
-- Dependencies: 248
-- Data for Name: dump_data; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4790 (class 0 OID 18154)
-- Dependencies: 250
-- Data for Name: email_templates; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4792 (class 0 OID 18161)
-- Dependencies: 252
-- Data for Name: facilities; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.facilities VALUES (1, 'Onsite Pathology', '2022-01-31 19:14:41.423+11', '2022-01-31 19:14:41.423+11');
INSERT INTO public.facilities VALUES (2, 'Onsite Allied Health', '2022-01-31 19:14:41.423+11', '2022-01-31 19:14:41.423+11');
INSERT INTO public.facilities VALUES (3, 'Onsite Radiology', '2022-01-31 19:14:41.423+11', '2022-01-31 19:14:41.423+11');
INSERT INTO public.facilities VALUES (4, 'Onsite Pharmacy', '2022-01-31 19:14:41.423+11', '2022-01-31 19:14:41.423+11');
INSERT INTO public.facilities VALUES (5, 'Pathology Nearby', '2022-01-31 19:14:41.423+11', '2022-01-31 19:14:41.423+11');
INSERT INTO public.facilities VALUES (6, 'Allied Health Nearby', '2022-01-31 19:14:41.423+11', '2022-01-31 19:14:41.423+11');
INSERT INTO public.facilities VALUES (7, 'Radiology Nearby', '2022-01-31 19:14:41.423+11', '2022-01-31 19:14:41.423+11');
INSERT INTO public.facilities VALUES (8, 'Pharmacy Nearby', '2022-01-31 19:14:41.423+11', '2022-01-31 19:14:41.423+11');


--
-- TOC entry 4794 (class 0 OID 18165)
-- Dependencies: 254
-- Data for Name: favourite_contacts; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4796 (class 0 OID 18170)
-- Dependencies: 256
-- Data for Name: favourite_rooms; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4798 (class 0 OID 18175)
-- Dependencies: 258
-- Data for Name: favourites; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4800 (class 0 OID 18181)
-- Dependencies: 260
-- Data for Name: forgot_passwords; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4802 (class 0 OID 18187)
-- Dependencies: 262
-- Data for Name: hide_sessions; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4804 (class 0 OID 18194)
-- Dependencies: 264
-- Data for Name: invitations; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4806 (class 0 OID 18201)
-- Dependencies: 266
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.languages VALUES (1, 'English', 'en', '2022-01-31 19:14:57.79+11', '2022-01-31 19:14:57.79+11');
INSERT INTO public.languages VALUES (2, 'Afar', 'aa', '2022-01-31 19:14:57.79+11', '2022-01-31 19:14:57.79+11');
INSERT INTO public.languages VALUES (3, 'Abkhazian', 'ab', '2022-01-31 19:14:57.79+11', '2022-01-31 19:14:57.79+11');
INSERT INTO public.languages VALUES (4, 'Afrikaans', 'af', '2022-01-31 19:14:57.79+11', '2022-01-31 19:14:57.79+11');
INSERT INTO public.languages VALUES (5, 'Amharic', 'am', '2022-01-31 19:14:57.79+11', '2022-01-31 19:14:57.79+11');
INSERT INTO public.languages VALUES (6, 'Arabic', 'ar', '2022-01-31 19:14:57.79+11', '2022-01-31 19:14:57.79+11');
INSERT INTO public.languages VALUES (7, 'Assamese', 'as', '2022-01-31 19:14:57.79+11', '2022-01-31 19:14:57.79+11');
INSERT INTO public.languages VALUES (8, 'Aymara', 'ay', '2022-01-31 19:14:57.79+11', '2022-01-31 19:14:57.79+11');
INSERT INTO public.languages VALUES (9, 'Azerbaijani', 'az', '2022-01-31 19:14:57.79+11', '2022-01-31 19:14:57.79+11');
INSERT INTO public.languages VALUES (10, 'Bashkir', 'ba', '2022-01-31 19:14:57.79+11', '2022-01-31 19:14:57.79+11');
INSERT INTO public.languages VALUES (11, 'Belarusian', 'be', '2022-01-31 19:14:57.79+11', '2022-01-31 19:14:57.79+11');
INSERT INTO public.languages VALUES (12, 'Bulgarian', 'bg', '2022-01-31 19:14:57.79+11', '2022-01-31 19:14:57.79+11');
INSERT INTO public.languages VALUES (13, 'Bihari', 'bh', '2022-01-31 19:14:57.79+11', '2022-01-31 19:14:57.79+11');
INSERT INTO public.languages VALUES (14, 'Bislama', 'bi', '2022-01-31 19:14:57.79+11', '2022-01-31 19:14:57.79+11');
INSERT INTO public.languages VALUES (15, 'Bengali/Bangla', 'bn', '2022-01-31 19:14:57.79+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (16, 'Tibetan', 'bo', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (17, 'Breton', 'br', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (18, 'Catalan', 'ca', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (19, 'Corsican', 'co', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (20, 'Czech', 'cs', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (21, 'Welsh', 'cy', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (22, 'Danish', 'da', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (23, 'German', 'de', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (24, 'Bhutanese', 'dz', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (25, 'Greek', 'el', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (26, 'Esperanto', 'eo', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (27, 'Spanish', 'es', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (28, 'Estonian', 'et', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (29, 'Basque', 'eu', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (30, 'Persian', 'fa', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (31, 'Finnish', 'fi', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (32, 'Fiji', 'fj', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (33, 'Faeroese', 'fo', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (34, 'French', 'fr', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (35, 'Frisian', 'fy', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (36, 'Irish', 'ga', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (37, 'Scots/Gaelic', 'gd', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (38, 'Galician', 'gl', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (39, 'Guarani', 'gn', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (40, 'Gujarati', 'gu', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (41, 'Hausa', 'ha', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (42, 'Hindi', 'hi', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (43, 'Croatian', 'hr', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (44, 'Hungarian', 'hu', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (45, 'Armenian', 'hy', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (46, 'Interlingua', 'ia', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (47, 'Interlingue', 'ie', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (48, 'Inupiak', 'ik', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (49, 'Indonesian', 'in', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (50, 'Icelandic', 'is', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (51, 'Italian', 'it', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (52, 'Hebrew', 'iw', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (53, 'Japanese', 'ja', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (54, 'Yiddish', 'ji', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (55, 'Javanese', 'jw', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (56, 'Georgian', 'ka', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (57, 'Kazakh', 'kk', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (58, 'Greenlandic', 'kl', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (59, 'Cambodian', 'km', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (60, 'Kannada', 'kn', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (61, 'Korean', 'ko', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (62, 'Kashmiri', 'ks', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (63, 'Kurdish', 'ku', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (64, 'Kirghiz', 'ky', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (65, 'Latin', 'la', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (66, 'Lingala', 'ln', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (67, 'Laothian', 'lo', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (68, 'Lithuanian', 'lt', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (69, 'Latvian/Lettish', 'lv', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (70, 'Malagasy', 'mg', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (71, 'Maori', 'mi', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (72, 'Macedonian', 'mk', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (73, 'Malayalam', 'ml', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (74, 'Mongolian', 'mn', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (75, 'Moldavian', 'mo', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (76, 'Marathi', 'mr', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (77, 'Malay', 'ms', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (78, 'Maltese', 'mt', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (79, 'Burmese', 'my', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (80, 'Nauru', 'na', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (81, 'Nepali', 'ne', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (82, 'Dutch', 'nl', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (83, 'Norwegian', 'no', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (84, 'Occitan', 'oc', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (85, '(Afan)/Oromoor/Oriya', 'om', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (86, 'Punjabi', 'pa', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (87, 'Polish', 'pl', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (88, 'Pashto/Pushto', 'ps', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (89, 'Portuguese', 'pt', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (90, 'Quechua', 'qu', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (91, 'Rhaeto-Romance', 'rm', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (92, 'Kirundi', 'rn', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (93, 'Romanian', 'ro', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (94, 'Russian', 'ru', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (95, 'Kinyarwanda', 'rw', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (96, 'Sanskrit', 'sa', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (97, 'Sindhi', 'sd', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (98, 'Sangro', 'sg', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (99, 'Serbo-Croatian', 'sh', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (100, 'Singhalese', 'si', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (101, 'Slovak', 'sk', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (102, 'Slovenian', 'sl', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (103, 'Samoan', 'sm', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (104, 'Shona', 'sn', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (105, 'Somali', 'so', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (106, 'Albanian', 'sq', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (107, 'Serbian', 'sr', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (108, 'Siswati', 'ss', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (109, 'Sesotho', 'st', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (110, 'Sundanese', 'su', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (111, 'Swedish', 'sv', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (112, 'Swahili', 'sw', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (113, 'Tamil', 'ta', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (114, 'Telugu', 'te', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (115, 'Tajik', 'tg', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (116, 'Thai', 'th', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (117, 'Tigrinya', 'ti', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (118, 'Turkmen', 'tk', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (119, 'Tagalog', 'tl', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (120, 'Setswana', 'tn', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (121, 'Tonga', 'to', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (122, 'Turkish', 'tr', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (123, 'Tsonga', 'ts', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (124, 'Tatar', 'tt', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (125, 'Twi', 'tw', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (126, 'Ukrainian', 'uk', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (127, 'Urdu', 'ur', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (128, 'Uzbek', 'uz', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (129, 'Vietnamese', 'vi', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (130, 'Volapuk', 'vo', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (131, 'Wolof', 'wo', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (132, 'Xhosa', 'xh', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (133, 'Yoruba', 'yo', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (134, 'Chinese', 'zh', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');
INSERT INTO public.languages VALUES (135, 'Zulu', 'zu', '2022-01-31 19:14:57.791+11', '2022-01-31 19:14:57.791+11');


--
-- TOC entry 4808 (class 0 OID 18207)
-- Dependencies: 268
-- Data for Name: login_histories; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.login_histories VALUES (10, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '157.40.115.77', '{"ip":"157.40.115.77","version":"IPv4","city":"Kolkata","region":"West Bengal","region_code":"WB","country":"IN","country_name":"India","country_code":"IN","country_code_iso3":"IND","country_capital":"New Delhi","country_tld":".in","continent_code":"AS","in_eu":false,"postal":"700131","latitude":22.518,"longitude":88.3832,"timezone":"Asia/Kolkata","utc_offset":"+0530","country_calling_code":"+91","currency":"INR","currency_name":"Rupee","languages":"en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,as,bh,sat,ks,ne,sd,kok,doi,mni,sit,sa,fr,lus,inc","country_area":3287590,"country_population":1352617328,"asn":"AS55836","org":"Reliance Jio Infocomm Limited"}', '2022-04-05 15:44:04.515+10', '2022-04-05 15:44:04.515+10');
INSERT INTO public.login_histories VALUES (11, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '157.40.115.77', '{"ip":"157.40.115.77","version":"IPv4","city":"Kolkata","region":"West Bengal","region_code":"WB","country":"IN","country_name":"India","country_code":"IN","country_code_iso3":"IND","country_capital":"New Delhi","country_tld":".in","continent_code":"AS","in_eu":false,"postal":"700131","latitude":22.518,"longitude":88.3832,"timezone":"Asia/Kolkata","utc_offset":"+0530","country_calling_code":"+91","currency":"INR","currency_name":"Rupee","languages":"en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,as,bh,sat,ks,ne,sd,kok,doi,mni,sit,sa,fr,lus,inc","country_area":3287590,"country_population":1352617328,"asn":"AS55836","org":"Reliance Jio Infocomm Limited"}', '2022-04-05 15:46:35.993+10', '2022-04-05 15:46:35.993+10');
INSERT INTO public.login_histories VALUES (12, 2529, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '157.40.218.167', '{"ip":"157.40.218.167","version":"IPv4","city":"Kolkata","region":"West Bengal","region_code":"WB","country":"IN","country_name":"India","country_code":"IN","country_code_iso3":"IND","country_capital":"New Delhi","country_tld":".in","continent_code":"AS","in_eu":false,"postal":"700059","latitude":22.518,"longitude":88.3832,"timezone":"Asia/Kolkata","utc_offset":"+0530","country_calling_code":"+91","currency":"INR","currency_name":"Rupee","languages":"en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,as,bh,sat,ks,ne,sd,kok,doi,mni,sit,sa,fr,lus,inc","country_area":3287590,"country_population":1352617328,"asn":"AS55836","org":"Reliance Jio Infocomm Limited"}', '2022-04-19 14:56:08.645+10', '2022-04-19 14:56:08.645+10');
INSERT INTO public.login_histories VALUES (13, 2529, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '157.40.218.167', '{"ip":"157.40.218.167","version":"IPv4","city":"Kolkata","region":"West Bengal","region_code":"WB","country":"IN","country_name":"India","country_code":"IN","country_code_iso3":"IND","country_capital":"New Delhi","country_tld":".in","continent_code":"AS","in_eu":false,"postal":"700059","latitude":22.518,"longitude":88.3832,"timezone":"Asia/Kolkata","utc_offset":"+0530","country_calling_code":"+91","currency":"INR","currency_name":"Rupee","languages":"en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,as,bh,sat,ks,ne,sd,kok,doi,mni,sit,sa,fr,lus,inc","country_area":3287590,"country_population":1352617328,"asn":"AS55836","org":"Reliance Jio Infocomm Limited"}', '2022-04-19 14:56:50.852+10', '2022-04-19 14:56:50.852+10');
INSERT INTO public.login_histories VALUES (14, 2529, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '157.40.254.178', '{"ip":"157.40.254.178","version":"IPv4","city":"Kolkata","region":"West Bengal","region_code":"WB","country":"IN","country_name":"India","country_code":"IN","country_code_iso3":"IND","country_capital":"New Delhi","country_tld":".in","continent_code":"AS","in_eu":false,"postal":"700059","latitude":22.518,"longitude":88.3832,"timezone":"Asia/Kolkata","utc_offset":"+0530","country_calling_code":"+91","currency":"INR","currency_name":"Rupee","languages":"en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,as,bh,sat,ks,ne,sd,kok,doi,mni,sit,sa,fr,lus,inc","country_area":3287590,"country_population":1352617328,"asn":"AS55836","org":"Reliance Jio Infocomm Limited"}', '2022-04-25 16:08:14.205+10', '2022-04-25 16:08:14.205+10');
INSERT INTO public.login_histories VALUES (15, 2529, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', '157.40.254.178', '{"ip":"157.40.254.178","version":"IPv4","city":"Kolkata","region":"West Bengal","region_code":"WB","country":"IN","country_name":"India","country_code":"IN","country_code_iso3":"IND","country_capital":"New Delhi","country_tld":".in","continent_code":"AS","in_eu":false,"postal":"700059","latitude":22.518,"longitude":88.3832,"timezone":"Asia/Kolkata","utc_offset":"+0530","country_calling_code":"+91","currency":"INR","currency_name":"Rupee","languages":"en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,as,bh,sat,ks,ne,sd,kok,doi,mni,sit,sa,fr,lus,inc","country_area":3287590,"country_population":1352617328,"asn":"AS55836","org":"Reliance Jio Infocomm Limited"}', '2022-04-25 16:15:40.704+10', '2022-04-25 16:15:40.704+10');
INSERT INTO public.login_histories VALUES (16, 2529, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.50', '157.40.144.118', '{"ip":"157.40.144.118","version":"IPv4","city":"Kolkata","region":"West Bengal","region_code":"WB","country":"IN","country_name":"India","country_code":"IN","country_code_iso3":"IND","country_capital":"New Delhi","country_tld":".in","continent_code":"AS","in_eu":false,"postal":"700059","latitude":22.518,"longitude":88.3832,"timezone":"Asia/Kolkata","utc_offset":"+0530","country_calling_code":"+91","currency":"INR","currency_name":"Rupee","languages":"en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,as,bh,sat,ks,ne,sd,kok,doi,mni,sit,sa,fr,lus,inc","country_area":3287590,"country_population":1352617328,"asn":"AS55836","org":"Reliance Jio Infocomm Limited"}', '2022-05-10 15:24:11.618+10', '2022-05-10 15:24:11.618+10');


--
-- TOC entry 4810 (class 0 OID 18213)
-- Dependencies: 270
-- Data for Name: message_viewers; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4812 (class 0 OID 18218)
-- Dependencies: 272
-- Data for Name: message_viewers_temps; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4814 (class 0 OID 18223)
-- Dependencies: 274
-- Data for Name: music_lists; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4816 (class 0 OID 18229)
-- Dependencies: 276
-- Data for Name: notification_settings; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4818 (class 0 OID 18245)
-- Dependencies: 278
-- Data for Name: notification_sounds; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4820 (class 0 OID 18251)
-- Dependencies: 280
-- Data for Name: notification_types; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.notification_types VALUES (1, 'appointment_booked', 'Patient Booked', 1, NULL, '2022-04-04 19:11:27.072+10', '2022-04-04 19:11:27.072+10');
INSERT INTO public.notification_types VALUES (2, 'incoming_call', 'Incoming Call', 2, NULL, '2022-04-04 19:11:27.072+10', '2022-04-04 19:11:27.072+10');
INSERT INTO public.notification_types VALUES (3, 'call_connected', 'Call Connected', 2, NULL, '2022-04-04 19:11:27.072+10', '2022-04-04 19:11:27.072+10');
INSERT INTO public.notification_types VALUES (4, 'appointment_cancelled', 'Patient Cancelled', 1, NULL, '2022-04-04 19:11:27.072+10', '2022-04-04 19:11:27.072+10');
INSERT INTO public.notification_types VALUES (5, 'outgoing_call', 'Outgoing Call', 2, NULL, '2022-04-04 19:11:27.072+10', '2022-04-04 19:11:27.072+10');
INSERT INTO public.notification_types VALUES (6, 'call_completed', 'Call Completed', 1, NULL, '2022-04-04 19:11:27.072+10', '2022-04-04 19:11:27.072+10');
INSERT INTO public.notification_types VALUES (7, 'chat_message_received', 'Chat Message Received', 1, NULL, '2022-04-04 19:11:27.072+10', '2022-04-04 19:11:27.072+10');
INSERT INTO public.notification_types VALUES (8, 'call_disconnected', 'Call Disconnected', 1, NULL, '2022-04-04 19:11:27.072+10', '2022-04-04 19:11:27.072+10');


--
-- TOC entry 4822 (class 0 OID 18258)
-- Dependencies: 282
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.notifications VALUES (1, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-09 15:31:39.611+11', '2022-02-09 15:31:39.611+11');
INSERT INTO public.notifications VALUES (2, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-09 15:31:39.632+11', '2022-02-09 15:31:39.632+11');
INSERT INTO public.notifications VALUES (3, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-09 15:31:39.644+11', '2022-02-09 15:31:39.644+11');
INSERT INTO public.notifications VALUES (4, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-09 15:31:39.656+11', '2022-02-09 15:31:39.656+11');
INSERT INTO public.notifications VALUES (5, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-09 15:31:39.669+11', '2022-02-09 15:31:39.669+11');
INSERT INTO public.notifications VALUES (6, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-09 15:38:39.845+11', '2022-02-09 15:38:39.845+11');
INSERT INTO public.notifications VALUES (7, 22, 'Appointment Cancelled', 2, 'PatientCancelled', 'patient', NULL, 0, 21, '2022-02-09 16:33:33.16+11', '2022-02-09 16:33:33.16+11');
INSERT INTO public.notifications VALUES (8, 22, 'Appointment Cancelled', 2, 'PatientCancelled', 'patient', NULL, 0, 25, '2022-02-09 16:34:58.004+11', '2022-02-09 16:34:58.004+11');
INSERT INTO public.notifications VALUES (9, 22, 'Appointment Cancelled', 2, 'PatientCancelled', 'patient', NULL, 0, 26, '2022-02-09 16:43:47.729+11', '2022-02-09 16:43:47.729+11');
INSERT INTO public.notifications VALUES (10, 143, 'Appointment Cancelled', 144, 'PatientCancelled', 'patient', NULL, 0, 27, '2022-02-09 17:04:10.863+11', '2022-02-09 17:04:10.863+11');
INSERT INTO public.notifications VALUES (11, 145, 'Appointment Cancelled', 146, 'PatientCancelled', 'patient', NULL, 0, 28, '2022-02-09 17:07:55.081+11', '2022-02-09 17:07:55.081+11');
INSERT INTO public.notifications VALUES (12, 147, 'Appointment Cancelled', 148, 'PatientCancelled', 'patient', NULL, 0, 29, '2022-02-09 17:26:44.232+11', '2022-02-09 17:26:44.232+11');
INSERT INTO public.notifications VALUES (13, 149, 'Appointment Cancelled', 150, 'PatientCancelled', 'patient', NULL, 0, 30, '2022-02-09 17:32:16.538+11', '2022-02-09 17:32:16.538+11');
INSERT INTO public.notifications VALUES (14, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-09 17:46:59.498+11', '2022-02-09 17:46:59.498+11');
INSERT INTO public.notifications VALUES (15, 153, 'Appointment Cancelled', 154, 'PatientCancelled', 'patient', NULL, 0, 32, '2022-02-09 17:47:03.974+11', '2022-02-09 17:47:03.974+11');
INSERT INTO public.notifications VALUES (16, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-09 17:48:47.345+11', '2022-02-09 17:48:47.345+11');
INSERT INTO public.notifications VALUES (17, 158, 'Appointment Cancelled', 159, 'PatientCancelled', 'patient', NULL, 0, 34, '2022-02-09 17:48:50.188+11', '2022-02-09 17:48:50.188+11');
INSERT INTO public.notifications VALUES (18, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-09 17:51:27.452+11', '2022-02-09 17:51:27.452+11');
INSERT INTO public.notifications VALUES (19, 163, 'Appointment Cancelled', 164, 'PatientCancelled', 'patient', NULL, 0, 36, '2022-02-09 17:51:30.374+11', '2022-02-09 17:51:30.374+11');
INSERT INTO public.notifications VALUES (20, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-09 18:06:29.112+11', '2022-02-09 18:06:29.112+11');
INSERT INTO public.notifications VALUES (21, 178, 'Appointment Cancelled', 179, 'PatientCancelled', 'patient', NULL, 0, 38, '2022-02-09 18:06:32.503+11', '2022-02-09 18:06:32.503+11');
INSERT INTO public.notifications VALUES (22, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-09 18:10:32.887+11', '2022-02-09 18:10:32.887+11');
INSERT INTO public.notifications VALUES (23, 188, 'Appointment Cancelled', 189, 'PatientCancelled', 'patient', NULL, 0, 40, '2022-02-09 18:10:36.343+11', '2022-02-09 18:10:36.343+11');
INSERT INTO public.notifications VALUES (24, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-09 18:17:13.751+11', '2022-02-09 18:17:13.751+11');
INSERT INTO public.notifications VALUES (25, 198, 'Appointment Cancelled', 199, 'PatientCancelled', 'patient', NULL, 0, 42, '2022-02-09 18:17:16.732+11', '2022-02-09 18:17:16.732+11');
INSERT INTO public.notifications VALUES (26, 22, 'Appointment Cancelled', 2, 'PatientCancelled', 'patient', NULL, 0, 43, '2022-02-09 19:00:35.263+11', '2022-02-09 19:00:35.263+11');
INSERT INTO public.notifications VALUES (27, 200, 'Appointment Cancelled', 201, 'PatientCancelled', 'patient', NULL, 0, 44, '2022-02-09 19:24:24.36+11', '2022-02-09 19:24:24.36+11');
INSERT INTO public.notifications VALUES (28, 202, 'Appointment Cancelled', 203, 'PatientCancelled', 'patient', NULL, 0, 45, '2022-02-09 19:27:47.484+11', '2022-02-09 19:27:47.484+11');
INSERT INTO public.notifications VALUES (29, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-09 19:30:04.498+11', '2022-02-09 19:30:04.498+11');
INSERT INTO public.notifications VALUES (30, 212, 'Appointment Cancelled', 213, 'PatientCancelled', 'patient', NULL, 0, 47, '2022-02-09 19:30:07.529+11', '2022-02-09 19:30:07.529+11');
INSERT INTO public.notifications VALUES (31, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-10 23:10:10.481+11', '2022-02-10 23:10:10.481+11');
INSERT INTO public.notifications VALUES (32, 222, 'Appointment Cancelled', 223, 'PatientCancelled', 'patient', NULL, 0, 49, '2022-02-10 23:10:13.394+11', '2022-02-10 23:10:13.394+11');
INSERT INTO public.notifications VALUES (33, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-10 23:17:00.865+11', '2022-02-10 23:17:00.865+11');
INSERT INTO public.notifications VALUES (34, 232, 'Appointment Cancelled', 233, 'PatientCancelled', 'patient', NULL, 0, 51, '2022-02-10 23:17:04.158+11', '2022-02-10 23:17:04.158+11');
INSERT INTO public.notifications VALUES (35, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-14 18:10:57.236+11', '2022-02-14 18:10:57.236+11');
INSERT INTO public.notifications VALUES (36, 242, 'Appointment Cancelled', 243, 'PatientCancelled', 'patient', NULL, 0, 53, '2022-02-14 18:11:00.599+11', '2022-02-14 18:11:00.599+11');
INSERT INTO public.notifications VALUES (37, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-14 18:14:28.662+11', '2022-02-14 18:14:28.662+11');
INSERT INTO public.notifications VALUES (38, 252, 'Appointment Cancelled', 253, 'PatientCancelled', 'patient', NULL, 0, 55, '2022-02-14 18:14:31.867+11', '2022-02-14 18:14:31.867+11');
INSERT INTO public.notifications VALUES (39, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-02-14 18:20:09.136+11', '2022-02-14 18:20:09.136+11');
INSERT INTO public.notifications VALUES (40, 262, 'Appointment Cancelled', 263, 'PatientCancelled', 'patient', NULL, 0, 57, '2022-02-14 18:20:12.328+11', '2022-02-14 18:20:12.328+11');
INSERT INTO public.notifications VALUES (41, 290, 'Appointment Cancelled', 291, 'PatientCancelled', 'patient', NULL, 0, 59, '2022-03-10 21:01:43.739+11', '2022-03-10 21:01:43.739+11');
INSERT INTO public.notifications VALUES (42, 300, 'Appointment Cancelled', 301, 'PatientCancelled', 'patient', NULL, 0, 60, '2022-03-10 21:04:18.84+11', '2022-03-10 21:04:18.84+11');
INSERT INTO public.notifications VALUES (43, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-10 21:43:02.889+11', '2022-03-10 21:43:02.889+11');
INSERT INTO public.notifications VALUES (44, 314, 'Appointment Cancelled', 315, 'PatientCancelled', 'patient', NULL, 0, 62, '2022-03-10 21:43:06.195+11', '2022-03-10 21:43:06.195+11');
INSERT INTO public.notifications VALUES (45, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-14 21:45:07.293+11', '2022-03-14 21:45:07.293+11');
INSERT INTO public.notifications VALUES (46, 336, 'Appointment Cancelled', 337, 'PatientCancelled', 'patient', NULL, 0, 64, '2022-03-14 21:45:10.733+11', '2022-03-14 21:45:10.733+11');
INSERT INTO public.notifications VALUES (47, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-14 22:36:42.022+11', '2022-03-14 22:36:42.022+11');
INSERT INTO public.notifications VALUES (48, 352, 'Appointment Cancelled', 353, 'PatientCancelled', 'patient', NULL, 0, 67, '2022-03-14 22:36:45.254+11', '2022-03-14 22:36:45.254+11');
INSERT INTO public.notifications VALUES (49, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-14 23:37:46.382+11', '2022-03-14 23:37:46.382+11');
INSERT INTO public.notifications VALUES (50, 370, 'Appointment Cancelled', 371, 'PatientCancelled', 'patient', NULL, 0, 69, '2022-03-14 23:37:49.412+11', '2022-03-14 23:37:49.412+11');
INSERT INTO public.notifications VALUES (51, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-14 23:40:32.29+11', '2022-03-14 23:40:32.29+11');
INSERT INTO public.notifications VALUES (52, 380, 'Appointment Cancelled', 381, 'PatientCancelled', 'patient', NULL, 0, 71, '2022-03-14 23:40:35.26+11', '2022-03-14 23:40:35.26+11');
INSERT INTO public.notifications VALUES (53, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-14 23:44:24.828+11', '2022-03-14 23:44:24.828+11');
INSERT INTO public.notifications VALUES (54, 390, 'Appointment Cancelled', 391, 'PatientCancelled', 'patient', NULL, 0, 73, '2022-03-14 23:44:27.646+11', '2022-03-14 23:44:27.646+11');
INSERT INTO public.notifications VALUES (55, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-17 21:32:39.051+11', '2022-03-17 21:32:39.051+11');
INSERT INTO public.notifications VALUES (56, 440, 'Appointment Cancelled', 441, 'PatientCancelled', 'patient', NULL, 0, 81, '2022-03-17 21:32:45.737+11', '2022-03-17 21:32:45.737+11');
INSERT INTO public.notifications VALUES (57, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-17 21:56:52.981+11', '2022-03-17 21:56:52.981+11');
INSERT INTO public.notifications VALUES (58, 452, 'Appointment Cancelled', 453, 'PatientCancelled', 'patient', NULL, 0, 83, '2022-03-17 21:57:01.44+11', '2022-03-17 21:57:01.44+11');
INSERT INTO public.notifications VALUES (59, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-18 16:08:56.755+11', '2022-03-18 16:08:56.755+11');
INSERT INTO public.notifications VALUES (60, 465, 'Appointment Cancelled', 466, 'PatientCancelled', 'patient', NULL, 0, 85, '2022-03-18 16:09:04.98+11', '2022-03-18 16:09:04.98+11');
INSERT INTO public.notifications VALUES (61, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-18 17:57:33.477+11', '2022-03-18 17:57:33.477+11');
INSERT INTO public.notifications VALUES (62, 480, 'Appointment Cancelled', 481, 'PatientCancelled', 'patient', NULL, 0, 87, '2022-03-18 17:57:41.663+11', '2022-03-18 17:57:41.663+11');
INSERT INTO public.notifications VALUES (63, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-18 18:03:37.064+11', '2022-03-18 18:03:37.064+11');
INSERT INTO public.notifications VALUES (64, 490, 'Appointment Cancelled', 491, 'PatientCancelled', 'patient', NULL, 0, 89, '2022-03-18 18:03:44.319+11', '2022-03-18 18:03:44.319+11');
INSERT INTO public.notifications VALUES (65, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-18 18:14:29.824+11', '2022-03-18 18:14:29.824+11');
INSERT INTO public.notifications VALUES (66, 500, 'Appointment Cancelled', 501, 'PatientCancelled', 'patient', NULL, 0, 91, '2022-03-18 18:14:37.287+11', '2022-03-18 18:14:37.287+11');
INSERT INTO public.notifications VALUES (67, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-18 18:23:27.627+11', '2022-03-18 18:23:27.627+11');
INSERT INTO public.notifications VALUES (68, 510, 'Appointment Cancelled', 511, 'PatientCancelled', 'patient', NULL, 0, 93, '2022-03-18 18:23:36.081+11', '2022-03-18 18:23:36.081+11');
INSERT INTO public.notifications VALUES (69, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-18 19:11:35.029+11', '2022-03-18 19:11:35.029+11');
INSERT INTO public.notifications VALUES (70, 526, 'Appointment Cancelled', 527, 'PatientCancelled', 'patient', NULL, 0, 95, '2022-03-18 19:11:43.445+11', '2022-03-18 19:11:43.445+11');
INSERT INTO public.notifications VALUES (71, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-18 19:34:46.778+11', '2022-03-18 19:34:46.778+11');
INSERT INTO public.notifications VALUES (72, 537, 'Appointment Cancelled', 538, 'PatientCancelled', 'patient', NULL, 0, 97, '2022-03-18 19:34:54.966+11', '2022-03-18 19:34:54.966+11');
INSERT INTO public.notifications VALUES (73, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-18 20:07:18.301+11', '2022-03-18 20:07:18.301+11');
INSERT INTO public.notifications VALUES (74, 548, 'Appointment Cancelled', 549, 'PatientCancelled', 'patient', NULL, 0, 99, '2022-03-18 20:07:24.901+11', '2022-03-18 20:07:24.901+11');
INSERT INTO public.notifications VALUES (75, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-18 20:46:47.56+11', '2022-03-18 20:46:47.56+11');
INSERT INTO public.notifications VALUES (76, 559, 'Appointment Cancelled', 560, 'PatientCancelled', 'patient', NULL, 0, 101, '2022-03-18 20:46:54.829+11', '2022-03-18 20:46:54.829+11');
INSERT INTO public.notifications VALUES (77, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-18 20:52:18.738+11', '2022-03-18 20:52:18.738+11');
INSERT INTO public.notifications VALUES (78, 569, 'Appointment Cancelled', 570, 'PatientCancelled', 'patient', NULL, 0, 103, '2022-03-18 20:52:26.991+11', '2022-03-18 20:52:26.991+11');
INSERT INTO public.notifications VALUES (79, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-18 21:12:45.966+11', '2022-03-18 21:12:45.966+11');
INSERT INTO public.notifications VALUES (80, 580, 'Appointment Cancelled', 581, 'PatientCancelled', 'patient', NULL, 0, 105, '2022-03-18 21:12:53.301+11', '2022-03-18 21:12:53.301+11');
INSERT INTO public.notifications VALUES (81, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-18 21:18:07.856+11', '2022-03-18 21:18:07.856+11');
INSERT INTO public.notifications VALUES (82, 591, 'Appointment Cancelled', 592, 'PatientCancelled', 'patient', NULL, 0, 107, '2022-03-18 21:18:16.34+11', '2022-03-18 21:18:16.34+11');
INSERT INTO public.notifications VALUES (83, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-18 21:36:06.662+11', '2022-03-18 21:36:06.662+11');
INSERT INTO public.notifications VALUES (84, 602, 'Appointment Cancelled', 603, 'PatientCancelled', 'patient', NULL, 0, 109, '2022-03-18 21:36:14.896+11', '2022-03-18 21:36:14.896+11');
INSERT INTO public.notifications VALUES (85, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-18 21:49:48.172+11', '2022-03-18 21:49:48.172+11');
INSERT INTO public.notifications VALUES (86, 613, 'Appointment Cancelled', 614, 'PatientCancelled', 'patient', NULL, 0, 111, '2022-03-18 21:49:55.402+11', '2022-03-18 21:49:55.402+11');
INSERT INTO public.notifications VALUES (87, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-18 21:57:38.923+11', '2022-03-18 21:57:38.923+11');
INSERT INTO public.notifications VALUES (88, 623, 'Appointment Cancelled', 624, 'PatientCancelled', 'patient', NULL, 0, 113, '2022-03-18 21:57:46.317+11', '2022-03-18 21:57:46.317+11');
INSERT INTO public.notifications VALUES (89, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-18 22:11:54.68+11', '2022-03-18 22:11:54.68+11');
INSERT INTO public.notifications VALUES (90, 633, 'Appointment Cancelled', 634, 'PatientCancelled', 'patient', NULL, 0, 115, '2022-03-18 22:12:02.238+11', '2022-03-18 22:12:02.238+11');
INSERT INTO public.notifications VALUES (91, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-18 22:34:16.65+11', '2022-03-18 22:34:16.65+11');
INSERT INTO public.notifications VALUES (92, 643, 'Appointment Cancelled', 644, 'PatientCancelled', 'patient', NULL, 0, 117, '2022-03-18 22:34:24.107+11', '2022-03-18 22:34:24.107+11');
INSERT INTO public.notifications VALUES (93, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-21 18:35:16.227+11', '2022-03-21 18:35:16.227+11');
INSERT INTO public.notifications VALUES (94, 664, 'Appointment Cancelled', 665, 'PatientCancelled', 'patient', NULL, 0, 121, '2022-03-21 18:35:19.648+11', '2022-03-21 18:35:19.648+11');
INSERT INTO public.notifications VALUES (95, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-21 18:48:13.753+11', '2022-03-21 18:48:13.753+11');
INSERT INTO public.notifications VALUES (96, 674, 'Appointment Cancelled', 675, 'PatientCancelled', 'patient', NULL, 0, 123, '2022-03-21 18:48:17.14+11', '2022-03-21 18:48:17.14+11');
INSERT INTO public.notifications VALUES (97, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-21 21:55:31.587+11', '2022-03-21 21:55:31.587+11');
INSERT INTO public.notifications VALUES (98, 685, 'Appointment Cancelled', 686, 'PatientCancelled', 'patient', NULL, 0, 125, '2022-03-21 21:55:35.154+11', '2022-03-21 21:55:35.154+11');
INSERT INTO public.notifications VALUES (99, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-22 17:28:36.758+11', '2022-03-22 17:28:36.758+11');
INSERT INTO public.notifications VALUES (100, 696, 'Appointment Cancelled', 697, 'PatientCancelled', 'patient', NULL, 0, 127, '2022-03-22 17:28:44.954+11', '2022-03-22 17:28:44.954+11');
INSERT INTO public.notifications VALUES (101, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-22 22:38:14.585+11', '2022-03-22 22:38:14.585+11');
INSERT INTO public.notifications VALUES (102, 706, 'Appointment Cancelled', 707, 'PatientCancelled', 'patient', NULL, 0, 129, '2022-03-22 22:38:22.871+11', '2022-03-22 22:38:22.871+11');
INSERT INTO public.notifications VALUES (103, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-22 23:19:22.661+11', '2022-03-22 23:19:22.661+11');
INSERT INTO public.notifications VALUES (104, 716, 'Appointment Cancelled', 717, 'PatientCancelled', 'patient', NULL, 0, 131, '2022-03-22 23:19:29.269+11', '2022-03-22 23:19:29.269+11');
INSERT INTO public.notifications VALUES (105, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-23 00:36:10.285+11', '2022-03-23 00:36:10.285+11');
INSERT INTO public.notifications VALUES (106, 726, 'Appointment Cancelled', 727, 'PatientCancelled', 'patient', NULL, 0, 133, '2022-03-23 00:36:16.846+11', '2022-03-23 00:36:16.846+11');
INSERT INTO public.notifications VALUES (107, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-23 03:25:52.036+11', '2022-03-23 03:25:52.036+11');
INSERT INTO public.notifications VALUES (108, 736, 'Appointment Cancelled', 737, 'PatientCancelled', 'patient', NULL, 0, 135, '2022-03-23 03:25:59.678+11', '2022-03-23 03:25:59.678+11');
INSERT INTO public.notifications VALUES (109, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-23 14:46:51.376+11', '2022-03-23 14:46:51.376+11');
INSERT INTO public.notifications VALUES (110, 746, 'Appointment Cancelled', 747, 'PatientCancelled', 'patient', NULL, 0, 137, '2022-03-23 14:46:59.551+11', '2022-03-23 14:46:59.551+11');
INSERT INTO public.notifications VALUES (111, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-25 15:33:40.285+11', '2022-03-25 15:33:40.285+11');
INSERT INTO public.notifications VALUES (112, 759, 'Appointment Cancelled', 760, 'PatientCancelled', 'patient', NULL, 0, 139, '2022-03-25 15:33:48.862+11', '2022-03-25 15:33:48.862+11');
INSERT INTO public.notifications VALUES (113, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-25 18:07:05.687+11', '2022-03-25 18:07:05.687+11');
INSERT INTO public.notifications VALUES (114, 770, 'Appointment Cancelled', 771, 'PatientCancelled', 'patient', NULL, 0, 141, '2022-03-25 18:07:13.314+11', '2022-03-25 18:07:13.314+11');
INSERT INTO public.notifications VALUES (115, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-25 18:38:46.906+11', '2022-03-25 18:38:46.906+11');
INSERT INTO public.notifications VALUES (116, 782, 'Appointment Cancelled', 783, 'PatientCancelled', 'patient', NULL, 0, 143, '2022-03-25 18:38:55.252+11', '2022-03-25 18:38:55.252+11');
INSERT INTO public.notifications VALUES (117, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-25 23:31:46.244+11', '2022-03-25 23:31:46.244+11');
INSERT INTO public.notifications VALUES (118, 793, 'Appointment Cancelled', 794, 'PatientCancelled', 'patient', NULL, 0, 145, '2022-03-25 23:31:52.969+11', '2022-03-25 23:31:52.969+11');
INSERT INTO public.notifications VALUES (119, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-26 01:05:54.626+11', '2022-03-26 01:05:54.626+11');
INSERT INTO public.notifications VALUES (120, 803, 'Appointment Cancelled', 804, 'PatientCancelled', 'patient', NULL, 0, 147, '2022-03-26 01:06:03.078+11', '2022-03-26 01:06:03.078+11');
INSERT INTO public.notifications VALUES (121, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-26 01:20:32.379+11', '2022-03-26 01:20:32.379+11');
INSERT INTO public.notifications VALUES (122, 813, 'Appointment Cancelled', 814, 'PatientCancelled', 'patient', NULL, 0, 149, '2022-03-26 01:20:39.772+11', '2022-03-26 01:20:39.772+11');
INSERT INTO public.notifications VALUES (123, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-26 01:47:41.594+11', '2022-03-26 01:47:41.594+11');
INSERT INTO public.notifications VALUES (124, 823, 'Appointment Cancelled', 824, 'PatientCancelled', 'patient', NULL, 0, 151, '2022-03-26 01:47:49.854+11', '2022-03-26 01:47:49.854+11');
INSERT INTO public.notifications VALUES (125, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-26 02:50:22.157+11', '2022-03-26 02:50:22.157+11');
INSERT INTO public.notifications VALUES (126, 833, 'Appointment Cancelled', 834, 'PatientCancelled', 'patient', NULL, 0, 153, '2022-03-26 02:50:29.027+11', '2022-03-26 02:50:29.027+11');
INSERT INTO public.notifications VALUES (127, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-26 03:27:19.016+11', '2022-03-26 03:27:19.016+11');
INSERT INTO public.notifications VALUES (128, 843, 'Appointment Cancelled', 844, 'PatientCancelled', 'patient', NULL, 0, 155, '2022-03-26 03:27:25.75+11', '2022-03-26 03:27:25.75+11');
INSERT INTO public.notifications VALUES (129, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-26 05:29:50.771+11', '2022-03-26 05:29:50.771+11');
INSERT INTO public.notifications VALUES (130, 857, 'Appointment Cancelled', 858, 'PatientCancelled', 'patient', NULL, 0, 157, '2022-03-26 05:29:58.957+11', '2022-03-26 05:29:58.957+11');
INSERT INTO public.notifications VALUES (131, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-28 14:39:38.138+11', '2022-03-28 14:39:38.138+11');
INSERT INTO public.notifications VALUES (132, 867, 'Appointment Cancelled', 868, 'PatientCancelled', 'patient', NULL, 0, 159, '2022-03-28 14:39:44.906+11', '2022-03-28 14:39:44.906+11');
INSERT INTO public.notifications VALUES (133, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-28 18:47:45.306+11', '2022-03-28 18:47:45.306+11');
INSERT INTO public.notifications VALUES (134, 878, 'Appointment Cancelled', 879, 'PatientCancelled', 'patient', NULL, 0, 161, '2022-03-28 18:47:52.537+11', '2022-03-28 18:47:52.537+11');
INSERT INTO public.notifications VALUES (135, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-28 19:02:52.754+11', '2022-03-28 19:02:52.754+11');
INSERT INTO public.notifications VALUES (136, 890, 'Appointment Cancelled', 891, 'PatientCancelled', 'patient', NULL, 0, 163, '2022-03-28 19:03:00.337+11', '2022-03-28 19:03:00.337+11');
INSERT INTO public.notifications VALUES (137, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-28 19:13:59.579+11', '2022-03-28 19:13:59.579+11');
INSERT INTO public.notifications VALUES (138, 900, 'Appointment Cancelled', 901, 'PatientCancelled', 'patient', NULL, 0, 165, '2022-03-28 19:14:08.14+11', '2022-03-28 19:14:08.14+11');
INSERT INTO public.notifications VALUES (139, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-30 23:19:10.032+11', '2022-03-30 23:19:10.032+11');
INSERT INTO public.notifications VALUES (140, 929, 'Appointment Cancelled', 930, 'PatientCancelled', 'patient', NULL, 0, 167, '2022-03-30 23:19:16.199+11', '2022-03-30 23:19:16.199+11');
INSERT INTO public.notifications VALUES (141, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-30 23:25:34.73+11', '2022-03-30 23:25:34.73+11');
INSERT INTO public.notifications VALUES (142, 944, 'Appointment Cancelled', 945, 'PatientCancelled', 'patient', NULL, 0, 169, '2022-03-30 23:25:38.225+11', '2022-03-30 23:25:38.225+11');
INSERT INTO public.notifications VALUES (143, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-30 23:27:06.156+11', '2022-03-30 23:27:06.156+11');
INSERT INTO public.notifications VALUES (144, 954, 'Appointment Cancelled', 955, 'PatientCancelled', 'patient', NULL, 0, 171, '2022-03-30 23:27:09.742+11', '2022-03-30 23:27:09.742+11');
INSERT INTO public.notifications VALUES (145, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-31 14:56:07.121+11', '2022-03-31 14:56:07.121+11');
INSERT INTO public.notifications VALUES (146, 968, 'Appointment Cancelled', 969, 'PatientCancelled', 'patient', NULL, 0, 173, '2022-03-31 14:56:10.552+11', '2022-03-31 14:56:10.552+11');
INSERT INTO public.notifications VALUES (147, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-31 16:59:49.113+11', '2022-03-31 16:59:49.113+11');
INSERT INTO public.notifications VALUES (148, 1023, 'Appointment Cancelled', 1024, 'PatientCancelled', 'patient', NULL, 0, 175, '2022-03-31 16:59:53.041+11', '2022-03-31 16:59:53.041+11');
INSERT INTO public.notifications VALUES (149, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-31 17:01:34.713+11', '2022-03-31 17:01:34.713+11');
INSERT INTO public.notifications VALUES (150, 1033, 'Appointment Cancelled', 1034, 'PatientCancelled', 'patient', NULL, 0, 177, '2022-03-31 17:01:38.267+11', '2022-03-31 17:01:38.267+11');
INSERT INTO public.notifications VALUES (151, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-31 17:04:13.461+11', '2022-03-31 17:04:13.461+11');
INSERT INTO public.notifications VALUES (152, 1043, 'Appointment Cancelled', 1044, 'PatientCancelled', 'patient', NULL, 0, 179, '2022-03-31 17:04:17.392+11', '2022-03-31 17:04:17.392+11');
INSERT INTO public.notifications VALUES (153, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-31 17:10:34.95+11', '2022-03-31 17:10:34.95+11');
INSERT INTO public.notifications VALUES (154, 1054, 'Appointment Cancelled', 1055, 'PatientCancelled', 'patient', NULL, 0, 181, '2022-03-31 17:10:38.667+11', '2022-03-31 17:10:38.667+11');
INSERT INTO public.notifications VALUES (155, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-31 17:20:35.954+11', '2022-03-31 17:20:35.954+11');
INSERT INTO public.notifications VALUES (156, 1064, 'Appointment Cancelled', 1065, 'PatientCancelled', 'patient', NULL, 0, 183, '2022-03-31 17:20:39.383+11', '2022-03-31 17:20:39.383+11');
INSERT INTO public.notifications VALUES (157, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-31 17:27:42.993+11', '2022-03-31 17:27:42.993+11');
INSERT INTO public.notifications VALUES (158, 1074, 'Appointment Cancelled', 1075, 'PatientCancelled', 'patient', NULL, 0, 185, '2022-03-31 17:27:46.613+11', '2022-03-31 17:27:46.613+11');
INSERT INTO public.notifications VALUES (159, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-31 18:37:11.825+11', '2022-03-31 18:37:11.825+11');
INSERT INTO public.notifications VALUES (160, 1080, 'Appointment Cancelled', 1081, 'PatientCancelled', 'patient', NULL, 0, 187, '2022-03-31 18:37:15.29+11', '2022-03-31 18:37:15.29+11');
INSERT INTO public.notifications VALUES (161, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-31 22:42:06.325+11', '2022-03-31 22:42:06.325+11');
INSERT INTO public.notifications VALUES (162, 1085, 'Appointment Cancelled', 1086, 'PatientCancelled', 'patient', NULL, 0, 189, '2022-03-31 22:42:19.118+11', '2022-03-31 22:42:19.118+11');
INSERT INTO public.notifications VALUES (163, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-03-31 23:13:18.125+11', '2022-03-31 23:13:18.125+11');
INSERT INTO public.notifications VALUES (164, 1090, 'Appointment Cancelled', 1091, 'PatientCancelled', 'patient', NULL, 0, 191, '2022-03-31 23:13:26.72+11', '2022-03-31 23:13:26.72+11');
INSERT INTO public.notifications VALUES (165, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-01 19:11:39.388+11', '2022-04-01 19:11:39.388+11');
INSERT INTO public.notifications VALUES (166, 1096, 'Appointment Cancelled', 1097, 'PatientCancelled', 'patient', NULL, 0, 193, '2022-04-01 19:11:47.198+11', '2022-04-01 19:11:47.198+11');
INSERT INTO public.notifications VALUES (167, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-01 20:24:51.489+11', '2022-04-01 20:24:51.489+11');
INSERT INTO public.notifications VALUES (168, 1106, 'Appointment Cancelled', 1107, 'PatientCancelled', 'patient', NULL, 0, 195, '2022-04-01 20:24:56.663+11', '2022-04-01 20:24:56.663+11');
INSERT INTO public.notifications VALUES (169, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-01 20:34:55.996+11', '2022-04-01 20:34:55.996+11');
INSERT INTO public.notifications VALUES (170, 1116, 'Appointment Cancelled', 1117, 'PatientCancelled', 'patient', NULL, 0, 197, '2022-04-01 20:34:59.395+11', '2022-04-01 20:34:59.395+11');
INSERT INTO public.notifications VALUES (171, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-01 20:36:05.816+11', '2022-04-01 20:36:05.816+11');
INSERT INTO public.notifications VALUES (172, 1136, 'Appointment Cancelled', 1137, 'PatientCancelled', 'patient', NULL, 0, 199, '2022-04-01 20:36:09.513+11', '2022-04-01 20:36:09.513+11');
INSERT INTO public.notifications VALUES (173, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-01 20:43:22.731+11', '2022-04-01 20:43:22.731+11');
INSERT INTO public.notifications VALUES (174, 1146, 'Appointment Cancelled', 1147, 'PatientCancelled', 'patient', NULL, 0, 201, '2022-04-01 20:43:31.186+11', '2022-04-01 20:43:31.186+11');
INSERT INTO public.notifications VALUES (175, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-01 20:54:48.462+11', '2022-04-01 20:54:48.462+11');
INSERT INTO public.notifications VALUES (176, 1156, 'Appointment Cancelled', 1157, 'PatientCancelled', 'patient', NULL, 0, 203, '2022-04-01 20:54:52.02+11', '2022-04-01 20:54:52.02+11');
INSERT INTO public.notifications VALUES (177, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-01 21:00:37.254+11', '2022-04-01 21:00:37.254+11');
INSERT INTO public.notifications VALUES (178, 1166, 'Appointment Cancelled', 1167, 'PatientCancelled', 'patient', NULL, 0, 205, '2022-04-01 21:00:45.819+11', '2022-04-01 21:00:45.819+11');
INSERT INTO public.notifications VALUES (179, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-01 22:54:29.49+11', '2022-04-01 22:54:29.49+11');
INSERT INTO public.notifications VALUES (180, 1176, 'Appointment Cancelled', 1177, 'PatientCancelled', 'patient', NULL, 0, 207, '2022-04-01 22:54:37.208+11', '2022-04-01 22:54:37.208+11');
INSERT INTO public.notifications VALUES (181, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-01 23:29:21.929+11', '2022-04-01 23:29:21.929+11');
INSERT INTO public.notifications VALUES (182, 1186, 'Appointment Cancelled', 1187, 'PatientCancelled', 'patient', NULL, 0, 209, '2022-04-01 23:29:28.774+11', '2022-04-01 23:29:28.774+11');
INSERT INTO public.notifications VALUES (183, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-04 16:59:31.909+10', '2022-04-04 16:59:31.909+10');
INSERT INTO public.notifications VALUES (184, 1197, 'Appointment Cancelled', 1198, 'PatientCancelled', 'patient', NULL, 0, 211, '2022-04-04 16:59:38.728+10', '2022-04-04 16:59:38.728+10');
INSERT INTO public.notifications VALUES (185, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-04 17:12:37.39+10', '2022-04-04 17:12:37.39+10');
INSERT INTO public.notifications VALUES (186, 1207, 'Appointment Cancelled', 1208, 'PatientCancelled', 'patient', NULL, 0, 213, '2022-04-04 17:12:44.744+10', '2022-04-04 17:12:44.744+10');
INSERT INTO public.notifications VALUES (187, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-04 19:09:26.811+10', '2022-04-04 19:09:26.811+10');
INSERT INTO public.notifications VALUES (188, 1217, 'Appointment Cancelled', 1218, 'PatientCancelled', 'patient', NULL, 0, 215, '2022-04-04 19:09:35.41+10', '2022-04-04 19:09:35.41+10');
INSERT INTO public.notifications VALUES (189, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-04 19:14:24.677+10', '2022-04-04 19:14:24.677+10');
INSERT INTO public.notifications VALUES (190, 1227, 'Appointment Cancelled', 1228, 'PatientCancelled', 'patient', NULL, 0, 217, '2022-04-04 19:14:31.996+10', '2022-04-04 19:14:31.996+10');
INSERT INTO public.notifications VALUES (191, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-04 19:20:36.055+10', '2022-04-04 19:20:36.055+10');
INSERT INTO public.notifications VALUES (192, 1237, 'Appointment Cancelled', 1238, 'PatientCancelled', 'patient', NULL, 0, 218, '2022-04-04 19:20:44.423+10', '2022-04-04 19:20:44.423+10');
INSERT INTO public.notifications VALUES (193, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-04 21:04:10.111+10', '2022-04-04 21:04:10.111+10');
INSERT INTO public.notifications VALUES (194, 1241, 'Appointment Cancelled', 1242, 'PatientCancelled', 'patient', NULL, 0, 219, '2022-04-04 21:04:17.84+10', '2022-04-04 21:04:17.84+10');
INSERT INTO public.notifications VALUES (195, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-04 21:18:05.882+10', '2022-04-04 21:18:05.882+10');
INSERT INTO public.notifications VALUES (196, 1245, 'Appointment Cancelled', 1246, 'PatientCancelled', 'patient', NULL, 0, 220, '2022-04-04 21:18:14.271+10', '2022-04-04 21:18:14.271+10');
INSERT INTO public.notifications VALUES (197, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-04 21:27:07.811+10', '2022-04-04 21:27:07.811+10');
INSERT INTO public.notifications VALUES (198, 1255, 'Appointment Cancelled', 1256, 'PatientCancelled', 'patient', NULL, 0, 222, '2022-04-04 21:27:15.516+10', '2022-04-04 21:27:15.516+10');
INSERT INTO public.notifications VALUES (199, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-05 13:45:26.053+10', '2022-04-05 13:45:26.053+10');
INSERT INTO public.notifications VALUES (200, 1265, 'Appointment Cancelled', 1266, 'PatientCancelled', 'patient', NULL, 0, 224, '2022-04-05 13:45:34.492+10', '2022-04-05 13:45:34.492+10');
INSERT INTO public.notifications VALUES (201, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-05 20:25:45.696+10', '2022-04-05 20:25:45.696+10');
INSERT INTO public.notifications VALUES (202, 1275, 'Appointment Cancelled', 1276, 'PatientCancelled', 'patient', NULL, 0, 225, '2022-04-05 20:25:53.757+10', '2022-04-05 20:25:53.757+10');
INSERT INTO public.notifications VALUES (203, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-05 20:25:55.742+10', '2022-04-05 20:25:55.742+10');
INSERT INTO public.notifications VALUES (204, 1279, 'Appointment Cancelled', 1280, 'PatientCancelled', 'patient', NULL, 0, 226, '2022-04-05 20:26:03.804+10', '2022-04-05 20:26:03.804+10');
INSERT INTO public.notifications VALUES (205, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-05 20:29:57.575+10', '2022-04-05 20:29:57.575+10');
INSERT INTO public.notifications VALUES (206, 1283, 'Appointment Cancelled', 1284, 'PatientCancelled', 'patient', NULL, 0, 227, '2022-04-05 20:30:05.691+10', '2022-04-05 20:30:05.691+10');
INSERT INTO public.notifications VALUES (207, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-05 20:40:50.34+10', '2022-04-05 20:40:50.34+10');
INSERT INTO public.notifications VALUES (208, 1287, 'Appointment Cancelled', 1288, 'PatientCancelled', 'patient', NULL, 0, 228, '2022-04-05 20:40:58.375+10', '2022-04-05 20:40:58.375+10');
INSERT INTO public.notifications VALUES (209, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-05 20:52:44.666+10', '2022-04-05 20:52:44.666+10');
INSERT INTO public.notifications VALUES (210, 1291, 'Appointment Cancelled', 1292, 'PatientCancelled', 'patient', NULL, 0, 229, '2022-04-05 20:52:52.85+10', '2022-04-05 20:52:52.85+10');
INSERT INTO public.notifications VALUES (211, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-05 21:14:09.191+10', '2022-04-05 21:14:09.191+10');
INSERT INTO public.notifications VALUES (212, 1295, 'Appointment Cancelled', 1296, 'PatientCancelled', 'patient', NULL, 0, 230, '2022-04-05 21:14:17.312+10', '2022-04-05 21:14:17.312+10');
INSERT INTO public.notifications VALUES (213, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-05 21:49:58.998+10', '2022-04-05 21:49:58.998+10');
INSERT INTO public.notifications VALUES (214, 1299, 'Appointment Cancelled', 1300, 'PatientCancelled', 'patient', NULL, 0, 231, '2022-04-05 21:50:05.408+10', '2022-04-05 21:50:05.408+10');
INSERT INTO public.notifications VALUES (215, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-05 21:53:37.373+10', '2022-04-05 21:53:37.373+10');
INSERT INTO public.notifications VALUES (216, 1303, 'Appointment Cancelled', 1304, 'PatientCancelled', 'patient', NULL, 0, 232, '2022-04-05 21:53:43.793+10', '2022-04-05 21:53:43.793+10');
INSERT INTO public.notifications VALUES (217, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 14:34:18.88+10', '2022-04-06 14:34:18.88+10');
INSERT INTO public.notifications VALUES (218, 1307, 'Appointment Cancelled', 1308, 'PatientCancelled', 'patient', NULL, 0, 233, '2022-04-06 14:34:26.965+10', '2022-04-06 14:34:26.965+10');
INSERT INTO public.notifications VALUES (219, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 15:21:51.829+10', '2022-04-06 15:21:51.829+10');
INSERT INTO public.notifications VALUES (220, 1311, 'Appointment Cancelled', 1312, 'PatientCancelled', 'patient', NULL, 0, 234, '2022-04-06 15:21:58.24+10', '2022-04-06 15:21:58.24+10');
INSERT INTO public.notifications VALUES (221, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 16:08:21.384+10', '2022-04-06 16:08:21.384+10');
INSERT INTO public.notifications VALUES (222, 1315, 'Appointment Cancelled', 1316, 'PatientCancelled', 'patient', NULL, 0, 235, '2022-04-06 16:08:27.739+10', '2022-04-06 16:08:27.739+10');
INSERT INTO public.notifications VALUES (223, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 16:21:08.177+10', '2022-04-06 16:21:08.177+10');
INSERT INTO public.notifications VALUES (224, 1319, 'Appointment Cancelled', 1320, 'PatientCancelled', 'patient', NULL, 0, 236, '2022-04-06 16:21:16.244+10', '2022-04-06 16:21:16.244+10');
INSERT INTO public.notifications VALUES (225, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 16:51:00.593+10', '2022-04-06 16:51:00.593+10');
INSERT INTO public.notifications VALUES (226, 1323, 'Appointment Cancelled', 1324, 'PatientCancelled', 'patient', NULL, 0, 237, '2022-04-06 16:51:08.639+10', '2022-04-06 16:51:08.639+10');
INSERT INTO public.notifications VALUES (227, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 17:05:17.818+10', '2022-04-06 17:05:17.818+10');
INSERT INTO public.notifications VALUES (228, 1327, 'Appointment Cancelled', 1328, 'PatientCancelled', 'patient', NULL, 0, 238, '2022-04-06 17:05:25.952+10', '2022-04-06 17:05:25.952+10');
INSERT INTO public.notifications VALUES (229, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 17:12:41.246+10', '2022-04-06 17:12:41.246+10');
INSERT INTO public.notifications VALUES (230, 1331, 'Appointment Cancelled', 1332, 'PatientCancelled', 'patient', NULL, 0, 239, '2022-04-06 17:12:49.405+10', '2022-04-06 17:12:49.405+10');
INSERT INTO public.notifications VALUES (231, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 17:18:34.545+10', '2022-04-06 17:18:34.545+10');
INSERT INTO public.notifications VALUES (232, 1335, 'Appointment Cancelled', 1336, 'PatientCancelled', 'patient', NULL, 0, 240, '2022-04-06 17:18:42.712+10', '2022-04-06 17:18:42.712+10');
INSERT INTO public.notifications VALUES (233, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 17:22:42.577+10', '2022-04-06 17:22:42.577+10');
INSERT INTO public.notifications VALUES (234, 1339, 'Appointment Cancelled', 1340, 'PatientCancelled', 'patient', NULL, 0, 241, '2022-04-06 17:22:50.79+10', '2022-04-06 17:22:50.79+10');
INSERT INTO public.notifications VALUES (235, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 17:27:16.492+10', '2022-04-06 17:27:16.492+10');
INSERT INTO public.notifications VALUES (236, 1343, 'Appointment Cancelled', 1344, 'PatientCancelled', 'patient', NULL, 0, 242, '2022-04-06 17:27:24.51+10', '2022-04-06 17:27:24.51+10');
INSERT INTO public.notifications VALUES (237, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 18:05:29.997+10', '2022-04-06 18:05:29.997+10');
INSERT INTO public.notifications VALUES (238, 1347, 'Appointment Cancelled', 1348, 'PatientCancelled', 'patient', NULL, 0, 243, '2022-04-06 18:05:37.26+10', '2022-04-06 18:05:37.26+10');
INSERT INTO public.notifications VALUES (239, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 18:30:34.344+10', '2022-04-06 18:30:34.344+10');
INSERT INTO public.notifications VALUES (240, 1351, 'Appointment Cancelled', 1352, 'PatientCancelled', 'patient', NULL, 0, 244, '2022-04-06 18:30:40.702+10', '2022-04-06 18:30:40.702+10');
INSERT INTO public.notifications VALUES (241, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 19:41:59.036+10', '2022-04-06 19:41:59.036+10');
INSERT INTO public.notifications VALUES (242, 1355, 'Appointment Cancelled', 1356, 'PatientCancelled', 'patient', NULL, 0, 245, '2022-04-06 19:42:05.44+10', '2022-04-06 19:42:05.44+10');
INSERT INTO public.notifications VALUES (243, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 19:46:24.493+10', '2022-04-06 19:46:24.493+10');
INSERT INTO public.notifications VALUES (244, 1359, 'Appointment Cancelled', 1360, 'PatientCancelled', 'patient', NULL, 0, 246, '2022-04-06 19:46:32.643+10', '2022-04-06 19:46:32.643+10');
INSERT INTO public.notifications VALUES (245, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 19:51:27.797+10', '2022-04-06 19:51:27.797+10');
INSERT INTO public.notifications VALUES (246, 1363, 'Appointment Cancelled', 1364, 'PatientCancelled', 'patient', NULL, 0, 247, '2022-04-06 19:51:35.809+10', '2022-04-06 19:51:35.809+10');
INSERT INTO public.notifications VALUES (247, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 21:37:43.443+10', '2022-04-06 21:37:43.443+10');
INSERT INTO public.notifications VALUES (248, 1367, 'Appointment Cancelled', 1368, 'PatientCancelled', 'patient', NULL, 0, 248, '2022-04-06 21:37:51.647+10', '2022-04-06 21:37:51.647+10');
INSERT INTO public.notifications VALUES (249, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 21:39:43.77+10', '2022-04-06 21:39:43.77+10');
INSERT INTO public.notifications VALUES (250, 1371, 'Appointment Cancelled', 1372, 'PatientCancelled', 'patient', NULL, 0, 249, '2022-04-06 21:39:51.887+10', '2022-04-06 21:39:51.887+10');
INSERT INTO public.notifications VALUES (251, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 22:02:31.574+10', '2022-04-06 22:02:31.574+10');
INSERT INTO public.notifications VALUES (252, 1375, 'Appointment Cancelled', 1376, 'PatientCancelled', 'patient', NULL, 0, 250, '2022-04-06 22:02:39.757+10', '2022-04-06 22:02:39.757+10');
INSERT INTO public.notifications VALUES (253, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-06 22:04:34.521+10', '2022-04-06 22:04:34.521+10');
INSERT INTO public.notifications VALUES (254, 1379, 'Appointment Cancelled', 1380, 'PatientCancelled', 'patient', NULL, 0, 251, '2022-04-06 22:04:42.166+10', '2022-04-06 22:04:42.166+10');
INSERT INTO public.notifications VALUES (255, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 16:48:37.057+10', '2022-04-07 16:48:37.057+10');
INSERT INTO public.notifications VALUES (256, 1383, 'Appointment Cancelled', 1384, 'PatientCancelled', 'patient', NULL, 0, 252, '2022-04-07 16:48:45.156+10', '2022-04-07 16:48:45.156+10');
INSERT INTO public.notifications VALUES (257, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 16:53:10.391+10', '2022-04-07 16:53:10.391+10');
INSERT INTO public.notifications VALUES (258, 1387, 'Appointment Cancelled', 1388, 'PatientCancelled', 'patient', NULL, 0, 253, '2022-04-07 16:53:17.371+10', '2022-04-07 16:53:17.371+10');
INSERT INTO public.notifications VALUES (259, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 17:16:35.665+10', '2022-04-07 17:16:35.665+10');
INSERT INTO public.notifications VALUES (260, 1391, 'Appointment Cancelled', 1392, 'PatientCancelled', 'patient', NULL, 0, 254, '2022-04-07 17:16:43.608+10', '2022-04-07 17:16:43.608+10');
INSERT INTO public.notifications VALUES (261, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 17:22:30.551+10', '2022-04-07 17:22:30.551+10');
INSERT INTO public.notifications VALUES (262, 1395, 'Appointment Cancelled', 1396, 'PatientCancelled', 'patient', NULL, 0, 255, '2022-04-07 17:22:38.734+10', '2022-04-07 17:22:38.734+10');
INSERT INTO public.notifications VALUES (263, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 17:22:53.137+10', '2022-04-07 17:22:53.137+10');
INSERT INTO public.notifications VALUES (264, 1399, 'Appointment Cancelled', 1400, 'PatientCancelled', 'patient', NULL, 0, 256, '2022-04-07 17:23:01.134+10', '2022-04-07 17:23:01.134+10');
INSERT INTO public.notifications VALUES (265, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 17:28:27.583+10', '2022-04-07 17:28:27.583+10');
INSERT INTO public.notifications VALUES (266, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 17:28:31.614+10', '2022-04-07 17:28:31.614+10');
INSERT INTO public.notifications VALUES (267, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 17:38:26.077+10', '2022-04-07 17:38:26.077+10');
INSERT INTO public.notifications VALUES (268, 1427, 'Appointment Cancelled', 1428, 'PatientCancelled', 'patient', NULL, 0, 261, '2022-04-07 17:38:29.622+10', '2022-04-07 17:38:29.622+10');
INSERT INTO public.notifications VALUES (269, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 17:41:47.845+10', '2022-04-07 17:41:47.845+10');
INSERT INTO public.notifications VALUES (270, 1437, 'Appointment Cancelled', 1438, 'PatientCancelled', 'patient', NULL, 0, 263, '2022-04-07 17:41:54.568+10', '2022-04-07 17:41:54.568+10');
INSERT INTO public.notifications VALUES (271, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 18:24:28.308+10', '2022-04-07 18:24:28.308+10');
INSERT INTO public.notifications VALUES (272, 1447, 'Appointment Cancelled', 1448, 'PatientCancelled', 'patient', NULL, 0, 265, '2022-04-07 18:24:35.605+10', '2022-04-07 18:24:35.605+10');
INSERT INTO public.notifications VALUES (273, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 18:28:38.716+10', '2022-04-07 18:28:38.716+10');
INSERT INTO public.notifications VALUES (274, 1457, 'Appointment Cancelled', 1458, 'PatientCancelled', 'patient', NULL, 0, 267, '2022-04-07 18:28:45.993+10', '2022-04-07 18:28:45.993+10');
INSERT INTO public.notifications VALUES (275, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 18:35:12.595+10', '2022-04-07 18:35:12.595+10');
INSERT INTO public.notifications VALUES (276, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 18:35:24.007+10', '2022-04-07 18:35:24.007+10');
INSERT INTO public.notifications VALUES (277, 1475, 'Appointment Cancelled', 1476, 'PatientCancelled', 'patient', NULL, 0, 270, '2022-04-07 18:35:32.196+10', '2022-04-07 18:35:32.196+10');
INSERT INTO public.notifications VALUES (278, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 19:01:01.978+10', '2022-04-07 19:01:01.978+10');
INSERT INTO public.notifications VALUES (279, 1485, 'Appointment Cancelled', 1486, 'PatientCancelled', 'patient', NULL, 0, 272, '2022-04-07 19:01:10.173+10', '2022-04-07 19:01:10.173+10');
INSERT INTO public.notifications VALUES (280, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 19:17:29.536+10', '2022-04-07 19:17:29.536+10');
INSERT INTO public.notifications VALUES (281, 1496, 'Appointment Cancelled', 1497, 'PatientCancelled', 'patient', NULL, 0, 274, '2022-04-07 19:17:38.161+10', '2022-04-07 19:17:38.161+10');
INSERT INTO public.notifications VALUES (282, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 19:17:53.297+10', '2022-04-07 19:17:53.297+10');
INSERT INTO public.notifications VALUES (283, 1505, 'Appointment Cancelled', 1506, 'PatientCancelled', 'patient', NULL, 0, 276, '2022-04-07 19:17:59.892+10', '2022-04-07 19:17:59.892+10');
INSERT INTO public.notifications VALUES (284, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 20:23:59.188+10', '2022-04-07 20:23:59.188+10');
INSERT INTO public.notifications VALUES (285, 1515, 'Appointment Cancelled', 1516, 'PatientCancelled', 'patient', NULL, 0, 278, '2022-04-07 20:24:06.433+10', '2022-04-07 20:24:06.433+10');
INSERT INTO public.notifications VALUES (286, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 21:53:41.972+10', '2022-04-07 21:53:41.972+10');
INSERT INTO public.notifications VALUES (287, 1525, 'Appointment Cancelled', 1526, 'PatientCancelled', 'patient', NULL, 0, 280, '2022-04-07 21:53:49.194+10', '2022-04-07 21:53:49.194+10');
INSERT INTO public.notifications VALUES (288, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 21:56:14.223+10', '2022-04-07 21:56:14.223+10');
INSERT INTO public.notifications VALUES (289, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 21:56:29.733+10', '2022-04-07 21:56:29.733+10');
INSERT INTO public.notifications VALUES (290, 1545, 'Appointment Cancelled', 1546, 'PatientCancelled', 'patient', NULL, 0, 284, '2022-04-07 21:56:37.161+10', '2022-04-07 21:56:37.161+10');
INSERT INTO public.notifications VALUES (291, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 22:05:34.944+10', '2022-04-07 22:05:34.944+10');
INSERT INTO public.notifications VALUES (292, 1555, 'Appointment Cancelled', 1556, 'PatientCancelled', 'patient', NULL, 0, 286, '2022-04-07 22:05:42.187+10', '2022-04-07 22:05:42.187+10');
INSERT INTO public.notifications VALUES (293, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 22:08:11.71+10', '2022-04-07 22:08:11.71+10');
INSERT INTO public.notifications VALUES (294, 1565, 'Appointment Cancelled', 1566, 'PatientCancelled', 'patient', NULL, 0, 288, '2022-04-07 22:08:18.934+10', '2022-04-07 22:08:18.934+10');
INSERT INTO public.notifications VALUES (295, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-07 22:16:20.268+10', '2022-04-07 22:16:20.268+10');
INSERT INTO public.notifications VALUES (296, 1575, 'Appointment Cancelled', 1576, 'PatientCancelled', 'patient', NULL, 0, 290, '2022-04-07 22:16:27.887+10', '2022-04-07 22:16:27.887+10');
INSERT INTO public.notifications VALUES (297, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-08 15:48:29.185+10', '2022-04-08 15:48:29.185+10');
INSERT INTO public.notifications VALUES (298, 1586, 'Appointment Cancelled', 1587, 'PatientCancelled', 'patient', NULL, 0, 292, '2022-04-08 15:48:32.665+10', '2022-04-08 15:48:32.665+10');
INSERT INTO public.notifications VALUES (299, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-08 15:53:00.269+10', '2022-04-08 15:53:00.269+10');
INSERT INTO public.notifications VALUES (300, 1596, 'Appointment Cancelled', 1597, 'PatientCancelled', 'patient', NULL, 0, 294, '2022-04-08 15:53:03.418+10', '2022-04-08 15:53:03.418+10');
INSERT INTO public.notifications VALUES (301, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-08 15:55:34.588+10', '2022-04-08 15:55:34.588+10');
INSERT INTO public.notifications VALUES (302, 1606, 'Appointment Cancelled', 1607, 'PatientCancelled', 'patient', NULL, 0, 296, '2022-04-08 15:55:42.079+10', '2022-04-08 15:55:42.079+10');
INSERT INTO public.notifications VALUES (303, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-08 16:01:03.297+10', '2022-04-08 16:01:03.297+10');
INSERT INTO public.notifications VALUES (304, 1616, 'Appointment Cancelled', 1617, 'PatientCancelled', 'patient', NULL, 0, 298, '2022-04-08 16:01:11.489+10', '2022-04-08 16:01:11.489+10');
INSERT INTO public.notifications VALUES (305, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-08 16:41:57.688+10', '2022-04-08 16:41:57.688+10');
INSERT INTO public.notifications VALUES (306, 1626, 'Appointment Cancelled', 1627, 'PatientCancelled', 'patient', NULL, 0, 300, '2022-04-08 16:42:05.944+10', '2022-04-08 16:42:05.944+10');
INSERT INTO public.notifications VALUES (307, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-08 17:22:08.541+10', '2022-04-08 17:22:08.541+10');
INSERT INTO public.notifications VALUES (308, 1636, 'Appointment Cancelled', 1637, 'PatientCancelled', 'patient', NULL, 0, 302, '2022-04-08 17:22:16.855+10', '2022-04-08 17:22:16.855+10');
INSERT INTO public.notifications VALUES (309, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-08 17:24:44.91+10', '2022-04-08 17:24:44.91+10');
INSERT INTO public.notifications VALUES (310, 1646, 'Appointment Cancelled', 1647, 'PatientCancelled', 'patient', NULL, 0, 304, '2022-04-08 17:24:52.149+10', '2022-04-08 17:24:52.149+10');
INSERT INTO public.notifications VALUES (311, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 15:26:07.362+10', '2022-04-11 15:26:07.362+10');
INSERT INTO public.notifications VALUES (312, 1656, 'Appointment Cancelled', 1657, 'PatientCancelled', 'patient', NULL, 0, 306, '2022-04-11 15:26:15.492+10', '2022-04-11 15:26:15.492+10');
INSERT INTO public.notifications VALUES (313, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 18:03:49.627+10', '2022-04-11 18:03:49.627+10');
INSERT INTO public.notifications VALUES (314, 1666, 'Appointment Cancelled', 1667, 'PatientCancelled', 'patient', NULL, 0, 308, '2022-04-11 18:03:53.045+10', '2022-04-11 18:03:53.045+10');
INSERT INTO public.notifications VALUES (315, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 18:05:41.817+10', '2022-04-11 18:05:41.817+10');
INSERT INTO public.notifications VALUES (316, 1676, 'Appointment Cancelled', 1677, 'PatientCancelled', 'patient', NULL, 0, 310, '2022-04-11 18:05:44.994+10', '2022-04-11 18:05:44.994+10');
INSERT INTO public.notifications VALUES (317, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 18:13:03.584+10', '2022-04-11 18:13:03.584+10');
INSERT INTO public.notifications VALUES (318, 1686, 'Appointment Cancelled', 1687, 'PatientCancelled', 'patient', NULL, 0, 312, '2022-04-11 18:13:10.87+10', '2022-04-11 18:13:10.87+10');
INSERT INTO public.notifications VALUES (319, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 18:17:57.056+10', '2022-04-11 18:17:57.056+10');
INSERT INTO public.notifications VALUES (320, 1696, 'Appointment Cancelled', 1697, 'PatientCancelled', 'patient', NULL, 0, 314, '2022-04-11 18:18:00.19+10', '2022-04-11 18:18:00.19+10');
INSERT INTO public.notifications VALUES (321, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 18:18:40.304+10', '2022-04-11 18:18:40.304+10');
INSERT INTO public.notifications VALUES (322, 1706, 'Appointment Cancelled', 1707, 'PatientCancelled', 'patient', NULL, 0, 316, '2022-04-11 18:18:43.755+10', '2022-04-11 18:18:43.755+10');
INSERT INTO public.notifications VALUES (323, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 18:22:20.489+10', '2022-04-11 18:22:20.489+10');
INSERT INTO public.notifications VALUES (324, 1716, 'Appointment Cancelled', 1717, 'PatientCancelled', 'patient', NULL, 0, 318, '2022-04-11 18:22:23.471+10', '2022-04-11 18:22:23.471+10');
INSERT INTO public.notifications VALUES (325, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 18:23:06.822+10', '2022-04-11 18:23:06.822+10');
INSERT INTO public.notifications VALUES (326, 1726, 'Appointment Cancelled', 1727, 'PatientCancelled', 'patient', NULL, 0, 320, '2022-04-11 18:23:15.147+10', '2022-04-11 18:23:15.147+10');
INSERT INTO public.notifications VALUES (327, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 18:24:34.981+10', '2022-04-11 18:24:34.981+10');
INSERT INTO public.notifications VALUES (328, 1736, 'Appointment Cancelled', 1737, 'PatientCancelled', 'patient', NULL, 0, 322, '2022-04-11 18:24:38.162+10', '2022-04-11 18:24:38.162+10');
INSERT INTO public.notifications VALUES (329, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 18:38:39.708+10', '2022-04-11 18:38:39.708+10');
INSERT INTO public.notifications VALUES (330, 1746, 'Appointment Cancelled', 1747, 'PatientCancelled', 'patient', NULL, 0, 324, '2022-04-11 18:38:47.947+10', '2022-04-11 18:38:47.947+10');
INSERT INTO public.notifications VALUES (331, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 18:51:38.783+10', '2022-04-11 18:51:38.783+10');
INSERT INTO public.notifications VALUES (332, 1756, 'Appointment Cancelled', 1757, 'PatientCancelled', 'patient', NULL, 0, 326, '2022-04-11 18:51:46.329+10', '2022-04-11 18:51:46.329+10');
INSERT INTO public.notifications VALUES (333, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 18:52:33.855+10', '2022-04-11 18:52:33.855+10');
INSERT INTO public.notifications VALUES (334, 1766, 'Appointment Cancelled', 1767, 'PatientCancelled', 'patient', NULL, 0, 328, '2022-04-11 18:52:41.387+10', '2022-04-11 18:52:41.387+10');
INSERT INTO public.notifications VALUES (335, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 20:24:40.361+10', '2022-04-11 20:24:40.361+10');
INSERT INTO public.notifications VALUES (336, 1776, 'Appointment Cancelled', 1777, 'PatientCancelled', 'patient', NULL, 0, 330, '2022-04-11 20:24:48.721+10', '2022-04-11 20:24:48.721+10');
INSERT INTO public.notifications VALUES (337, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 20:29:21.32+10', '2022-04-11 20:29:21.32+10');
INSERT INTO public.notifications VALUES (338, 1786, 'Appointment Cancelled', 1787, 'PatientCancelled', 'patient', NULL, 0, 332, '2022-04-11 20:29:29.368+10', '2022-04-11 20:29:29.368+10');
INSERT INTO public.notifications VALUES (339, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 20:30:20.936+10', '2022-04-11 20:30:20.936+10');
INSERT INTO public.notifications VALUES (340, 1796, 'Appointment Cancelled', 1797, 'PatientCancelled', 'patient', NULL, 0, 334, '2022-04-11 20:30:28.986+10', '2022-04-11 20:30:28.986+10');
INSERT INTO public.notifications VALUES (341, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 20:40:35.778+10', '2022-04-11 20:40:35.778+10');
INSERT INTO public.notifications VALUES (342, 1806, 'Appointment Cancelled', 1807, 'PatientCancelled', 'patient', NULL, 0, 336, '2022-04-11 20:40:44.077+10', '2022-04-11 20:40:44.077+10');
INSERT INTO public.notifications VALUES (343, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 20:41:39.865+10', '2022-04-11 20:41:39.865+10');
INSERT INTO public.notifications VALUES (344, 1816, 'Appointment Cancelled', 1817, 'PatientCancelled', 'patient', NULL, 0, 338, '2022-04-11 20:41:48.084+10', '2022-04-11 20:41:48.084+10');
INSERT INTO public.notifications VALUES (345, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 22:14:44.711+10', '2022-04-11 22:14:44.711+10');
INSERT INTO public.notifications VALUES (346, 1826, 'Appointment Cancelled', 1827, 'PatientCancelled', 'patient', NULL, 0, 340, '2022-04-11 22:14:51.401+10', '2022-04-11 22:14:51.401+10');
INSERT INTO public.notifications VALUES (347, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 23:23:59.582+10', '2022-04-11 23:23:59.582+10');
INSERT INTO public.notifications VALUES (348, 1836, 'Appointment Cancelled', 1837, 'PatientCancelled', 'patient', NULL, 0, 342, '2022-04-11 23:24:07.016+10', '2022-04-11 23:24:07.016+10');
INSERT INTO public.notifications VALUES (349, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-11 23:46:05.306+10', '2022-04-11 23:46:05.306+10');
INSERT INTO public.notifications VALUES (350, 1846, 'Appointment Cancelled', 1847, 'PatientCancelled', 'patient', NULL, 0, 344, '2022-04-11 23:46:13.7+10', '2022-04-11 23:46:13.7+10');
INSERT INTO public.notifications VALUES (351, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 15:09:32.425+10', '2022-04-12 15:09:32.425+10');
INSERT INTO public.notifications VALUES (352, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 15:22:57.195+10', '2022-04-12 15:22:57.195+10');
INSERT INTO public.notifications VALUES (353, 1866, 'Appointment Cancelled', 1867, 'PatientCancelled', 'patient', NULL, 0, 345, '2022-04-12 15:24:00.777+10', '2022-04-12 15:24:00.777+10');
INSERT INTO public.notifications VALUES (354, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 15:29:29.029+10', '2022-04-12 15:29:29.029+10');
INSERT INTO public.notifications VALUES (355, 1871, 'Appointment Cancelled', 1872, 'PatientCancelled', 'patient', NULL, 0, 346, '2022-04-12 15:29:32.409+10', '2022-04-12 15:29:32.409+10');
INSERT INTO public.notifications VALUES (356, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 15:41:59.434+10', '2022-04-12 15:41:59.434+10');
INSERT INTO public.notifications VALUES (357, 1881, 'Appointment Cancelled', 1882, 'PatientCancelled', 'patient', NULL, 0, 348, '2022-04-12 15:42:02.629+10', '2022-04-12 15:42:02.629+10');
INSERT INTO public.notifications VALUES (358, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 15:44:14.51+10', '2022-04-12 15:44:14.51+10');
INSERT INTO public.notifications VALUES (359, 1891, 'Appointment Cancelled', 1892, 'PatientCancelled', 'patient', NULL, 0, 350, '2022-04-12 15:44:17.581+10', '2022-04-12 15:44:17.581+10');
INSERT INTO public.notifications VALUES (360, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 15:51:02.403+10', '2022-04-12 15:51:02.403+10');
INSERT INTO public.notifications VALUES (361, 1901, 'Appointment Cancelled', 1902, 'PatientCancelled', 'patient', NULL, 0, 352, '2022-04-12 15:51:05.821+10', '2022-04-12 15:51:05.821+10');
INSERT INTO public.notifications VALUES (362, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 15:53:13.484+10', '2022-04-12 15:53:13.484+10');
INSERT INTO public.notifications VALUES (363, 1911, 'Appointment Cancelled', 1912, 'PatientCancelled', 'patient', NULL, 0, 354, '2022-04-12 15:53:16.875+10', '2022-04-12 15:53:16.875+10');
INSERT INTO public.notifications VALUES (364, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 15:57:25.429+10', '2022-04-12 15:57:25.429+10');
INSERT INTO public.notifications VALUES (365, 1921, 'Appointment Cancelled', 1922, 'PatientCancelled', 'patient', NULL, 0, 356, '2022-04-12 15:57:29.839+10', '2022-04-12 15:57:29.839+10');
INSERT INTO public.notifications VALUES (366, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 15:59:15.862+10', '2022-04-12 15:59:15.862+10');
INSERT INTO public.notifications VALUES (367, 1931, 'Appointment Cancelled', 1932, 'PatientCancelled', 'patient', NULL, 0, 358, '2022-04-12 15:59:19.268+10', '2022-04-12 15:59:19.268+10');
INSERT INTO public.notifications VALUES (368, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 16:05:54.607+10', '2022-04-12 16:05:54.607+10');
INSERT INTO public.notifications VALUES (369, 1941, 'Appointment Cancelled', 1942, 'PatientCancelled', 'patient', NULL, 0, 360, '2022-04-12 16:06:01.524+10', '2022-04-12 16:06:01.524+10');
INSERT INTO public.notifications VALUES (370, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 16:06:57.621+10', '2022-04-12 16:06:57.621+10');
INSERT INTO public.notifications VALUES (371, 1951, 'Appointment Cancelled', 1952, 'PatientCancelled', 'patient', NULL, 0, 362, '2022-04-12 16:07:07.469+10', '2022-04-12 16:07:07.469+10');
INSERT INTO public.notifications VALUES (372, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 16:14:46.657+10', '2022-04-12 16:14:46.657+10');
INSERT INTO public.notifications VALUES (373, 1961, 'Appointment Cancelled', 1962, 'PatientCancelled', 'patient', NULL, 0, 364, '2022-04-12 16:14:53.218+10', '2022-04-12 16:14:53.218+10');
INSERT INTO public.notifications VALUES (374, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 16:22:46.593+10', '2022-04-12 16:22:46.593+10');
INSERT INTO public.notifications VALUES (375, 1971, 'Appointment Cancelled', 1972, 'PatientCancelled', 'patient', NULL, 0, 366, '2022-04-12 16:22:54.155+10', '2022-04-12 16:22:54.155+10');
INSERT INTO public.notifications VALUES (376, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 17:35:11.745+10', '2022-04-12 17:35:11.745+10');
INSERT INTO public.notifications VALUES (377, 1981, 'Appointment Cancelled', 1982, 'PatientCancelled', 'patient', NULL, 0, 368, '2022-04-12 17:35:18.301+10', '2022-04-12 17:35:18.301+10');
INSERT INTO public.notifications VALUES (378, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 17:36:06.138+10', '2022-04-12 17:36:06.138+10');
INSERT INTO public.notifications VALUES (379, 1991, 'Appointment Cancelled', 1992, 'PatientCancelled', 'patient', NULL, 0, 370, '2022-04-12 17:36:12.671+10', '2022-04-12 17:36:12.671+10');
INSERT INTO public.notifications VALUES (380, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 18:21:02.959+10', '2022-04-12 18:21:02.959+10');
INSERT INTO public.notifications VALUES (381, 2001, 'Appointment Cancelled', 2002, 'PatientCancelled', 'patient', NULL, 0, 372, '2022-04-12 18:21:10.303+10', '2022-04-12 18:21:10.303+10');
INSERT INTO public.notifications VALUES (382, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 19:04:48.426+10', '2022-04-12 19:04:48.426+10');
INSERT INTO public.notifications VALUES (383, 2011, 'Appointment Cancelled', 2012, 'PatientCancelled', 'patient', NULL, 0, 374, '2022-04-12 19:04:55.66+10', '2022-04-12 19:04:55.66+10');
INSERT INTO public.notifications VALUES (384, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 19:05:41.886+10', '2022-04-12 19:05:41.886+10');
INSERT INTO public.notifications VALUES (385, 2021, 'Appointment Cancelled', 2022, 'PatientCancelled', 'patient', NULL, 0, 376, '2022-04-12 19:05:49.132+10', '2022-04-12 19:05:49.132+10');
INSERT INTO public.notifications VALUES (386, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 19:09:44.158+10', '2022-04-12 19:09:44.158+10');
INSERT INTO public.notifications VALUES (387, 2031, 'Appointment Cancelled', 2032, 'PatientCancelled', 'patient', NULL, 0, 378, '2022-04-12 19:09:51.642+10', '2022-04-12 19:09:51.642+10');
INSERT INTO public.notifications VALUES (388, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 20:11:50.976+10', '2022-04-12 20:11:50.976+10');
INSERT INTO public.notifications VALUES (389, 2041, 'Appointment Cancelled', 2042, 'PatientCancelled', 'patient', NULL, 0, 380, '2022-04-12 20:11:59.105+10', '2022-04-12 20:11:59.105+10');
INSERT INTO public.notifications VALUES (390, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 20:46:55.607+10', '2022-04-12 20:46:55.607+10');
INSERT INTO public.notifications VALUES (391, 2051, 'Appointment Cancelled', 2052, 'PatientCancelled', 'patient', NULL, 0, 382, '2022-04-12 20:47:02.82+10', '2022-04-12 20:47:02.82+10');
INSERT INTO public.notifications VALUES (392, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 20:57:03.95+10', '2022-04-12 20:57:03.95+10');
INSERT INTO public.notifications VALUES (393, 2061, 'Appointment Cancelled', 2062, 'PatientCancelled', 'patient', NULL, 0, 384, '2022-04-12 20:57:11.928+10', '2022-04-12 20:57:11.928+10');
INSERT INTO public.notifications VALUES (394, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 21:01:51.367+10', '2022-04-12 21:01:51.367+10');
INSERT INTO public.notifications VALUES (395, 2071, 'Appointment Cancelled', 2072, 'PatientCancelled', 'patient', NULL, 0, 386, '2022-04-12 21:01:58.749+10', '2022-04-12 21:01:58.749+10');
INSERT INTO public.notifications VALUES (396, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 21:09:04.303+10', '2022-04-12 21:09:04.303+10');
INSERT INTO public.notifications VALUES (397, 2081, 'Appointment Cancelled', 2082, 'PatientCancelled', 'patient', NULL, 0, 388, '2022-04-12 21:09:12.328+10', '2022-04-12 21:09:12.328+10');
INSERT INTO public.notifications VALUES (398, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 21:35:03.445+10', '2022-04-12 21:35:03.445+10');
INSERT INTO public.notifications VALUES (399, 2091, 'Appointment Cancelled', 2092, 'PatientCancelled', 'patient', NULL, 0, 390, '2022-04-12 21:35:11.43+10', '2022-04-12 21:35:11.43+10');
INSERT INTO public.notifications VALUES (400, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 22:07:20.109+10', '2022-04-12 22:07:20.109+10');
INSERT INTO public.notifications VALUES (401, 2101, 'Appointment Cancelled', 2102, 'PatientCancelled', 'patient', NULL, 0, 392, '2022-04-12 22:07:28.272+10', '2022-04-12 22:07:28.272+10');
INSERT INTO public.notifications VALUES (402, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 22:29:56.052+10', '2022-04-12 22:29:56.052+10');
INSERT INTO public.notifications VALUES (403, 2111, 'Appointment Cancelled', 2112, 'PatientCancelled', 'patient', NULL, 0, 394, '2022-04-12 22:30:03.344+10', '2022-04-12 22:30:03.344+10');
INSERT INTO public.notifications VALUES (404, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 22:40:45.579+10', '2022-04-12 22:40:45.579+10');
INSERT INTO public.notifications VALUES (405, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 22:40:50.48+10', '2022-04-12 22:40:50.48+10');
INSERT INTO public.notifications VALUES (406, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 22:46:11.631+10', '2022-04-12 22:46:11.631+10');
INSERT INTO public.notifications VALUES (407, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 22:46:39.408+10', '2022-04-12 22:46:39.408+10');
INSERT INTO public.notifications VALUES (408, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 22:59:20.076+10', '2022-04-12 22:59:20.076+10');
INSERT INTO public.notifications VALUES (409, 22, 'Appointment Cancelled', 2, 'PatientCancelled', 'patient', NULL, 0, 403, '2022-04-12 23:19:47.714+10', '2022-04-12 23:19:47.714+10');
INSERT INTO public.notifications VALUES (410, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-12 23:25:27.259+10', '2022-04-12 23:25:27.259+10');
INSERT INTO public.notifications VALUES (411, 2170, 'Appointment Cancelled', 2171, 'PatientCancelled', 'patient', NULL, 0, 405, '2022-04-12 23:25:33.816+10', '2022-04-12 23:25:33.816+10');
INSERT INTO public.notifications VALUES (412, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-13 14:26:18.271+10', '2022-04-13 14:26:18.271+10');
INSERT INTO public.notifications VALUES (413, 2180, 'Appointment Cancelled', 2181, 'PatientCancelled', 'patient', NULL, 0, 407, '2022-04-13 14:26:26.385+10', '2022-04-13 14:26:26.385+10');
INSERT INTO public.notifications VALUES (414, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-13 14:43:57.052+10', '2022-04-13 14:43:57.052+10');
INSERT INTO public.notifications VALUES (415, 2190, 'Appointment Cancelled', 2191, 'PatientCancelled', 'patient', NULL, 0, 409, '2022-04-13 14:44:05.134+10', '2022-04-13 14:44:05.134+10');
INSERT INTO public.notifications VALUES (416, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-13 15:57:28.081+10', '2022-04-13 15:57:28.081+10');
INSERT INTO public.notifications VALUES (417, 2200, 'Appointment Cancelled', 2201, 'PatientCancelled', 'patient', NULL, 0, 411, '2022-04-13 15:57:35.717+10', '2022-04-13 15:57:35.717+10');
INSERT INTO public.notifications VALUES (418, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-13 16:08:45.719+10', '2022-04-13 16:08:45.719+10');
INSERT INTO public.notifications VALUES (419, 2210, 'Appointment Cancelled', 2211, 'PatientCancelled', 'patient', NULL, 0, 413, '2022-04-13 16:08:53.78+10', '2022-04-13 16:08:53.78+10');
INSERT INTO public.notifications VALUES (420, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-13 16:15:27.869+10', '2022-04-13 16:15:27.869+10');
INSERT INTO public.notifications VALUES (421, 2220, 'Appointment Cancelled', 2221, 'PatientCancelled', 'patient', NULL, 0, 415, '2022-04-13 16:15:36.062+10', '2022-04-13 16:15:36.062+10');
INSERT INTO public.notifications VALUES (422, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-13 16:23:39.651+10', '2022-04-13 16:23:39.651+10');
INSERT INTO public.notifications VALUES (423, 2230, 'Appointment Cancelled', 2231, 'PatientCancelled', 'patient', NULL, 0, 417, '2022-04-13 16:23:46.839+10', '2022-04-13 16:23:46.839+10');
INSERT INTO public.notifications VALUES (424, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-13 16:47:06.006+10', '2022-04-13 16:47:06.006+10');
INSERT INTO public.notifications VALUES (425, 2240, 'Appointment Cancelled', 2241, 'PatientCancelled', 'patient', NULL, 0, 419, '2022-04-13 16:47:14.251+10', '2022-04-13 16:47:14.251+10');
INSERT INTO public.notifications VALUES (426, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-13 17:24:34.913+10', '2022-04-13 17:24:34.913+10');
INSERT INTO public.notifications VALUES (427, 2250, 'Appointment Cancelled', 2251, 'PatientCancelled', 'patient', NULL, 0, 421, '2022-04-13 17:24:42.432+10', '2022-04-13 17:24:42.432+10');
INSERT INTO public.notifications VALUES (428, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-13 17:53:54.843+10', '2022-04-13 17:53:54.843+10');
INSERT INTO public.notifications VALUES (429, 2260, 'Appointment Cancelled', 2261, 'PatientCancelled', 'patient', NULL, 0, 423, '2022-04-13 17:54:01.478+10', '2022-04-13 17:54:01.478+10');
INSERT INTO public.notifications VALUES (430, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-13 18:05:12.484+10', '2022-04-13 18:05:12.484+10');
INSERT INTO public.notifications VALUES (431, 2270, 'Appointment Cancelled', 2271, 'PatientCancelled', 'patient', NULL, 0, 425, '2022-04-13 18:05:20.66+10', '2022-04-13 18:05:20.66+10');
INSERT INTO public.notifications VALUES (432, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-14 17:20:24.177+10', '2022-04-14 17:20:24.177+10');
INSERT INTO public.notifications VALUES (433, 2280, 'Appointment Cancelled', 2281, 'PatientCancelled', 'patient', NULL, 0, 427, '2022-04-14 17:20:32.575+10', '2022-04-14 17:20:32.575+10');
INSERT INTO public.notifications VALUES (434, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-14 18:15:23.62+10', '2022-04-14 18:15:23.62+10');
INSERT INTO public.notifications VALUES (435, 2290, 'Appointment Cancelled', 2291, 'PatientCancelled', 'patient', NULL, 0, 429, '2022-04-14 18:15:31.838+10', '2022-04-14 18:15:31.838+10');
INSERT INTO public.notifications VALUES (436, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-14 19:34:47.658+10', '2022-04-14 19:34:47.658+10');
INSERT INTO public.notifications VALUES (437, 2300, 'Appointment Cancelled', 2301, 'PatientCancelled', 'patient', NULL, 0, 431, '2022-04-14 19:34:51.888+10', '2022-04-14 19:34:51.888+10');
INSERT INTO public.notifications VALUES (438, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-14 19:37:53.187+10', '2022-04-14 19:37:53.187+10');
INSERT INTO public.notifications VALUES (439, 2310, 'Appointment Cancelled', 2311, 'PatientCancelled', 'patient', NULL, 0, 433, '2022-04-14 19:37:57.086+10', '2022-04-14 19:37:57.086+10');
INSERT INTO public.notifications VALUES (440, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-14 19:40:21.245+10', '2022-04-14 19:40:21.245+10');
INSERT INTO public.notifications VALUES (441, 2320, 'Appointment Cancelled', 2321, 'PatientCancelled', 'patient', NULL, 0, 435, '2022-04-14 19:40:24.947+10', '2022-04-14 19:40:24.947+10');
INSERT INTO public.notifications VALUES (442, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-14 19:41:46.723+10', '2022-04-14 19:41:46.723+10');
INSERT INTO public.notifications VALUES (443, 2330, 'Appointment Cancelled', 2331, 'PatientCancelled', 'patient', NULL, 0, 437, '2022-04-14 19:41:50.516+10', '2022-04-14 19:41:50.516+10');
INSERT INTO public.notifications VALUES (444, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-14 19:43:43.369+10', '2022-04-14 19:43:43.369+10');
INSERT INTO public.notifications VALUES (445, 2340, 'Appointment Cancelled', 2341, 'PatientCancelled', 'patient', NULL, 0, 439, '2022-04-14 19:43:46.887+10', '2022-04-14 19:43:46.887+10');
INSERT INTO public.notifications VALUES (446, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-14 19:47:32.498+10', '2022-04-14 19:47:32.498+10');
INSERT INTO public.notifications VALUES (447, 2350, 'Appointment Cancelled', 2351, 'PatientCancelled', 'patient', NULL, 0, 441, '2022-04-14 19:47:36.763+10', '2022-04-14 19:47:36.763+10');
INSERT INTO public.notifications VALUES (448, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-14 19:54:02.96+10', '2022-04-14 19:54:02.96+10');
INSERT INTO public.notifications VALUES (449, 2360, 'Appointment Cancelled', 2361, 'PatientCancelled', 'patient', NULL, 0, 443, '2022-04-14 19:54:10.352+10', '2022-04-14 19:54:10.352+10');
INSERT INTO public.notifications VALUES (450, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-14 21:08:39.018+10', '2022-04-14 21:08:39.018+10');
INSERT INTO public.notifications VALUES (451, 2377, 'Appointment Cancelled', 2378, 'PatientCancelled', 'patient', NULL, 0, 445, '2022-04-14 21:08:43.796+10', '2022-04-14 21:08:43.796+10');
INSERT INTO public.notifications VALUES (452, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-14 21:20:00.605+10', '2022-04-14 21:20:00.605+10');
INSERT INTO public.notifications VALUES (453, 2387, 'Appointment Cancelled', 2388, 'PatientCancelled', 'patient', NULL, 0, 447, '2022-04-14 21:20:04.394+10', '2022-04-14 21:20:04.394+10');
INSERT INTO public.notifications VALUES (454, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-14 21:22:27.609+10', '2022-04-14 21:22:27.609+10');
INSERT INTO public.notifications VALUES (455, 2397, 'Appointment Cancelled', 2398, 'PatientCancelled', 'patient', NULL, 0, 449, '2022-04-14 21:22:31.407+10', '2022-04-14 21:22:31.407+10');
INSERT INTO public.notifications VALUES (456, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-14 21:26:44.883+10', '2022-04-14 21:26:44.883+10');
INSERT INTO public.notifications VALUES (457, 2407, 'Appointment Cancelled', 2408, 'PatientCancelled', 'patient', NULL, 0, 451, '2022-04-14 21:26:53.157+10', '2022-04-14 21:26:53.157+10');
INSERT INTO public.notifications VALUES (458, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-14 21:40:02.61+10', '2022-04-14 21:40:02.61+10');
INSERT INTO public.notifications VALUES (459, 2417, 'Appointment Cancelled', 2418, 'PatientCancelled', 'patient', NULL, 0, 453, '2022-04-14 21:40:09.086+10', '2022-04-14 21:40:09.086+10');
INSERT INTO public.notifications VALUES (460, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-14 22:12:13.958+10', '2022-04-14 22:12:13.958+10');
INSERT INTO public.notifications VALUES (461, 2427, 'Appointment Cancelled', 2428, 'PatientCancelled', 'patient', NULL, 0, 455, '2022-04-14 22:12:17.284+10', '2022-04-14 22:12:17.284+10');
INSERT INTO public.notifications VALUES (462, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-14 22:17:47.945+10', '2022-04-14 22:17:47.945+10');
INSERT INTO public.notifications VALUES (463, 2437, 'Appointment Cancelled', 2438, 'PatientCancelled', 'patient', NULL, 0, 457, '2022-04-14 22:17:56.302+10', '2022-04-14 22:17:56.302+10');
INSERT INTO public.notifications VALUES (464, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-14 22:34:59.759+10', '2022-04-14 22:34:59.759+10');
INSERT INTO public.notifications VALUES (465, 2447, 'Appointment Cancelled', 2448, 'PatientCancelled', 'patient', NULL, 0, 459, '2022-04-14 22:35:07.122+10', '2022-04-14 22:35:07.122+10');
INSERT INTO public.notifications VALUES (466, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-18 23:04:51.829+10', '2022-04-18 23:04:51.829+10');
INSERT INTO public.notifications VALUES (467, 2457, 'Appointment Cancelled', 2458, 'PatientCancelled', 'patient', NULL, 0, 461, '2022-04-18 23:04:55.387+10', '2022-04-18 23:04:55.387+10');
INSERT INTO public.notifications VALUES (468, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-18 23:07:25.363+10', '2022-04-18 23:07:25.363+10');
INSERT INTO public.notifications VALUES (469, 2467, 'Appointment Cancelled', 2468, 'PatientCancelled', 'patient', NULL, 0, 463, '2022-04-18 23:07:28.945+10', '2022-04-18 23:07:28.945+10');
INSERT INTO public.notifications VALUES (470, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-18 23:11:30.706+10', '2022-04-18 23:11:30.706+10');
INSERT INTO public.notifications VALUES (471, 2477, 'Appointment Cancelled', 2478, 'PatientCancelled', 'patient', NULL, 0, 465, '2022-04-18 23:11:34.258+10', '2022-04-18 23:11:34.258+10');
INSERT INTO public.notifications VALUES (472, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-18 23:17:53.083+10', '2022-04-18 23:17:53.083+10');
INSERT INTO public.notifications VALUES (473, 2487, 'Appointment Cancelled', 2488, 'PatientCancelled', 'patient', NULL, 0, 467, '2022-04-18 23:17:56.529+10', '2022-04-18 23:17:56.529+10');
INSERT INTO public.notifications VALUES (474, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 13:36:28.026+10', '2022-04-19 13:36:28.026+10');
INSERT INTO public.notifications VALUES (475, 2497, 'Appointment Cancelled', 2498, 'PatientCancelled', 'patient', NULL, 0, 469, '2022-04-19 13:36:31.46+10', '2022-04-19 13:36:31.46+10');
INSERT INTO public.notifications VALUES (476, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 13:57:44.564+10', '2022-04-19 13:57:44.564+10');
INSERT INTO public.notifications VALUES (477, 2507, 'Appointment Cancelled', 2508, 'PatientCancelled', 'patient', NULL, 0, 471, '2022-04-19 13:57:48.151+10', '2022-04-19 13:57:48.151+10');
INSERT INTO public.notifications VALUES (478, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 14:41:58.753+10', '2022-04-19 14:41:58.753+10');
INSERT INTO public.notifications VALUES (479, 2517, 'Appointment Cancelled', 2518, 'PatientCancelled', 'patient', NULL, 0, 473, '2022-04-19 14:42:02.322+10', '2022-04-19 14:42:02.322+10');
INSERT INTO public.notifications VALUES (480, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 14:45:46.471+10', '2022-04-19 14:45:46.471+10');
INSERT INTO public.notifications VALUES (481, 2527, 'Appointment Cancelled', 2528, 'PatientCancelled', 'patient', NULL, 0, 475, '2022-04-19 14:45:49.791+10', '2022-04-19 14:45:49.791+10');
INSERT INTO public.notifications VALUES (482, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 14:55:02.335+10', '2022-04-19 14:55:02.335+10');
INSERT INTO public.notifications VALUES (483, 2538, 'Appointment Cancelled', 2539, 'PatientCancelled', 'patient', NULL, 0, 477, '2022-04-19 14:55:05.732+10', '2022-04-19 14:55:05.732+10');
INSERT INTO public.notifications VALUES (484, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 15:03:24.96+10', '2022-04-19 15:03:24.96+10');
INSERT INTO public.notifications VALUES (485, 2548, 'Appointment Cancelled', 2549, 'PatientCancelled', 'patient', NULL, 0, 479, '2022-04-19 15:03:31.449+10', '2022-04-19 15:03:31.449+10');
INSERT INTO public.notifications VALUES (486, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 15:30:23.487+10', '2022-04-19 15:30:23.487+10');
INSERT INTO public.notifications VALUES (487, 2558, 'Appointment Cancelled', 2559, 'PatientCancelled', 'patient', NULL, 0, 481, '2022-04-19 15:30:26.931+10', '2022-04-19 15:30:26.931+10');
INSERT INTO public.notifications VALUES (488, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 15:35:05.786+10', '2022-04-19 15:35:05.786+10');
INSERT INTO public.notifications VALUES (489, 2568, 'Appointment Cancelled', 2569, 'PatientCancelled', 'patient', NULL, 0, 483, '2022-04-19 15:35:12.349+10', '2022-04-19 15:35:12.349+10');
INSERT INTO public.notifications VALUES (490, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 16:22:11.171+10', '2022-04-19 16:22:11.171+10');
INSERT INTO public.notifications VALUES (491, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 16:22:26.729+10', '2022-04-19 16:22:26.729+10');
INSERT INTO public.notifications VALUES (492, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 18:31:58.413+10', '2022-04-19 18:31:58.413+10');
INSERT INTO public.notifications VALUES (493, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 18:32:26.138+10', '2022-04-19 18:32:26.138+10');
INSERT INTO public.notifications VALUES (494, 2578, 'Appointment Cancelled', 2579, 'PatientCancelled', 'patient', NULL, 0, 485, '2022-04-19 18:32:33.418+10', '2022-04-19 18:32:33.418+10');
INSERT INTO public.notifications VALUES (495, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 19:41:34.085+10', '2022-04-19 19:41:34.085+10');
INSERT INTO public.notifications VALUES (496, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 19:42:04.086+10', '2022-04-19 19:42:04.086+10');
INSERT INTO public.notifications VALUES (497, 2588, 'Appointment Cancelled', 2589, 'PatientCancelled', 'patient', NULL, 0, 487, '2022-04-19 19:42:12.202+10', '2022-04-19 19:42:12.202+10');
INSERT INTO public.notifications VALUES (498, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 19:47:53.067+10', '2022-04-19 19:47:53.067+10');
INSERT INTO public.notifications VALUES (499, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 19:48:22.405+10', '2022-04-19 19:48:22.405+10');
INSERT INTO public.notifications VALUES (500, 2598, 'Appointment Cancelled', 2599, 'PatientCancelled', 'patient', NULL, 0, 489, '2022-04-19 19:48:30.502+10', '2022-04-19 19:48:30.502+10');
INSERT INTO public.notifications VALUES (501, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 19:54:48.855+10', '2022-04-19 19:54:48.855+10');
INSERT INTO public.notifications VALUES (502, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 19:55:16.603+10', '2022-04-19 19:55:16.603+10');
INSERT INTO public.notifications VALUES (503, 2608, 'Appointment Cancelled', 2609, 'PatientCancelled', 'patient', NULL, 0, 491, '2022-04-19 19:55:24.031+10', '2022-04-19 19:55:24.031+10');
INSERT INTO public.notifications VALUES (504, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 20:03:22.093+10', '2022-04-19 20:03:22.093+10');
INSERT INTO public.notifications VALUES (505, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 20:03:51.987+10', '2022-04-19 20:03:51.987+10');
INSERT INTO public.notifications VALUES (506, 2618, 'Appointment Cancelled', 2619, 'PatientCancelled', 'patient', NULL, 0, 493, '2022-04-19 20:04:00.259+10', '2022-04-19 20:04:00.259+10');
INSERT INTO public.notifications VALUES (507, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 20:19:25.954+10', '2022-04-19 20:19:25.954+10');
INSERT INTO public.notifications VALUES (508, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 20:19:43.386+10', '2022-04-19 20:19:43.386+10');
INSERT INTO public.notifications VALUES (509, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 20:19:43.63+10', '2022-04-19 20:19:43.63+10');
INSERT INTO public.notifications VALUES (510, 2629, 'Appointment Cancelled', 2630, 'PatientCancelled', 'patient', NULL, 0, 495, '2022-04-19 20:19:47.066+10', '2022-04-19 20:19:47.066+10');
INSERT INTO public.notifications VALUES (511, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 20:20:13.501+10', '2022-04-19 20:20:13.501+10');
INSERT INTO public.notifications VALUES (512, 2638, 'Appointment Cancelled', 2639, 'PatientCancelled', 'patient', NULL, 0, 497, '2022-04-19 20:20:21.647+10', '2022-04-19 20:20:21.647+10');
INSERT INTO public.notifications VALUES (513, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 21:04:31.512+10', '2022-04-19 21:04:31.512+10');
INSERT INTO public.notifications VALUES (514, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 21:04:58.211+10', '2022-04-19 21:04:58.211+10');
INSERT INTO public.notifications VALUES (515, 2648, 'Appointment Cancelled', 2649, 'PatientCancelled', 'patient', NULL, 0, 499, '2022-04-19 21:05:04.712+10', '2022-04-19 21:05:04.712+10');
INSERT INTO public.notifications VALUES (516, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 21:13:18.308+10', '2022-04-19 21:13:18.308+10');
INSERT INTO public.notifications VALUES (517, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 21:13:47.943+10', '2022-04-19 21:13:47.943+10');
INSERT INTO public.notifications VALUES (518, 2658, 'Appointment Cancelled', 2659, 'PatientCancelled', 'patient', NULL, 0, 501, '2022-04-19 21:13:56.104+10', '2022-04-19 21:13:56.104+10');
INSERT INTO public.notifications VALUES (519, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 21:56:25.718+10', '2022-04-19 21:56:25.718+10');
INSERT INTO public.notifications VALUES (520, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 21:56:53.328+10', '2022-04-19 21:56:53.328+10');
INSERT INTO public.notifications VALUES (521, 2668, 'Appointment Cancelled', 2669, 'PatientCancelled', 'patient', NULL, 0, 503, '2022-04-19 21:57:00.817+10', '2022-04-19 21:57:00.817+10');
INSERT INTO public.notifications VALUES (522, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:01:35.08+10', '2022-04-19 22:01:35.08+10');
INSERT INTO public.notifications VALUES (523, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:02:03.201+10', '2022-04-19 22:02:03.201+10');
INSERT INTO public.notifications VALUES (524, 2678, 'Appointment Cancelled', 2679, 'PatientCancelled', 'patient', NULL, 0, 505, '2022-04-19 22:02:10.621+10', '2022-04-19 22:02:10.621+10');
INSERT INTO public.notifications VALUES (525, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:08:58.125+10', '2022-04-19 22:08:58.125+10');
INSERT INTO public.notifications VALUES (526, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:09:16+10', '2022-04-19 22:09:16+10');
INSERT INTO public.notifications VALUES (527, 2688, 'Appointment Cancelled', 2689, 'PatientCancelled', 'patient', NULL, 0, 507, '2022-04-19 22:09:19.54+10', '2022-04-19 22:09:19.54+10');
INSERT INTO public.notifications VALUES (528, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:10:42.528+10', '2022-04-19 22:10:42.528+10');
INSERT INTO public.notifications VALUES (529, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:11:00.156+10', '2022-04-19 22:11:00.156+10');
INSERT INTO public.notifications VALUES (530, 2698, 'Appointment Cancelled', 2699, 'PatientCancelled', 'patient', NULL, 0, 509, '2022-04-19 22:11:03.621+10', '2022-04-19 22:11:03.621+10');
INSERT INTO public.notifications VALUES (531, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:14:53.492+10', '2022-04-19 22:14:53.492+10');
INSERT INTO public.notifications VALUES (532, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:15:24.518+10', '2022-04-19 22:15:24.518+10');
INSERT INTO public.notifications VALUES (533, 2708, 'Appointment Cancelled', 2709, 'PatientCancelled', 'patient', NULL, 0, 511, '2022-04-19 22:15:32.856+10', '2022-04-19 22:15:32.856+10');
INSERT INTO public.notifications VALUES (534, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:25:04.745+10', '2022-04-19 22:25:04.745+10');
INSERT INTO public.notifications VALUES (535, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:25:22.174+10', '2022-04-19 22:25:22.174+10');
INSERT INTO public.notifications VALUES (536, 2718, 'Appointment Cancelled', 2719, 'PatientCancelled', 'patient', NULL, 0, 513, '2022-04-19 22:25:25.642+10', '2022-04-19 22:25:25.642+10');
INSERT INTO public.notifications VALUES (537, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:26:18.084+10', '2022-04-19 22:26:18.084+10');
INSERT INTO public.notifications VALUES (538, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:26:35.982+10', '2022-04-19 22:26:35.982+10');
INSERT INTO public.notifications VALUES (539, 2728, 'Appointment Cancelled', 2729, 'PatientCancelled', 'patient', NULL, 0, 515, '2022-04-19 22:26:39.433+10', '2022-04-19 22:26:39.433+10');
INSERT INTO public.notifications VALUES (540, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:32:26.915+10', '2022-04-19 22:32:26.915+10');
INSERT INTO public.notifications VALUES (541, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:32:44.038+10', '2022-04-19 22:32:44.038+10');
INSERT INTO public.notifications VALUES (542, 2738, 'Appointment Cancelled', 2739, 'PatientCancelled', 'patient', NULL, 0, 517, '2022-04-19 22:32:47.438+10', '2022-04-19 22:32:47.438+10');
INSERT INTO public.notifications VALUES (543, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:34:28.93+10', '2022-04-19 22:34:28.93+10');
INSERT INTO public.notifications VALUES (544, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:34:47.659+10', '2022-04-19 22:34:47.659+10');
INSERT INTO public.notifications VALUES (545, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:34:58.768+10', '2022-04-19 22:34:58.768+10');
INSERT INTO public.notifications VALUES (546, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:35:08.739+10', '2022-04-19 22:35:08.739+10');
INSERT INTO public.notifications VALUES (547, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:35:16.01+10', '2022-04-19 22:35:16.01+10');
INSERT INTO public.notifications VALUES (548, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:35:25.968+10', '2022-04-19 22:35:25.968+10');
INSERT INTO public.notifications VALUES (549, 2767, 'Appointment Cancelled', 2768, 'PatientCancelled', 'patient', NULL, 0, 523, '2022-04-19 22:35:29.519+10', '2022-04-19 22:35:29.519+10');
INSERT INTO public.notifications VALUES (550, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:37:03.458+10', '2022-04-19 22:37:03.458+10');
INSERT INTO public.notifications VALUES (551, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:37:21.121+10', '2022-04-19 22:37:21.121+10');
INSERT INTO public.notifications VALUES (552, 2777, 'Appointment Cancelled', 2778, 'PatientCancelled', 'patient', NULL, 0, 525, '2022-04-19 22:37:24.532+10', '2022-04-19 22:37:24.532+10');
INSERT INTO public.notifications VALUES (553, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:37:48.53+10', '2022-04-19 22:37:48.53+10');
INSERT INTO public.notifications VALUES (554, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:38:04.966+10', '2022-04-19 22:38:04.966+10');
INSERT INTO public.notifications VALUES (555, 2787, 'Appointment Cancelled', 2788, 'PatientCancelled', 'patient', NULL, 0, 527, '2022-04-19 22:38:07.931+10', '2022-04-19 22:38:07.931+10');
INSERT INTO public.notifications VALUES (556, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:39:10.107+10', '2022-04-19 22:39:10.107+10');
INSERT INTO public.notifications VALUES (557, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:39:27.64+10', '2022-04-19 22:39:27.64+10');
INSERT INTO public.notifications VALUES (558, 2797, 'Appointment Cancelled', 2798, 'PatientCancelled', 'patient', NULL, 0, 529, '2022-04-19 22:39:30.967+10', '2022-04-19 22:39:30.967+10');
INSERT INTO public.notifications VALUES (559, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:40:42.837+10', '2022-04-19 22:40:42.837+10');
INSERT INTO public.notifications VALUES (560, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:40:59.389+10', '2022-04-19 22:40:59.389+10');
INSERT INTO public.notifications VALUES (561, 2807, 'Appointment Cancelled', 2808, 'PatientCancelled', 'patient', NULL, 0, 531, '2022-04-19 22:41:02.312+10', '2022-04-19 22:41:02.312+10');
INSERT INTO public.notifications VALUES (562, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:42:30.05+10', '2022-04-19 22:42:30.05+10');
INSERT INTO public.notifications VALUES (563, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:42:48.315+10', '2022-04-19 22:42:48.315+10');
INSERT INTO public.notifications VALUES (564, 2817, 'Appointment Cancelled', 2818, 'PatientCancelled', 'patient', NULL, 0, 533, '2022-04-19 22:42:51.655+10', '2022-04-19 22:42:51.655+10');
INSERT INTO public.notifications VALUES (565, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:45:48.547+10', '2022-04-19 22:45:48.547+10');
INSERT INTO public.notifications VALUES (566, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:46:18.05+10', '2022-04-19 22:46:18.05+10');
INSERT INTO public.notifications VALUES (567, 2827, 'Appointment Cancelled', 2828, 'PatientCancelled', 'patient', NULL, 0, 535, '2022-04-19 22:46:26.26+10', '2022-04-19 22:46:26.26+10');
INSERT INTO public.notifications VALUES (568, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:51:05.083+10', '2022-04-19 22:51:05.083+10');
INSERT INTO public.notifications VALUES (569, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:51:32.406+10', '2022-04-19 22:51:32.406+10');
INSERT INTO public.notifications VALUES (570, 2837, 'Appointment Cancelled', 2838, 'PatientCancelled', 'patient', NULL, 0, 537, '2022-04-19 22:51:39.764+10', '2022-04-19 22:51:39.764+10');
INSERT INTO public.notifications VALUES (571, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:54:50.981+10', '2022-04-19 22:54:50.981+10');
INSERT INTO public.notifications VALUES (572, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:55:07.779+10', '2022-04-19 22:55:07.779+10');
INSERT INTO public.notifications VALUES (573, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:55:09.733+10', '2022-04-19 22:55:09.733+10');
INSERT INTO public.notifications VALUES (574, 2847, 'Appointment Cancelled', 2848, 'PatientCancelled', 'patient', NULL, 0, 538, '2022-04-19 22:55:10.794+10', '2022-04-19 22:55:10.794+10');
INSERT INTO public.notifications VALUES (575, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:55:26.741+10', '2022-04-19 22:55:26.741+10');
INSERT INTO public.notifications VALUES (576, 2857, 'Appointment Cancelled', 2858, 'PatientCancelled', 'patient', NULL, 0, 540, '2022-04-19 22:55:30.185+10', '2022-04-19 22:55:30.185+10');
INSERT INTO public.notifications VALUES (577, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:59:03.969+10', '2022-04-19 22:59:03.969+10');
INSERT INTO public.notifications VALUES (578, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 22:59:30.941+10', '2022-04-19 22:59:30.941+10');
INSERT INTO public.notifications VALUES (579, 2867, 'Appointment Cancelled', 2868, 'PatientCancelled', 'patient', NULL, 0, 542, '2022-04-19 22:59:37.443+10', '2022-04-19 22:59:37.443+10');
INSERT INTO public.notifications VALUES (580, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 23:05:53.487+10', '2022-04-19 23:05:53.487+10');
INSERT INTO public.notifications VALUES (581, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-19 23:06:21.103+10', '2022-04-19 23:06:21.103+10');
INSERT INTO public.notifications VALUES (582, 2877, 'Appointment Cancelled', 2878, 'PatientCancelled', 'patient', NULL, 0, 544, '2022-04-19 23:06:28.482+10', '2022-04-19 23:06:28.482+10');
INSERT INTO public.notifications VALUES (583, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 13:36:17.596+10', '2022-04-20 13:36:17.596+10');
INSERT INTO public.notifications VALUES (584, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 13:36:36.642+10', '2022-04-20 13:36:36.642+10');
INSERT INTO public.notifications VALUES (585, 2887, 'Appointment Cancelled', 2888, 'PatientCancelled', 'patient', NULL, 0, 546, '2022-04-20 13:36:40.385+10', '2022-04-20 13:36:40.385+10');
INSERT INTO public.notifications VALUES (586, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 13:39:47.718+10', '2022-04-20 13:39:47.718+10');
INSERT INTO public.notifications VALUES (587, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 13:40:05.619+10', '2022-04-20 13:40:05.619+10');
INSERT INTO public.notifications VALUES (588, 2897, 'Appointment Cancelled', 2898, 'PatientCancelled', 'patient', NULL, 0, 548, '2022-04-20 13:40:09.304+10', '2022-04-20 13:40:09.304+10');
INSERT INTO public.notifications VALUES (589, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 13:42:00.738+10', '2022-04-20 13:42:00.738+10');
INSERT INTO public.notifications VALUES (590, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 13:42:21.528+10', '2022-04-20 13:42:21.528+10');
INSERT INTO public.notifications VALUES (591, 2907, 'Appointment Cancelled', 2908, 'PatientCancelled', 'patient', NULL, 0, 550, '2022-04-20 13:42:27.873+10', '2022-04-20 13:42:27.873+10');
INSERT INTO public.notifications VALUES (592, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 13:47:17.092+10', '2022-04-20 13:47:17.092+10');
INSERT INTO public.notifications VALUES (593, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 13:47:37.662+10', '2022-04-20 13:47:37.662+10');
INSERT INTO public.notifications VALUES (594, 2917, 'Appointment Cancelled', 2918, 'PatientCancelled', 'patient', NULL, 0, 552, '2022-04-20 13:47:42.86+10', '2022-04-20 13:47:42.86+10');
INSERT INTO public.notifications VALUES (595, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 13:51:17.889+10', '2022-04-20 13:51:17.889+10');
INSERT INTO public.notifications VALUES (596, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 13:51:37.686+10', '2022-04-20 13:51:37.686+10');
INSERT INTO public.notifications VALUES (597, 2927, 'Appointment Cancelled', 2928, 'PatientCancelled', 'patient', NULL, 0, 554, '2022-04-20 13:51:42.281+10', '2022-04-20 13:51:42.281+10');
INSERT INTO public.notifications VALUES (598, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 13:54:25.041+10', '2022-04-20 13:54:25.041+10');
INSERT INTO public.notifications VALUES (599, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 13:54:43.834+10', '2022-04-20 13:54:43.834+10');
INSERT INTO public.notifications VALUES (600, 2937, 'Appointment Cancelled', 2938, 'PatientCancelled', 'patient', NULL, 0, 556, '2022-04-20 13:54:48.413+10', '2022-04-20 13:54:48.413+10');
INSERT INTO public.notifications VALUES (601, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 13:56:46.979+10', '2022-04-20 13:56:46.979+10');
INSERT INTO public.notifications VALUES (602, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 13:57:05.936+10', '2022-04-20 13:57:05.936+10');
INSERT INTO public.notifications VALUES (603, 2947, 'Appointment Cancelled', 2948, 'PatientCancelled', 'patient', NULL, 0, 558, '2022-04-20 13:57:09.822+10', '2022-04-20 13:57:09.822+10');
INSERT INTO public.notifications VALUES (604, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 13:59:42.825+10', '2022-04-20 13:59:42.825+10');
INSERT INTO public.notifications VALUES (605, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 14:00:01.028+10', '2022-04-20 14:00:01.028+10');
INSERT INTO public.notifications VALUES (606, 2957, 'Appointment Cancelled', 2958, 'PatientCancelled', 'patient', NULL, 0, 560, '2022-04-20 14:00:05.745+10', '2022-04-20 14:00:05.745+10');
INSERT INTO public.notifications VALUES (607, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 14:04:53.97+10', '2022-04-20 14:04:53.97+10');
INSERT INTO public.notifications VALUES (608, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 14:05:21.44+10', '2022-04-20 14:05:21.44+10');
INSERT INTO public.notifications VALUES (609, 2967, 'Appointment Cancelled', 2968, 'PatientCancelled', 'patient', NULL, 0, 562, '2022-04-20 14:05:28.815+10', '2022-04-20 14:05:28.815+10');
INSERT INTO public.notifications VALUES (610, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 14:44:44.601+10', '2022-04-20 14:44:44.601+10');
INSERT INTO public.notifications VALUES (611, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 14:46:45.189+10', '2022-04-20 14:46:45.189+10');
INSERT INTO public.notifications VALUES (612, 2972, 'Appointment Cancelled', 2973, 'PatientCancelled', 'patient', NULL, 0, 564, '2022-04-20 14:46:48.301+10', '2022-04-20 14:46:48.301+10');
INSERT INTO public.notifications VALUES (613, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 14:47:12.411+10', '2022-04-20 14:47:12.411+10');
INSERT INTO public.notifications VALUES (614, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 14:47:23.744+10', '2022-04-20 14:47:23.744+10');
INSERT INTO public.notifications VALUES (615, 2982, 'Appointment Cancelled', 2983, 'PatientCancelled', 'patient', NULL, 0, 566, '2022-04-20 14:47:26.992+10', '2022-04-20 14:47:26.992+10');
INSERT INTO public.notifications VALUES (616, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 14:59:56.893+10', '2022-04-20 14:59:56.893+10');
INSERT INTO public.notifications VALUES (617, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 15:00:14.977+10', '2022-04-20 15:00:14.977+10');
INSERT INTO public.notifications VALUES (618, 2997, 'Appointment Cancelled', 2998, 'PatientCancelled', 'patient', NULL, 0, 568, '2022-04-20 15:00:18.804+10', '2022-04-20 15:00:18.804+10');
INSERT INTO public.notifications VALUES (619, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 15:09:12.281+10', '2022-04-20 15:09:12.281+10');
INSERT INTO public.notifications VALUES (620, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 15:09:24.475+10', '2022-04-20 15:09:24.475+10');
INSERT INTO public.notifications VALUES (621, 3002, 'Appointment Cancelled', 3003, 'PatientCancelled', 'patient', NULL, 0, 570, '2022-04-20 15:09:27.573+10', '2022-04-20 15:09:27.573+10');
INSERT INTO public.notifications VALUES (622, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 15:16:03.147+10', '2022-04-20 15:16:03.147+10');
INSERT INTO public.notifications VALUES (623, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 15:16:19.246+10', '2022-04-20 15:16:19.246+10');
INSERT INTO public.notifications VALUES (624, 3017, 'Appointment Cancelled', 3018, 'PatientCancelled', 'patient', NULL, 0, 572, '2022-04-20 15:16:22.224+10', '2022-04-20 15:16:22.224+10');
INSERT INTO public.notifications VALUES (625, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 15:43:32.373+10', '2022-04-20 15:43:32.373+10');
INSERT INTO public.notifications VALUES (626, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 15:44:02.957+10', '2022-04-20 15:44:02.957+10');
INSERT INTO public.notifications VALUES (627, 3027, 'Appointment Cancelled', 3028, 'PatientCancelled', 'patient', NULL, 0, 574, '2022-04-20 15:44:11.245+10', '2022-04-20 15:44:11.245+10');
INSERT INTO public.notifications VALUES (628, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 15:54:26.204+10', '2022-04-20 15:54:26.204+10');
INSERT INTO public.notifications VALUES (629, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 15:54:42.464+10', '2022-04-20 15:54:42.464+10');
INSERT INTO public.notifications VALUES (630, 3037, 'Appointment Cancelled', 3038, 'PatientCancelled', 'patient', NULL, 0, 576, '2022-04-20 15:54:45.53+10', '2022-04-20 15:54:45.53+10');
INSERT INTO public.notifications VALUES (631, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 15:58:02.676+10', '2022-04-20 15:58:02.676+10');
INSERT INTO public.notifications VALUES (632, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 15:58:32.421+10', '2022-04-20 15:58:32.421+10');
INSERT INTO public.notifications VALUES (633, 3047, 'Appointment Cancelled', 3048, 'PatientCancelled', 'patient', NULL, 0, 578, '2022-04-20 15:58:40.565+10', '2022-04-20 15:58:40.565+10');
INSERT INTO public.notifications VALUES (634, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 16:46:49.442+10', '2022-04-20 16:46:49.442+10');
INSERT INTO public.notifications VALUES (635, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 16:47:07.817+10', '2022-04-20 16:47:07.817+10');
INSERT INTO public.notifications VALUES (636, 3057, 'Appointment Cancelled', 3058, 'PatientCancelled', 'patient', NULL, 0, 580, '2022-04-20 16:47:11.544+10', '2022-04-20 16:47:11.544+10');
INSERT INTO public.notifications VALUES (637, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 16:50:29.838+10', '2022-04-20 16:50:29.838+10');
INSERT INTO public.notifications VALUES (638, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 16:50:59.494+10', '2022-04-20 16:50:59.494+10');
INSERT INTO public.notifications VALUES (639, 3067, 'Appointment Cancelled', 3068, 'PatientCancelled', 'patient', NULL, 0, 582, '2022-04-20 16:51:07.608+10', '2022-04-20 16:51:07.608+10');
INSERT INTO public.notifications VALUES (640, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 16:59:59.872+10', '2022-04-20 16:59:59.872+10');
INSERT INTO public.notifications VALUES (641, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 17:00:18.099+10', '2022-04-20 17:00:18.099+10');
INSERT INTO public.notifications VALUES (642, 3077, 'Appointment Cancelled', 3078, 'PatientCancelled', 'patient', NULL, 0, 584, '2022-04-20 17:00:21.722+10', '2022-04-20 17:00:21.722+10');
INSERT INTO public.notifications VALUES (643, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 17:04:42.536+10', '2022-04-20 17:04:42.536+10');
INSERT INTO public.notifications VALUES (644, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 17:05:09.655+10', '2022-04-20 17:05:09.655+10');
INSERT INTO public.notifications VALUES (645, 3087, 'Appointment Cancelled', 3088, 'PatientCancelled', 'patient', NULL, 0, 586, '2022-04-20 17:05:16.793+10', '2022-04-20 17:05:16.793+10');
INSERT INTO public.notifications VALUES (646, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 17:27:50.346+10', '2022-04-20 17:27:50.346+10');
INSERT INTO public.notifications VALUES (647, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 17:28:09.32+10', '2022-04-20 17:28:09.32+10');
INSERT INTO public.notifications VALUES (648, 3097, 'Appointment Cancelled', 3098, 'PatientCancelled', 'patient', NULL, 0, 588, '2022-04-20 17:28:13.091+10', '2022-04-20 17:28:13.091+10');
INSERT INTO public.notifications VALUES (649, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 17:32:27.827+10', '2022-04-20 17:32:27.827+10');
INSERT INTO public.notifications VALUES (650, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 17:32:57.701+10', '2022-04-20 17:32:57.701+10');
INSERT INTO public.notifications VALUES (651, 3107, 'Appointment Cancelled', 3108, 'PatientCancelled', 'patient', NULL, 0, 590, '2022-04-20 17:33:05.844+10', '2022-04-20 17:33:05.844+10');
INSERT INTO public.notifications VALUES (652, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 19:29:51.391+10', '2022-04-20 19:29:51.391+10');
INSERT INTO public.notifications VALUES (653, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 19:30:07.453+10', '2022-04-20 19:30:07.453+10');
INSERT INTO public.notifications VALUES (654, 3117, 'Appointment Cancelled', 3118, 'PatientCancelled', 'patient', NULL, 0, 592, '2022-04-20 19:30:10.282+10', '2022-04-20 19:30:10.282+10');
INSERT INTO public.notifications VALUES (655, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 19:37:00.866+10', '2022-04-20 19:37:00.866+10');
INSERT INTO public.notifications VALUES (656, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 19:37:33.335+10', '2022-04-20 19:37:33.335+10');
INSERT INTO public.notifications VALUES (657, 3127, 'Appointment Cancelled', 3128, 'PatientCancelled', 'patient', NULL, 0, 594, '2022-04-20 19:37:41.742+10', '2022-04-20 19:37:41.742+10');
INSERT INTO public.notifications VALUES (658, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 19:44:37.122+10', '2022-04-20 19:44:37.122+10');
INSERT INTO public.notifications VALUES (659, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 19:45:04.851+10', '2022-04-20 19:45:04.851+10');
INSERT INTO public.notifications VALUES (660, 3137, 'Appointment Cancelled', 3138, 'PatientCancelled', 'patient', NULL, 0, 596, '2022-04-20 19:45:12.36+10', '2022-04-20 19:45:12.36+10');
INSERT INTO public.notifications VALUES (661, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 20:01:34.42+10', '2022-04-20 20:01:34.42+10');
INSERT INTO public.notifications VALUES (662, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 20:02:04.027+10', '2022-04-20 20:02:04.027+10');
INSERT INTO public.notifications VALUES (663, 3147, 'Appointment Cancelled', 3148, 'PatientCancelled', 'patient', NULL, 0, 598, '2022-04-20 20:02:12.225+10', '2022-04-20 20:02:12.225+10');
INSERT INTO public.notifications VALUES (664, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 20:08:50.996+10', '2022-04-20 20:08:50.996+10');
INSERT INTO public.notifications VALUES (665, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 20:09:22.674+10', '2022-04-20 20:09:22.674+10');
INSERT INTO public.notifications VALUES (666, 3157, 'Appointment Cancelled', 3158, 'PatientCancelled', 'patient', NULL, 0, 600, '2022-04-20 20:09:30.908+10', '2022-04-20 20:09:30.908+10');
INSERT INTO public.notifications VALUES (667, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 20:19:12.853+10', '2022-04-20 20:19:12.853+10');
INSERT INTO public.notifications VALUES (668, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 20:19:44.285+10', '2022-04-20 20:19:44.285+10');
INSERT INTO public.notifications VALUES (669, 3167, 'Appointment Cancelled', 3168, 'PatientCancelled', 'patient', NULL, 0, 602, '2022-04-20 20:19:52.628+10', '2022-04-20 20:19:52.628+10');
INSERT INTO public.notifications VALUES (670, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 20:32:13.013+10', '2022-04-20 20:32:13.013+10');
INSERT INTO public.notifications VALUES (671, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 20:32:40.513+10', '2022-04-20 20:32:40.513+10');
INSERT INTO public.notifications VALUES (672, 3177, 'Appointment Cancelled', 3178, 'PatientCancelled', 'patient', NULL, 0, 604, '2022-04-20 20:32:48.071+10', '2022-04-20 20:32:48.071+10');
INSERT INTO public.notifications VALUES (673, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 20:49:01.41+10', '2022-04-20 20:49:01.41+10');
INSERT INTO public.notifications VALUES (674, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 20:49:30.996+10', '2022-04-20 20:49:30.996+10');
INSERT INTO public.notifications VALUES (675, 3187, 'Appointment Cancelled', 3188, 'PatientCancelled', 'patient', NULL, 0, 606, '2022-04-20 20:49:39.309+10', '2022-04-20 20:49:39.309+10');
INSERT INTO public.notifications VALUES (676, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 20:55:03.801+10', '2022-04-20 20:55:03.801+10');
INSERT INTO public.notifications VALUES (677, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 20:55:32.185+10', '2022-04-20 20:55:32.185+10');
INSERT INTO public.notifications VALUES (678, 3197, 'Appointment Cancelled', 3198, 'PatientCancelled', 'patient', NULL, 0, 608, '2022-04-20 20:55:39.511+10', '2022-04-20 20:55:39.511+10');
INSERT INTO public.notifications VALUES (679, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 21:40:35.262+10', '2022-04-20 21:40:35.262+10');
INSERT INTO public.notifications VALUES (680, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-20 21:40:50.78+10', '2022-04-20 21:40:50.78+10');
INSERT INTO public.notifications VALUES (681, 3207, 'Appointment Cancelled', 3208, 'PatientCancelled', 'patient', NULL, 0, 610, '2022-04-20 21:40:53.69+10', '2022-04-20 21:40:53.69+10');
INSERT INTO public.notifications VALUES (682, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 14:30:01.018+10', '2022-04-21 14:30:01.018+10');
INSERT INTO public.notifications VALUES (683, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 14:31:43.293+10', '2022-04-21 14:31:43.293+10');
INSERT INTO public.notifications VALUES (684, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 14:31:47.247+10', '2022-04-21 14:31:47.247+10');
INSERT INTO public.notifications VALUES (685, 3218, 'Appointment Cancelled', 3219, 'PatientCancelled', 'patient', NULL, 0, 612, '2022-04-21 14:31:50.245+10', '2022-04-21 14:31:50.245+10');
INSERT INTO public.notifications VALUES (686, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 14:31:58.803+10', '2022-04-21 14:31:58.803+10');
INSERT INTO public.notifications VALUES (687, 3227, 'Appointment Cancelled', 3228, 'PatientCancelled', 'patient', NULL, 0, 614, '2022-04-21 14:32:01.86+10', '2022-04-21 14:32:01.86+10');
INSERT INTO public.notifications VALUES (688, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 14:50:52.081+10', '2022-04-21 14:50:52.081+10');
INSERT INTO public.notifications VALUES (689, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 14:51:10.319+10', '2022-04-21 14:51:10.319+10');
INSERT INTO public.notifications VALUES (690, 3237, 'Appointment Cancelled', 3238, 'PatientCancelled', 'patient', NULL, 0, 616, '2022-04-21 14:51:13.308+10', '2022-04-21 14:51:13.308+10');
INSERT INTO public.notifications VALUES (691, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 14:56:00.09+10', '2022-04-21 14:56:00.09+10');
INSERT INTO public.notifications VALUES (692, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 14:56:16.819+10', '2022-04-21 14:56:16.819+10');
INSERT INTO public.notifications VALUES (693, 3247, 'Appointment Cancelled', 3248, 'PatientCancelled', 'patient', NULL, 0, 618, '2022-04-21 14:56:19.839+10', '2022-04-21 14:56:19.839+10');
INSERT INTO public.notifications VALUES (694, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 15:01:07.817+10', '2022-04-21 15:01:07.817+10');
INSERT INTO public.notifications VALUES (695, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 15:01:37.346+10', '2022-04-21 15:01:37.346+10');
INSERT INTO public.notifications VALUES (696, 3257, 'Appointment Cancelled', 3258, 'PatientCancelled', 'patient', NULL, 0, 620, '2022-04-21 15:01:45.565+10', '2022-04-21 15:01:45.565+10');
INSERT INTO public.notifications VALUES (697, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 15:17:40.208+10', '2022-04-21 15:17:40.208+10');
INSERT INTO public.notifications VALUES (698, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 15:17:56.964+10', '2022-04-21 15:17:56.964+10');
INSERT INTO public.notifications VALUES (699, 3267, 'Appointment Cancelled', 3268, 'PatientCancelled', 'patient', NULL, 0, 622, '2022-04-21 15:18:00.301+10', '2022-04-21 15:18:00.301+10');
INSERT INTO public.notifications VALUES (700, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 15:18:59.059+10', '2022-04-21 15:18:59.059+10');
INSERT INTO public.notifications VALUES (701, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 15:19:15.018+10', '2022-04-21 15:19:15.018+10');
INSERT INTO public.notifications VALUES (702, 3277, 'Appointment Cancelled', 3278, 'PatientCancelled', 'patient', NULL, 0, 624, '2022-04-21 15:19:18.105+10', '2022-04-21 15:19:18.105+10');
INSERT INTO public.notifications VALUES (703, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 15:23:40.804+10', '2022-04-21 15:23:40.804+10');
INSERT INTO public.notifications VALUES (704, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 15:24:08.41+10', '2022-04-21 15:24:08.41+10');
INSERT INTO public.notifications VALUES (705, 3287, 'Appointment Cancelled', 3288, 'PatientCancelled', 'patient', NULL, 0, 626, '2022-04-21 15:24:14.945+10', '2022-04-21 15:24:14.945+10');
INSERT INTO public.notifications VALUES (706, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 16:38:21.834+10', '2022-04-21 16:38:21.834+10');
INSERT INTO public.notifications VALUES (707, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 16:38:40.359+10', '2022-04-21 16:38:40.359+10');
INSERT INTO public.notifications VALUES (708, 3297, 'Appointment Cancelled', 3298, 'PatientCancelled', 'patient', NULL, 0, 628, '2022-04-21 16:38:44.872+10', '2022-04-21 16:38:44.872+10');
INSERT INTO public.notifications VALUES (709, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 16:43:03.458+10', '2022-04-21 16:43:03.458+10');
INSERT INTO public.notifications VALUES (710, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 16:43:33.665+10', '2022-04-21 16:43:33.665+10');
INSERT INTO public.notifications VALUES (711, 3307, 'Appointment Cancelled', 3308, 'PatientCancelled', 'patient', NULL, 0, 630, '2022-04-21 16:43:41.822+10', '2022-04-21 16:43:41.822+10');
INSERT INTO public.notifications VALUES (712, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 16:56:44.733+10', '2022-04-21 16:56:44.733+10');
INSERT INTO public.notifications VALUES (713, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 16:57:01.038+10', '2022-04-21 16:57:01.038+10');
INSERT INTO public.notifications VALUES (714, 3317, 'Appointment Cancelled', 3318, 'PatientCancelled', 'patient', NULL, 0, 632, '2022-04-21 16:57:03.964+10', '2022-04-21 16:57:03.964+10');
INSERT INTO public.notifications VALUES (715, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 17:01:00.257+10', '2022-04-21 17:01:00.257+10');
INSERT INTO public.notifications VALUES (716, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 17:01:30.705+10', '2022-04-21 17:01:30.705+10');
INSERT INTO public.notifications VALUES (717, 3327, 'Appointment Cancelled', 3328, 'PatientCancelled', 'patient', NULL, 0, 634, '2022-04-21 17:01:38.758+10', '2022-04-21 17:01:38.758+10');
INSERT INTO public.notifications VALUES (718, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 17:17:54.616+10', '2022-04-21 17:17:54.616+10');
INSERT INTO public.notifications VALUES (719, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 17:18:10.753+10', '2022-04-21 17:18:10.753+10');
INSERT INTO public.notifications VALUES (720, 3337, 'Appointment Cancelled', 3338, 'PatientCancelled', 'patient', NULL, 0, 636, '2022-04-21 17:18:13.692+10', '2022-04-21 17:18:13.692+10');
INSERT INTO public.notifications VALUES (721, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 17:24:07.299+10', '2022-04-21 17:24:07.299+10');
INSERT INTO public.notifications VALUES (722, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 17:24:38.151+10', '2022-04-21 17:24:38.151+10');
INSERT INTO public.notifications VALUES (723, 3347, 'Appointment Cancelled', 3348, 'PatientCancelled', 'patient', NULL, 0, 638, '2022-04-21 17:24:46.486+10', '2022-04-21 17:24:46.486+10');
INSERT INTO public.notifications VALUES (724, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 17:41:45.488+10', '2022-04-21 17:41:45.488+10');
INSERT INTO public.notifications VALUES (725, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 17:42:16.562+10', '2022-04-21 17:42:16.562+10');
INSERT INTO public.notifications VALUES (726, 3357, 'Appointment Cancelled', 3358, 'PatientCancelled', 'patient', NULL, 0, 640, '2022-04-21 17:42:24.618+10', '2022-04-21 17:42:24.618+10');
INSERT INTO public.notifications VALUES (727, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 18:03:27.826+10', '2022-04-21 18:03:27.826+10');
INSERT INTO public.notifications VALUES (728, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 18:03:46.523+10', '2022-04-21 18:03:46.523+10');
INSERT INTO public.notifications VALUES (729, 3367, 'Appointment Cancelled', 3368, 'PatientCancelled', 'patient', NULL, 0, 642, '2022-04-21 18:03:50.058+10', '2022-04-21 18:03:50.058+10');
INSERT INTO public.notifications VALUES (730, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 18:09:00.704+10', '2022-04-21 18:09:00.704+10');
INSERT INTO public.notifications VALUES (731, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 18:09:28.2+10', '2022-04-21 18:09:28.2+10');
INSERT INTO public.notifications VALUES (732, 3377, 'Appointment Cancelled', 3378, 'PatientCancelled', 'patient', NULL, 0, 644, '2022-04-21 18:09:34.723+10', '2022-04-21 18:09:34.723+10');
INSERT INTO public.notifications VALUES (733, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 18:15:02.496+10', '2022-04-21 18:15:02.496+10');
INSERT INTO public.notifications VALUES (734, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 18:15:30.702+10', '2022-04-21 18:15:30.702+10');
INSERT INTO public.notifications VALUES (735, 3387, 'Appointment Cancelled', 3388, 'PatientCancelled', 'patient', NULL, 0, 646, '2022-04-21 18:15:38.135+10', '2022-04-21 18:15:38.135+10');
INSERT INTO public.notifications VALUES (736, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 18:36:00.818+10', '2022-04-21 18:36:00.818+10');
INSERT INTO public.notifications VALUES (737, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 18:36:17.284+10', '2022-04-21 18:36:17.284+10');
INSERT INTO public.notifications VALUES (738, 3397, 'Appointment Cancelled', 3398, 'PatientCancelled', 'patient', NULL, 0, 648, '2022-04-21 18:36:20.32+10', '2022-04-21 18:36:20.32+10');
INSERT INTO public.notifications VALUES (739, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 18:39:59.364+10', '2022-04-21 18:39:59.364+10');
INSERT INTO public.notifications VALUES (740, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 18:40:30.815+10', '2022-04-21 18:40:30.815+10');
INSERT INTO public.notifications VALUES (741, 3407, 'Appointment Cancelled', 3408, 'PatientCancelled', 'patient', NULL, 0, 650, '2022-04-21 18:40:38.879+10', '2022-04-21 18:40:38.879+10');
INSERT INTO public.notifications VALUES (742, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 19:17:30.188+10', '2022-04-21 19:17:30.188+10');
INSERT INTO public.notifications VALUES (743, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 19:17:47.499+10', '2022-04-21 19:17:47.499+10');
INSERT INTO public.notifications VALUES (744, 3417, 'Appointment Cancelled', 3418, 'PatientCancelled', 'patient', NULL, 0, 652, '2022-04-21 19:17:50.54+10', '2022-04-21 19:17:50.54+10');
INSERT INTO public.notifications VALUES (745, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 19:21:35.914+10', '2022-04-21 19:21:35.914+10');
INSERT INTO public.notifications VALUES (746, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 19:22:06.965+10', '2022-04-21 19:22:06.965+10');
INSERT INTO public.notifications VALUES (747, 3427, 'Appointment Cancelled', 3428, 'PatientCancelled', 'patient', NULL, 0, 654, '2022-04-21 19:22:15.025+10', '2022-04-21 19:22:15.025+10');
INSERT INTO public.notifications VALUES (748, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 19:33:13.588+10', '2022-04-21 19:33:13.588+10');
INSERT INTO public.notifications VALUES (749, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 19:33:41.613+10', '2022-04-21 19:33:41.613+10');
INSERT INTO public.notifications VALUES (750, 3440, 'Appointment Cancelled', 3441, 'PatientCancelled', 'patient', NULL, 0, 656, '2022-04-21 19:33:49.238+10', '2022-04-21 19:33:49.238+10');
INSERT INTO public.notifications VALUES (751, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 19:42:37.592+10', '2022-04-21 19:42:37.592+10');
INSERT INTO public.notifications VALUES (752, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 19:43:05.168+10', '2022-04-21 19:43:05.168+10');
INSERT INTO public.notifications VALUES (753, 3451, 'Appointment Cancelled', 3452, 'PatientCancelled', 'patient', NULL, 0, 658, '2022-04-21 19:43:11.918+10', '2022-04-21 19:43:11.918+10');
INSERT INTO public.notifications VALUES (754, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 19:57:29.654+10', '2022-04-21 19:57:29.654+10');
INSERT INTO public.notifications VALUES (755, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 19:57:48.827+10', '2022-04-21 19:57:48.827+10');
INSERT INTO public.notifications VALUES (756, 3462, 'Appointment Cancelled', 3463, 'PatientCancelled', 'patient', NULL, 0, 660, '2022-04-21 19:57:52.497+10', '2022-04-21 19:57:52.497+10');
INSERT INTO public.notifications VALUES (757, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 20:18:05.047+10', '2022-04-21 20:18:05.047+10');
INSERT INTO public.notifications VALUES (758, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 20:18:36.504+10', '2022-04-21 20:18:36.504+10');
INSERT INTO public.notifications VALUES (759, 3472, 'Appointment Cancelled', 3473, 'PatientCancelled', 'patient', NULL, 0, 662, '2022-04-21 20:18:44.643+10', '2022-04-21 20:18:44.643+10');
INSERT INTO public.notifications VALUES (760, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 20:28:41.233+10', '2022-04-21 20:28:41.233+10');
INSERT INTO public.notifications VALUES (761, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 20:29:11.21+10', '2022-04-21 20:29:11.21+10');
INSERT INTO public.notifications VALUES (762, 3482, 'Appointment Cancelled', 3483, 'PatientCancelled', 'patient', NULL, 0, 664, '2022-04-21 20:29:19.246+10', '2022-04-21 20:29:19.246+10');
INSERT INTO public.notifications VALUES (763, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 20:33:42.241+10', '2022-04-21 20:33:42.241+10');
INSERT INTO public.notifications VALUES (764, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 20:34:10.549+10', '2022-04-21 20:34:10.549+10');
INSERT INTO public.notifications VALUES (765, 3492, 'Appointment Cancelled', 3493, 'PatientCancelled', 'patient', NULL, 0, 666, '2022-04-21 20:34:18.072+10', '2022-04-21 20:34:18.072+10');
INSERT INTO public.notifications VALUES (766, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 23:17:54.596+10', '2022-04-21 23:17:54.596+10');
INSERT INTO public.notifications VALUES (767, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-21 23:18:12.026+10', '2022-04-21 23:18:12.026+10');
INSERT INTO public.notifications VALUES (768, 3502, 'Appointment Cancelled', 3503, 'PatientCancelled', 'patient', NULL, 0, 668, '2022-04-21 23:18:15.588+10', '2022-04-21 23:18:15.588+10');
INSERT INTO public.notifications VALUES (769, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 15:00:03.27+10', '2022-04-22 15:00:03.27+10');
INSERT INTO public.notifications VALUES (770, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 15:00:20.086+10', '2022-04-22 15:00:20.086+10');
INSERT INTO public.notifications VALUES (771, 3512, 'Appointment Cancelled', 3513, 'PatientCancelled', 'patient', NULL, 0, 670, '2022-04-22 15:00:23.046+10', '2022-04-22 15:00:23.046+10');
INSERT INTO public.notifications VALUES (772, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 15:06:22.076+10', '2022-04-22 15:06:22.076+10');
INSERT INTO public.notifications VALUES (773, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 15:06:53.01+10', '2022-04-22 15:06:53.01+10');
INSERT INTO public.notifications VALUES (774, 3522, 'Appointment Cancelled', 3523, 'PatientCancelled', 'patient', NULL, 0, 672, '2022-04-22 15:07:01.117+10', '2022-04-22 15:07:01.117+10');
INSERT INTO public.notifications VALUES (775, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 15:31:54.505+10', '2022-04-22 15:31:54.505+10');
INSERT INTO public.notifications VALUES (776, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 15:32:11.465+10', '2022-04-22 15:32:11.465+10');
INSERT INTO public.notifications VALUES (777, 3532, 'Appointment Cancelled', 3533, 'PatientCancelled', 'patient', NULL, 0, 674, '2022-04-22 15:32:14.935+10', '2022-04-22 15:32:14.935+10');
INSERT INTO public.notifications VALUES (778, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 15:38:51.785+10', '2022-04-22 15:38:51.785+10');
INSERT INTO public.notifications VALUES (779, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 15:39:19.269+10', '2022-04-22 15:39:19.269+10');
INSERT INTO public.notifications VALUES (780, 3542, 'Appointment Cancelled', 3543, 'PatientCancelled', 'patient', NULL, 0, 676, '2022-04-22 15:39:25.934+10', '2022-04-22 15:39:25.934+10');
INSERT INTO public.notifications VALUES (781, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 15:45:36.127+10', '2022-04-22 15:45:36.127+10');
INSERT INTO public.notifications VALUES (782, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 15:45:54.598+10', '2022-04-22 15:45:54.598+10');
INSERT INTO public.notifications VALUES (783, 3552, 'Appointment Cancelled', 3553, 'PatientCancelled', 'patient', NULL, 0, 678, '2022-04-22 15:45:57.963+10', '2022-04-22 15:45:57.963+10');
INSERT INTO public.notifications VALUES (784, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 15:55:18.288+10', '2022-04-22 15:55:18.288+10');
INSERT INTO public.notifications VALUES (785, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 15:55:35.417+10', '2022-04-22 15:55:35.417+10');
INSERT INTO public.notifications VALUES (786, 3562, 'Appointment Cancelled', 3563, 'PatientCancelled', 'patient', NULL, 0, 680, '2022-04-22 15:55:38.666+10', '2022-04-22 15:55:38.666+10');
INSERT INTO public.notifications VALUES (787, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 16:01:06.071+10', '2022-04-22 16:01:06.071+10');
INSERT INTO public.notifications VALUES (788, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 16:01:38.578+10', '2022-04-22 16:01:38.578+10');
INSERT INTO public.notifications VALUES (789, 3572, 'Appointment Cancelled', 3573, 'PatientCancelled', 'patient', NULL, 0, 682, '2022-04-22 16:01:46.991+10', '2022-04-22 16:01:46.991+10');
INSERT INTO public.notifications VALUES (790, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 16:11:33.891+10', '2022-04-22 16:11:33.891+10');
INSERT INTO public.notifications VALUES (791, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 16:11:53.547+10', '2022-04-22 16:11:53.547+10');
INSERT INTO public.notifications VALUES (792, 3582, 'Appointment Cancelled', 3583, 'PatientCancelled', 'patient', NULL, 0, 684, '2022-04-22 16:11:57.127+10', '2022-04-22 16:11:57.127+10');
INSERT INTO public.notifications VALUES (793, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 16:13:07.898+10', '2022-04-22 16:13:07.898+10');
INSERT INTO public.notifications VALUES (794, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 16:13:26.097+10', '2022-04-22 16:13:26.097+10');
INSERT INTO public.notifications VALUES (795, 3592, 'Appointment Cancelled', 3593, 'PatientCancelled', 'patient', NULL, 0, 686, '2022-04-22 16:13:29.613+10', '2022-04-22 16:13:29.613+10');
INSERT INTO public.notifications VALUES (796, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 16:21:14.121+10', '2022-04-22 16:21:14.121+10');
INSERT INTO public.notifications VALUES (797, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 16:21:32.715+10', '2022-04-22 16:21:32.715+10');
INSERT INTO public.notifications VALUES (798, 3602, 'Appointment Cancelled', 3603, 'PatientCancelled', 'patient', NULL, 0, 688, '2022-04-22 16:21:36.171+10', '2022-04-22 16:21:36.171+10');
INSERT INTO public.notifications VALUES (799, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 16:26:00.534+10', '2022-04-22 16:26:00.534+10');
INSERT INTO public.notifications VALUES (800, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 16:26:28.541+10', '2022-04-22 16:26:28.541+10');
INSERT INTO public.notifications VALUES (801, 3612, 'Appointment Cancelled', 3613, 'PatientCancelled', 'patient', NULL, 0, 690, '2022-04-22 16:26:36.025+10', '2022-04-22 16:26:36.025+10');
INSERT INTO public.notifications VALUES (802, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 16:46:39.817+10', '2022-04-22 16:46:39.817+10');
INSERT INTO public.notifications VALUES (803, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 16:47:08.031+10', '2022-04-22 16:47:08.031+10');
INSERT INTO public.notifications VALUES (804, 3622, 'Appointment Cancelled', 3623, 'PatientCancelled', 'patient', NULL, 0, 692, '2022-04-22 16:47:15.491+10', '2022-04-22 16:47:15.491+10');
INSERT INTO public.notifications VALUES (805, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 17:20:16.903+10', '2022-04-22 17:20:16.903+10');
INSERT INTO public.notifications VALUES (806, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 17:20:34.789+10', '2022-04-22 17:20:34.789+10');
INSERT INTO public.notifications VALUES (807, 3632, 'Appointment Cancelled', 3633, 'PatientCancelled', 'patient', NULL, 0, 694, '2022-04-22 17:20:38.458+10', '2022-04-22 17:20:38.458+10');
INSERT INTO public.notifications VALUES (808, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 17:25:24.799+10', '2022-04-22 17:25:24.799+10');
INSERT INTO public.notifications VALUES (809, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 17:25:53.268+10', '2022-04-22 17:25:53.268+10');
INSERT INTO public.notifications VALUES (810, 3642, 'Appointment Cancelled', 3643, 'PatientCancelled', 'patient', NULL, 0, 696, '2022-04-22 17:26:00.773+10', '2022-04-22 17:26:00.773+10');
INSERT INTO public.notifications VALUES (811, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 19:02:24.9+10', '2022-04-22 19:02:24.9+10');
INSERT INTO public.notifications VALUES (812, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 19:02:56.084+10', '2022-04-22 19:02:56.084+10');
INSERT INTO public.notifications VALUES (813, 3653, 'Appointment Cancelled', 3654, 'PatientCancelled', 'patient', NULL, 0, 698, '2022-04-22 19:03:04.389+10', '2022-04-22 19:03:04.389+10');
INSERT INTO public.notifications VALUES (814, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 22:28:52.988+10', '2022-04-22 22:28:52.988+10');
INSERT INTO public.notifications VALUES (815, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 22:29:23.848+10', '2022-04-22 22:29:23.848+10');
INSERT INTO public.notifications VALUES (816, 3663, 'Appointment Cancelled', 3664, 'PatientCancelled', 'patient', NULL, 0, 700, '2022-04-22 22:29:32.107+10', '2022-04-22 22:29:32.107+10');
INSERT INTO public.notifications VALUES (817, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 22:44:28.424+10', '2022-04-22 22:44:28.424+10');
INSERT INTO public.notifications VALUES (818, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-22 22:44:56.979+10', '2022-04-22 22:44:56.979+10');
INSERT INTO public.notifications VALUES (819, 3673, 'Appointment Cancelled', 3674, 'PatientCancelled', 'patient', NULL, 0, 702, '2022-04-22 22:45:04.532+10', '2022-04-22 22:45:04.532+10');
INSERT INTO public.notifications VALUES (820, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 15:33:53.976+10', '2022-04-25 15:33:53.976+10');
INSERT INTO public.notifications VALUES (821, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 15:34:21.884+10', '2022-04-25 15:34:21.884+10');
INSERT INTO public.notifications VALUES (822, 3683, 'Appointment Cancelled', 3684, 'PatientCancelled', 'patient', NULL, 0, 704, '2022-04-25 15:34:28.641+10', '2022-04-25 15:34:28.641+10');
INSERT INTO public.notifications VALUES (823, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 15:52:14.072+10', '2022-04-25 15:52:14.072+10');
INSERT INTO public.notifications VALUES (824, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 15:52:42.16+10', '2022-04-25 15:52:42.16+10');
INSERT INTO public.notifications VALUES (825, 3693, 'Appointment Cancelled', 3694, 'PatientCancelled', 'patient', NULL, 0, 706, '2022-04-25 15:52:48.868+10', '2022-04-25 15:52:48.868+10');
INSERT INTO public.notifications VALUES (826, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 16:17:19.653+10', '2022-04-25 16:17:19.653+10');
INSERT INTO public.notifications VALUES (827, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 16:17:48.245+10', '2022-04-25 16:17:48.245+10');
INSERT INTO public.notifications VALUES (828, 3703, 'Appointment Cancelled', 3704, 'PatientCancelled', 'patient', NULL, 0, 708, '2022-04-25 16:17:55.68+10', '2022-04-25 16:17:55.68+10');
INSERT INTO public.notifications VALUES (829, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 17:45:07.848+10', '2022-04-25 17:45:07.848+10');
INSERT INTO public.notifications VALUES (830, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 17:45:38.427+10', '2022-04-25 17:45:38.427+10');
INSERT INTO public.notifications VALUES (831, 3713, 'Appointment Cancelled', 3714, 'PatientCancelled', 'patient', NULL, 0, 710, '2022-04-25 17:45:46.972+10', '2022-04-25 17:45:46.972+10');
INSERT INTO public.notifications VALUES (832, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 18:06:17.841+10', '2022-04-25 18:06:17.841+10');
INSERT INTO public.notifications VALUES (833, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 18:06:48.257+10', '2022-04-25 18:06:48.257+10');
INSERT INTO public.notifications VALUES (834, 3723, 'Appointment Cancelled', 3724, 'PatientCancelled', 'patient', NULL, 0, 712, '2022-04-25 18:06:56.478+10', '2022-04-25 18:06:56.478+10');
INSERT INTO public.notifications VALUES (835, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 18:17:52.897+10', '2022-04-25 18:17:52.897+10');
INSERT INTO public.notifications VALUES (836, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 18:18:24.612+10', '2022-04-25 18:18:24.612+10');
INSERT INTO public.notifications VALUES (837, 3733, 'Appointment Cancelled', 3734, 'PatientCancelled', 'patient', NULL, 0, 714, '2022-04-25 18:18:33.117+10', '2022-04-25 18:18:33.117+10');
INSERT INTO public.notifications VALUES (838, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 18:42:19.305+10', '2022-04-25 18:42:19.305+10');
INSERT INTO public.notifications VALUES (839, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 18:42:46.745+10', '2022-04-25 18:42:46.745+10');
INSERT INTO public.notifications VALUES (840, 3743, 'Appointment Cancelled', 3744, 'PatientCancelled', 'patient', NULL, 0, 716, '2022-04-25 18:42:53.366+10', '2022-04-25 18:42:53.366+10');
INSERT INTO public.notifications VALUES (841, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 19:48:35.492+10', '2022-04-25 19:48:35.492+10');
INSERT INTO public.notifications VALUES (842, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 19:49:03.917+10', '2022-04-25 19:49:03.917+10');
INSERT INTO public.notifications VALUES (843, 3753, 'Appointment Cancelled', 3754, 'PatientCancelled', 'patient', NULL, 0, 718, '2022-04-25 19:49:11.385+10', '2022-04-25 19:49:11.385+10');
INSERT INTO public.notifications VALUES (844, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 20:16:07.578+10', '2022-04-25 20:16:07.578+10');
INSERT INTO public.notifications VALUES (845, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 20:16:35.546+10', '2022-04-25 20:16:35.546+10');
INSERT INTO public.notifications VALUES (846, 3763, 'Appointment Cancelled', 3764, 'PatientCancelled', 'patient', NULL, 0, 720, '2022-04-25 20:16:42.985+10', '2022-04-25 20:16:42.985+10');
INSERT INTO public.notifications VALUES (847, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 21:08:36.228+10', '2022-04-25 21:08:36.228+10');
INSERT INTO public.notifications VALUES (848, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 21:09:06.344+10', '2022-04-25 21:09:06.344+10');
INSERT INTO public.notifications VALUES (849, 3773, 'Appointment Cancelled', 3774, 'PatientCancelled', 'patient', NULL, 0, 722, '2022-04-25 21:09:14.489+10', '2022-04-25 21:09:14.489+10');
INSERT INTO public.notifications VALUES (850, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 22:35:22.597+10', '2022-04-25 22:35:22.597+10');
INSERT INTO public.notifications VALUES (851, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 22:35:54.911+10', '2022-04-25 22:35:54.911+10');
INSERT INTO public.notifications VALUES (852, 3783, 'Appointment Cancelled', 3784, 'PatientCancelled', 'patient', NULL, 0, 724, '2022-04-25 22:36:03.095+10', '2022-04-25 22:36:03.095+10');
INSERT INTO public.notifications VALUES (853, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 23:11:08.788+10', '2022-04-25 23:11:08.788+10');
INSERT INTO public.notifications VALUES (854, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-25 23:11:36.61+10', '2022-04-25 23:11:36.61+10');
INSERT INTO public.notifications VALUES (855, 3793, 'Appointment Cancelled', 3794, 'PatientCancelled', 'patient', NULL, 0, 726, '2022-04-25 23:11:43.829+10', '2022-04-25 23:11:43.829+10');
INSERT INTO public.notifications VALUES (856, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 14:20:37.118+10', '2022-04-26 14:20:37.118+10');
INSERT INTO public.notifications VALUES (857, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 14:21:05.364+10', '2022-04-26 14:21:05.364+10');
INSERT INTO public.notifications VALUES (858, 3803, 'Appointment Cancelled', 3804, 'PatientCancelled', 'patient', NULL, 0, 728, '2022-04-26 14:21:13.01+10', '2022-04-26 14:21:13.01+10');
INSERT INTO public.notifications VALUES (859, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 15:36:52.852+10', '2022-04-26 15:36:52.852+10');
INSERT INTO public.notifications VALUES (860, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 15:37:23.45+10', '2022-04-26 15:37:23.45+10');
INSERT INTO public.notifications VALUES (861, 3813, 'Appointment Cancelled', 3814, 'PatientCancelled', 'patient', NULL, 0, 730, '2022-04-26 15:37:31.686+10', '2022-04-26 15:37:31.686+10');
INSERT INTO public.notifications VALUES (862, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 16:20:15.664+10', '2022-04-26 16:20:15.664+10');
INSERT INTO public.notifications VALUES (863, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 16:20:45.769+10', '2022-04-26 16:20:45.769+10');
INSERT INTO public.notifications VALUES (864, 3823, 'Appointment Cancelled', 3824, 'PatientCancelled', 'patient', NULL, 0, 732, '2022-04-26 16:20:53.88+10', '2022-04-26 16:20:53.88+10');
INSERT INTO public.notifications VALUES (865, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 16:46:24.322+10', '2022-04-26 16:46:24.322+10');
INSERT INTO public.notifications VALUES (866, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 16:46:51.656+10', '2022-04-26 16:46:51.656+10');
INSERT INTO public.notifications VALUES (867, 3833, 'Appointment Cancelled', 3834, 'PatientCancelled', 'patient', NULL, 0, 734, '2022-04-26 16:46:58.256+10', '2022-04-26 16:46:58.256+10');
INSERT INTO public.notifications VALUES (868, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 17:28:18.001+10', '2022-04-26 17:28:18.001+10');
INSERT INTO public.notifications VALUES (869, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 17:28:46.394+10', '2022-04-26 17:28:46.394+10');
INSERT INTO public.notifications VALUES (870, 3843, 'Appointment Cancelled', 3844, 'PatientCancelled', 'patient', NULL, 0, 736, '2022-04-26 17:28:53.94+10', '2022-04-26 17:28:53.94+10');
INSERT INTO public.notifications VALUES (871, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 19:18:25.936+10', '2022-04-26 19:18:25.936+10');
INSERT INTO public.notifications VALUES (872, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 19:18:56.93+10', '2022-04-26 19:18:56.93+10');
INSERT INTO public.notifications VALUES (873, 3853, 'Appointment Cancelled', 3854, 'PatientCancelled', 'patient', NULL, 0, 738, '2022-04-26 19:19:05.07+10', '2022-04-26 19:19:05.07+10');
INSERT INTO public.notifications VALUES (874, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 20:41:05.579+10', '2022-04-26 20:41:05.579+10');
INSERT INTO public.notifications VALUES (875, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 20:41:37.986+10', '2022-04-26 20:41:37.986+10');
INSERT INTO public.notifications VALUES (876, 3863, 'Appointment Cancelled', 3864, 'PatientCancelled', 'patient', NULL, 0, 740, '2022-04-26 20:41:46.334+10', '2022-04-26 20:41:46.334+10');
INSERT INTO public.notifications VALUES (877, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 21:47:01.578+10', '2022-04-26 21:47:01.578+10');
INSERT INTO public.notifications VALUES (878, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 21:47:31.732+10', '2022-04-26 21:47:31.732+10');
INSERT INTO public.notifications VALUES (879, 3873, 'Appointment Cancelled', 3874, 'PatientCancelled', 'patient', NULL, 0, 742, '2022-04-26 21:47:40.076+10', '2022-04-26 21:47:40.076+10');
INSERT INTO public.notifications VALUES (880, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 23:12:02.278+10', '2022-04-26 23:12:02.278+10');
INSERT INTO public.notifications VALUES (881, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 23:12:33.945+10', '2022-04-26 23:12:33.945+10');
INSERT INTO public.notifications VALUES (882, 3883, 'Appointment Cancelled', 3884, 'PatientCancelled', 'patient', NULL, 0, 744, '2022-04-26 23:12:42.202+10', '2022-04-26 23:12:42.202+10');
INSERT INTO public.notifications VALUES (883, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 23:28:46.767+10', '2022-04-26 23:28:46.767+10');
INSERT INTO public.notifications VALUES (884, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-26 23:29:17.673+10', '2022-04-26 23:29:17.673+10');
INSERT INTO public.notifications VALUES (885, 3893, 'Appointment Cancelled', 3894, 'PatientCancelled', 'patient', NULL, 0, 746, '2022-04-26 23:29:26.02+10', '2022-04-26 23:29:26.02+10');
INSERT INTO public.notifications VALUES (886, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 16:53:49.098+10', '2022-04-27 16:53:49.098+10');
INSERT INTO public.notifications VALUES (887, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 16:54:16.556+10', '2022-04-27 16:54:16.556+10');
INSERT INTO public.notifications VALUES (888, 3903, 'Appointment Cancelled', 3904, 'PatientCancelled', 'patient', NULL, 0, 748, '2022-04-27 16:54:23.327+10', '2022-04-27 16:54:23.327+10');
INSERT INTO public.notifications VALUES (889, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 17:09:22.714+10', '2022-04-27 17:09:22.714+10');
INSERT INTO public.notifications VALUES (890, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 17:09:52.983+10', '2022-04-27 17:09:52.983+10');
INSERT INTO public.notifications VALUES (891, 3913, 'Appointment Cancelled', 3914, 'PatientCancelled', 'patient', NULL, 0, 750, '2022-04-27 17:10:01.318+10', '2022-04-27 17:10:01.318+10');
INSERT INTO public.notifications VALUES (892, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 17:19:41.377+10', '2022-04-27 17:19:41.377+10');
INSERT INTO public.notifications VALUES (893, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 17:20:12.252+10', '2022-04-27 17:20:12.252+10');
INSERT INTO public.notifications VALUES (894, 3923, 'Appointment Cancelled', 3924, 'PatientCancelled', 'patient', NULL, 0, 752, '2022-04-27 17:20:20.505+10', '2022-04-27 17:20:20.505+10');
INSERT INTO public.notifications VALUES (895, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 17:37:35.245+10', '2022-04-27 17:37:35.245+10');
INSERT INTO public.notifications VALUES (896, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 17:38:06.228+10', '2022-04-27 17:38:06.228+10');
INSERT INTO public.notifications VALUES (897, 3933, 'Appointment Cancelled', 3934, 'PatientCancelled', 'patient', NULL, 0, 754, '2022-04-27 17:38:14.366+10', '2022-04-27 17:38:14.366+10');
INSERT INTO public.notifications VALUES (898, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 18:05:30.951+10', '2022-04-27 18:05:30.951+10');
INSERT INTO public.notifications VALUES (899, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 18:05:58.689+10', '2022-04-27 18:05:58.689+10');
INSERT INTO public.notifications VALUES (900, 3943, 'Appointment Cancelled', 3944, 'PatientCancelled', 'patient', NULL, 0, 756, '2022-04-27 18:06:05.876+10', '2022-04-27 18:06:05.876+10');
INSERT INTO public.notifications VALUES (901, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 19:52:56.432+10', '2022-04-27 19:52:56.432+10');
INSERT INTO public.notifications VALUES (902, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 19:53:26.862+10', '2022-04-27 19:53:26.862+10');
INSERT INTO public.notifications VALUES (903, 3953, 'Appointment Cancelled', 3954, 'PatientCancelled', 'patient', NULL, 0, 758, '2022-04-27 19:53:35.109+10', '2022-04-27 19:53:35.109+10');
INSERT INTO public.notifications VALUES (904, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 20:13:35.797+10', '2022-04-27 20:13:35.797+10');
INSERT INTO public.notifications VALUES (905, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 20:14:03.052+10', '2022-04-27 20:14:03.052+10');
INSERT INTO public.notifications VALUES (906, 3963, 'Appointment Cancelled', 3964, 'PatientCancelled', 'patient', NULL, 0, 760, '2022-04-27 20:14:09.662+10', '2022-04-27 20:14:09.662+10');
INSERT INTO public.notifications VALUES (907, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 20:56:47.333+10', '2022-04-27 20:56:47.333+10');
INSERT INTO public.notifications VALUES (908, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 20:57:17.199+10', '2022-04-27 20:57:17.199+10');
INSERT INTO public.notifications VALUES (909, 3973, 'Appointment Cancelled', 3974, 'PatientCancelled', 'patient', NULL, 0, 762, '2022-04-27 20:57:24.457+10', '2022-04-27 20:57:24.457+10');
INSERT INTO public.notifications VALUES (910, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 21:06:09.917+10', '2022-04-27 21:06:09.917+10');
INSERT INTO public.notifications VALUES (911, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 21:06:38.614+10', '2022-04-27 21:06:38.614+10');
INSERT INTO public.notifications VALUES (912, 3983, 'Appointment Cancelled', 3984, 'PatientCancelled', 'patient', NULL, 0, 764, '2022-04-27 21:06:46.134+10', '2022-04-27 21:06:46.134+10');
INSERT INTO public.notifications VALUES (913, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 21:28:52.472+10', '2022-04-27 21:28:52.472+10');
INSERT INTO public.notifications VALUES (914, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 21:29:18.652+10', '2022-04-27 21:29:18.652+10');
INSERT INTO public.notifications VALUES (915, 3993, 'Appointment Cancelled', 3994, 'PatientCancelled', 'patient', NULL, 0, 766, '2022-04-27 21:29:25.232+10', '2022-04-27 21:29:25.232+10');
INSERT INTO public.notifications VALUES (916, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 21:44:13.682+10', '2022-04-27 21:44:13.682+10');
INSERT INTO public.notifications VALUES (917, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 21:44:45.458+10', '2022-04-27 21:44:45.458+10');
INSERT INTO public.notifications VALUES (918, 4003, 'Appointment Cancelled', 4004, 'PatientCancelled', 'patient', NULL, 0, 768, '2022-04-27 21:44:53.833+10', '2022-04-27 21:44:53.833+10');
INSERT INTO public.notifications VALUES (919, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 22:18:12.733+10', '2022-04-27 22:18:12.733+10');
INSERT INTO public.notifications VALUES (920, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 22:18:43.143+10', '2022-04-27 22:18:43.143+10');
INSERT INTO public.notifications VALUES (921, 4013, 'Appointment Cancelled', 4014, 'PatientCancelled', 'patient', NULL, 0, 770, '2022-04-27 22:18:51.277+10', '2022-04-27 22:18:51.277+10');
INSERT INTO public.notifications VALUES (922, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 22:30:00.463+10', '2022-04-27 22:30:00.463+10');
INSERT INTO public.notifications VALUES (923, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 22:30:31.296+10', '2022-04-27 22:30:31.296+10');
INSERT INTO public.notifications VALUES (924, 4023, 'Appointment Cancelled', 4024, 'PatientCancelled', 'patient', NULL, 0, 772, '2022-04-27 22:30:39.444+10', '2022-04-27 22:30:39.444+10');
INSERT INTO public.notifications VALUES (925, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 22:39:50.145+10', '2022-04-27 22:39:50.145+10');
INSERT INTO public.notifications VALUES (926, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-27 22:40:18.131+10', '2022-04-27 22:40:18.131+10');
INSERT INTO public.notifications VALUES (927, 4033, 'Appointment Cancelled', 4034, 'PatientCancelled', 'patient', NULL, 0, 774, '2022-04-27 22:40:24.75+10', '2022-04-27 22:40:24.75+10');
INSERT INTO public.notifications VALUES (928, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 15:32:02.77+10', '2022-04-28 15:32:02.77+10');
INSERT INTO public.notifications VALUES (929, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 15:32:30.084+10', '2022-04-28 15:32:30.084+10');
INSERT INTO public.notifications VALUES (930, 4043, 'Appointment Cancelled', 4044, 'PatientCancelled', 'patient', NULL, 0, 776, '2022-04-28 15:32:36.629+10', '2022-04-28 15:32:36.629+10');
INSERT INTO public.notifications VALUES (931, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 15:41:36.952+10', '2022-04-28 15:41:36.952+10');
INSERT INTO public.notifications VALUES (932, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 15:42:03.134+10', '2022-04-28 15:42:03.134+10');
INSERT INTO public.notifications VALUES (933, 4053, 'Appointment Cancelled', 4054, 'PatientCancelled', 'patient', NULL, 0, 778, '2022-04-28 15:42:09.718+10', '2022-04-28 15:42:09.718+10');
INSERT INTO public.notifications VALUES (934, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 15:55:48.993+10', '2022-04-28 15:55:48.993+10');
INSERT INTO public.notifications VALUES (935, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 15:56:16.272+10', '2022-04-28 15:56:16.272+10');
INSERT INTO public.notifications VALUES (936, 4063, 'Appointment Cancelled', 4064, 'PatientCancelled', 'patient', NULL, 0, 780, '2022-04-28 15:56:22.93+10', '2022-04-28 15:56:22.93+10');
INSERT INTO public.notifications VALUES (937, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 16:28:37.157+10', '2022-04-28 16:28:37.157+10');
INSERT INTO public.notifications VALUES (938, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 16:29:09.866+10', '2022-04-28 16:29:09.866+10');
INSERT INTO public.notifications VALUES (939, 4073, 'Appointment Cancelled', 4074, 'PatientCancelled', 'patient', NULL, 0, 782, '2022-04-28 16:29:18.113+10', '2022-04-28 16:29:18.113+10');
INSERT INTO public.notifications VALUES (940, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 16:49:30.825+10', '2022-04-28 16:49:30.825+10');
INSERT INTO public.notifications VALUES (941, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 16:49:58.096+10', '2022-04-28 16:49:58.096+10');
INSERT INTO public.notifications VALUES (942, 4083, 'Appointment Cancelled', 4084, 'PatientCancelled', 'patient', NULL, 0, 784, '2022-04-28 16:50:05.263+10', '2022-04-28 16:50:05.263+10');
INSERT INTO public.notifications VALUES (943, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 17:10:07.295+10', '2022-04-28 17:10:07.295+10');
INSERT INTO public.notifications VALUES (944, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 17:10:37.762+10', '2022-04-28 17:10:37.762+10');
INSERT INTO public.notifications VALUES (945, 4093, 'Appointment Cancelled', 4094, 'PatientCancelled', 'patient', NULL, 0, 786, '2022-04-28 17:10:45.833+10', '2022-04-28 17:10:45.833+10');
INSERT INTO public.notifications VALUES (946, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 17:32:26.739+10', '2022-04-28 17:32:26.739+10');
INSERT INTO public.notifications VALUES (947, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 17:32:56.947+10', '2022-04-28 17:32:56.947+10');
INSERT INTO public.notifications VALUES (948, 4103, 'Appointment Cancelled', 4104, 'PatientCancelled', 'patient', NULL, 0, 788, '2022-04-28 17:33:05.086+10', '2022-04-28 17:33:05.086+10');
INSERT INTO public.notifications VALUES (949, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 18:51:58.955+10', '2022-04-28 18:51:58.955+10');
INSERT INTO public.notifications VALUES (950, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 18:52:31.348+10', '2022-04-28 18:52:31.348+10');
INSERT INTO public.notifications VALUES (951, 4113, 'Appointment Cancelled', 4114, 'PatientCancelled', 'patient', NULL, 0, 790, '2022-04-28 18:52:39.736+10', '2022-04-28 18:52:39.736+10');
INSERT INTO public.notifications VALUES (952, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 19:14:53.722+10', '2022-04-28 19:14:53.722+10');
INSERT INTO public.notifications VALUES (953, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 19:15:25.583+10', '2022-04-28 19:15:25.583+10');
INSERT INTO public.notifications VALUES (954, 4123, 'Appointment Cancelled', 4124, 'PatientCancelled', 'patient', NULL, 0, 792, '2022-04-28 19:15:33.723+10', '2022-04-28 19:15:33.723+10');
INSERT INTO public.notifications VALUES (955, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 19:32:59.764+10', '2022-04-28 19:32:59.764+10');
INSERT INTO public.notifications VALUES (956, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 19:33:29.155+10', '2022-04-28 19:33:29.155+10');
INSERT INTO public.notifications VALUES (957, 4133, 'Appointment Cancelled', 4134, 'PatientCancelled', 'patient', NULL, 0, 794, '2022-04-28 19:33:35.788+10', '2022-04-28 19:33:35.788+10');
INSERT INTO public.notifications VALUES (958, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 19:43:29.922+10', '2022-04-28 19:43:29.922+10');
INSERT INTO public.notifications VALUES (959, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 19:44:00.008+10', '2022-04-28 19:44:00.008+10');
INSERT INTO public.notifications VALUES (960, 4143, 'Appointment Cancelled', 4144, 'PatientCancelled', 'patient', NULL, 0, 796, '2022-04-28 19:44:06.929+10', '2022-04-28 19:44:06.929+10');
INSERT INTO public.notifications VALUES (961, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 20:00:09.25+10', '2022-04-28 20:00:09.25+10');
INSERT INTO public.notifications VALUES (962, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-28 20:00:38.655+10', '2022-04-28 20:00:38.655+10');
INSERT INTO public.notifications VALUES (963, 4153, 'Appointment Cancelled', 4154, 'PatientCancelled', 'patient', NULL, 0, 798, '2022-04-28 20:00:45.27+10', '2022-04-28 20:00:45.27+10');
INSERT INTO public.notifications VALUES (964, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-29 15:30:41.877+10', '2022-04-29 15:30:41.877+10');
INSERT INTO public.notifications VALUES (965, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-29 15:31:10.857+10', '2022-04-29 15:31:10.857+10');
INSERT INTO public.notifications VALUES (966, 4163, 'Appointment Cancelled', 4164, 'PatientCancelled', 'patient', NULL, 0, 800, '2022-04-29 15:31:17.523+10', '2022-04-29 15:31:17.523+10');
INSERT INTO public.notifications VALUES (967, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-29 15:37:34.236+10', '2022-04-29 15:37:34.236+10');
INSERT INTO public.notifications VALUES (968, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-29 15:38:03.186+10', '2022-04-29 15:38:03.186+10');
INSERT INTO public.notifications VALUES (969, 4173, 'Appointment Cancelled', 4174, 'PatientCancelled', 'patient', NULL, 0, 802, '2022-04-29 15:38:10.374+10', '2022-04-29 15:38:10.374+10');
INSERT INTO public.notifications VALUES (970, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-29 15:51:48.164+10', '2022-04-29 15:51:48.164+10');
INSERT INTO public.notifications VALUES (971, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-29 15:52:17.096+10', '2022-04-29 15:52:17.096+10');
INSERT INTO public.notifications VALUES (972, 4183, 'Appointment Cancelled', 4184, 'PatientCancelled', 'patient', NULL, 0, 804, '2022-04-29 15:52:23.753+10', '2022-04-29 15:52:23.753+10');
INSERT INTO public.notifications VALUES (973, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-29 15:59:33.392+10', '2022-04-29 15:59:33.392+10');
INSERT INTO public.notifications VALUES (974, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-29 16:00:03.277+10', '2022-04-29 16:00:03.277+10');
INSERT INTO public.notifications VALUES (975, 4193, 'Appointment Cancelled', 4194, 'PatientCancelled', 'patient', NULL, 0, 806, '2022-04-29 16:00:10.842+10', '2022-04-29 16:00:10.842+10');
INSERT INTO public.notifications VALUES (976, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-29 19:02:17.659+10', '2022-04-29 19:02:17.659+10');
INSERT INTO public.notifications VALUES (977, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-29 19:02:48.01+10', '2022-04-29 19:02:48.01+10');
INSERT INTO public.notifications VALUES (978, 4203, 'Appointment Cancelled', 4204, 'PatientCancelled', 'patient', NULL, 0, 808, '2022-04-29 19:02:55.515+10', '2022-04-29 19:02:55.515+10');
INSERT INTO public.notifications VALUES (979, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-29 20:57:07.094+10', '2022-04-29 20:57:07.094+10');
INSERT INTO public.notifications VALUES (980, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-29 20:57:39.478+10', '2022-04-29 20:57:39.478+10');
INSERT INTO public.notifications VALUES (981, 4213, 'Appointment Cancelled', 4214, 'PatientCancelled', 'patient', NULL, 0, 810, '2022-04-29 20:57:47.944+10', '2022-04-29 20:57:47.944+10');
INSERT INTO public.notifications VALUES (982, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-29 21:31:15.254+10', '2022-04-29 21:31:15.254+10');
INSERT INTO public.notifications VALUES (983, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-29 21:32:33.493+10', '2022-04-29 21:32:33.493+10');
INSERT INTO public.notifications VALUES (984, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-29 21:32:51.254+10', '2022-04-29 21:32:51.254+10');
INSERT INTO public.notifications VALUES (985, 4224, 'Appointment Cancelled', 4225, 'PatientCancelled', 'patient', NULL, 0, 812, '2022-04-29 21:32:54.647+10', '2022-04-29 21:32:54.647+10');
INSERT INTO public.notifications VALUES (986, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-29 21:51:58.551+10', '2022-04-29 21:51:58.551+10');
INSERT INTO public.notifications VALUES (987, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-04-29 21:52:32.136+10', '2022-04-29 21:52:32.136+10');
INSERT INTO public.notifications VALUES (988, 4234, 'Appointment Cancelled', 4235, 'PatientCancelled', 'patient', NULL, 0, 814, '2022-04-29 21:52:40.449+10', '2022-04-29 21:52:40.449+10');
INSERT INTO public.notifications VALUES (989, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-02 14:51:28.288+10', '2022-05-02 14:51:28.288+10');
INSERT INTO public.notifications VALUES (990, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-02 14:51:56.324+10', '2022-05-02 14:51:56.324+10');
INSERT INTO public.notifications VALUES (991, 4244, 'Appointment Cancelled', 4245, 'PatientCancelled', 'patient', NULL, 0, 816, '2022-05-02 14:52:02.874+10', '2022-05-02 14:52:02.874+10');
INSERT INTO public.notifications VALUES (992, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-03 17:46:23.517+10', '2022-05-03 17:46:23.517+10');
INSERT INTO public.notifications VALUES (993, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-03 17:46:55.804+10', '2022-05-03 17:46:55.804+10');
INSERT INTO public.notifications VALUES (994, 4254, 'Appointment Cancelled', 4255, 'PatientCancelled', 'patient', NULL, 0, 818, '2022-05-03 17:47:04.102+10', '2022-05-03 17:47:04.102+10');
INSERT INTO public.notifications VALUES (995, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-03 18:12:00.884+10', '2022-05-03 18:12:00.884+10');
INSERT INTO public.notifications VALUES (996, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-03 18:12:27.601+10', '2022-05-03 18:12:27.601+10');
INSERT INTO public.notifications VALUES (997, 4264, 'Appointment Cancelled', 4265, 'PatientCancelled', 'patient', NULL, 0, 820, '2022-05-03 18:12:34.101+10', '2022-05-03 18:12:34.101+10');
INSERT INTO public.notifications VALUES (998, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-03 18:25:03.889+10', '2022-05-03 18:25:03.889+10');
INSERT INTO public.notifications VALUES (999, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-03 18:25:34.485+10', '2022-05-03 18:25:34.485+10');
INSERT INTO public.notifications VALUES (1000, 4274, 'Appointment Cancelled', 4275, 'PatientCancelled', 'patient', NULL, 0, 822, '2022-05-03 18:25:41.81+10', '2022-05-03 18:25:41.81+10');
INSERT INTO public.notifications VALUES (1001, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-03 19:00:53.311+10', '2022-05-03 19:00:53.311+10');
INSERT INTO public.notifications VALUES (1002, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-03 19:01:22.884+10', '2022-05-03 19:01:22.884+10');
INSERT INTO public.notifications VALUES (1003, 4284, 'Appointment Cancelled', 4285, 'PatientCancelled', 'patient', NULL, 0, 824, '2022-05-03 19:01:30.281+10', '2022-05-03 19:01:30.281+10');
INSERT INTO public.notifications VALUES (1004, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-03 19:08:17.9+10', '2022-05-03 19:08:17.9+10');
INSERT INTO public.notifications VALUES (1005, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-03 19:08:47.066+10', '2022-05-03 19:08:47.066+10');
INSERT INTO public.notifications VALUES (1006, 4294, 'Appointment Cancelled', 4295, 'PatientCancelled', 'patient', NULL, 0, 826, '2022-05-03 19:08:54.469+10', '2022-05-03 19:08:54.469+10');
INSERT INTO public.notifications VALUES (1007, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-03 21:02:40.55+10', '2022-05-03 21:02:40.55+10');
INSERT INTO public.notifications VALUES (1008, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-03 21:02:59.404+10', '2022-05-03 21:02:59.404+10');
INSERT INTO public.notifications VALUES (1009, 4304, 'Appointment Cancelled', 4305, 'PatientCancelled', 'patient', NULL, 0, 828, '2022-05-03 21:03:02.918+10', '2022-05-03 21:03:02.918+10');
INSERT INTO public.notifications VALUES (1010, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 15:16:03.818+10', '2022-05-04 15:16:03.818+10');
INSERT INTO public.notifications VALUES (1011, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 15:16:23.516+10', '2022-05-04 15:16:23.516+10');
INSERT INTO public.notifications VALUES (1012, 4314, 'Appointment Cancelled', 4315, 'PatientCancelled', 'patient', NULL, 0, 830, '2022-05-04 15:16:26.943+10', '2022-05-04 15:16:26.943+10');
INSERT INTO public.notifications VALUES (1013, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 15:20:07.949+10', '2022-05-04 15:20:07.949+10');
INSERT INTO public.notifications VALUES (1014, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 15:20:35.029+10', '2022-05-04 15:20:35.029+10');
INSERT INTO public.notifications VALUES (1015, 4324, 'Appointment Cancelled', 4325, 'PatientCancelled', 'patient', NULL, 0, 832, '2022-05-04 15:20:41.553+10', '2022-05-04 15:20:41.553+10');
INSERT INTO public.notifications VALUES (1016, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 16:26:38.092+10', '2022-05-04 16:26:38.092+10');
INSERT INTO public.notifications VALUES (1017, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 16:26:58.609+10', '2022-05-04 16:26:58.609+10');
INSERT INTO public.notifications VALUES (1018, 4334, 'Appointment Cancelled', 4335, 'PatientCancelled', 'patient', NULL, 0, 834, '2022-05-04 16:27:01.794+10', '2022-05-04 16:27:01.794+10');
INSERT INTO public.notifications VALUES (1019, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 16:31:53.228+10', '2022-05-04 16:31:53.228+10');
INSERT INTO public.notifications VALUES (1020, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 16:32:10.517+10', '2022-05-04 16:32:10.517+10');
INSERT INTO public.notifications VALUES (1021, 4344, 'Appointment Cancelled', 4345, 'PatientCancelled', 'patient', NULL, 0, 836, '2022-05-04 16:32:13.714+10', '2022-05-04 16:32:13.714+10');
INSERT INTO public.notifications VALUES (1022, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 16:35:42.339+10', '2022-05-04 16:35:42.339+10');
INSERT INTO public.notifications VALUES (1023, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 16:36:16.162+10', '2022-05-04 16:36:16.162+10');
INSERT INTO public.notifications VALUES (1024, 4354, 'Appointment Cancelled', 4355, 'PatientCancelled', 'patient', NULL, 0, 838, '2022-05-04 16:36:24.51+10', '2022-05-04 16:36:24.51+10');
INSERT INTO public.notifications VALUES (1025, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 16:45:16.338+10', '2022-05-04 16:45:16.338+10');
INSERT INTO public.notifications VALUES (1026, 4363, 'Appointment Cancelled', 4364, 'PatientCancelled', 'patient', NULL, 0, 840, '2022-05-04 16:45:23.359+10', '2022-05-04 16:45:23.359+10');
INSERT INTO public.notifications VALUES (1027, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 16:45:46.592+10', '2022-05-04 16:45:46.592+10');
INSERT INTO public.notifications VALUES (1028, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 16:52:19.623+10', '2022-05-04 16:52:19.623+10');
INSERT INTO public.notifications VALUES (1029, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 16:52:40.861+10', '2022-05-04 16:52:40.861+10');
INSERT INTO public.notifications VALUES (1030, 4368, 'Appointment Cancelled', 4369, 'PatientCancelled', 'patient', NULL, 0, 842, '2022-05-04 16:52:43.883+10', '2022-05-04 16:52:43.883+10');
INSERT INTO public.notifications VALUES (1031, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 16:56:43.488+10', '2022-05-04 16:56:43.488+10');
INSERT INTO public.notifications VALUES (1032, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 16:57:04.318+10', '2022-05-04 16:57:04.318+10');
INSERT INTO public.notifications VALUES (1033, 4378, 'Appointment Cancelled', 4379, 'PatientCancelled', 'patient', NULL, 0, 844, '2022-05-04 16:57:07.607+10', '2022-05-04 16:57:07.607+10');
INSERT INTO public.notifications VALUES (1034, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:01:00.315+10', '2022-05-04 17:01:00.315+10');
INSERT INTO public.notifications VALUES (1035, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:01:18.523+10', '2022-05-04 17:01:18.523+10');
INSERT INTO public.notifications VALUES (1036, 4393, 'Appointment Cancelled', 4394, 'PatientCancelled', 'patient', NULL, 0, 846, '2022-05-04 17:01:21.961+10', '2022-05-04 17:01:21.961+10');
INSERT INTO public.notifications VALUES (1037, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:02:23.169+10', '2022-05-04 17:02:23.169+10');
INSERT INTO public.notifications VALUES (1038, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:02:41.06+10', '2022-05-04 17:02:41.06+10');
INSERT INTO public.notifications VALUES (1039, 4403, 'Appointment Cancelled', 4404, 'PatientCancelled', 'patient', NULL, 0, 848, '2022-05-04 17:02:44.356+10', '2022-05-04 17:02:44.356+10');
INSERT INTO public.notifications VALUES (1040, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:03:57.443+10', '2022-05-04 17:03:57.443+10');
INSERT INTO public.notifications VALUES (1041, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:04:23.458+10', '2022-05-04 17:04:23.458+10');
INSERT INTO public.notifications VALUES (1042, 4413, 'Appointment Cancelled', 4414, 'PatientCancelled', 'patient', NULL, 0, 850, '2022-05-04 17:04:26.793+10', '2022-05-04 17:04:26.793+10');
INSERT INTO public.notifications VALUES (1043, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:05:04.485+10', '2022-05-04 17:05:04.485+10');
INSERT INTO public.notifications VALUES (1044, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:05:25.688+10', '2022-05-04 17:05:25.688+10');
INSERT INTO public.notifications VALUES (1045, 4418, 'Appointment Cancelled', 4419, 'PatientCancelled', 'patient', NULL, 0, 852, '2022-05-04 17:05:29.256+10', '2022-05-04 17:05:29.256+10');
INSERT INTO public.notifications VALUES (1046, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:08:06.656+10', '2022-05-04 17:08:06.656+10');
INSERT INTO public.notifications VALUES (1047, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:08:26.275+10', '2022-05-04 17:08:26.275+10');
INSERT INTO public.notifications VALUES (1048, 4433, 'Appointment Cancelled', 4434, 'PatientCancelled', 'patient', NULL, 0, 854, '2022-05-04 17:08:29.207+10', '2022-05-04 17:08:29.207+10');
INSERT INTO public.notifications VALUES (1049, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:09:16.305+10', '2022-05-04 17:09:16.305+10');
INSERT INTO public.notifications VALUES (1050, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:09:34.19+10', '2022-05-04 17:09:34.19+10');
INSERT INTO public.notifications VALUES (1051, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:09:41.68+10', '2022-05-04 17:09:41.68+10');
INSERT INTO public.notifications VALUES (1052, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:09:59.734+10', '2022-05-04 17:09:59.734+10');
INSERT INTO public.notifications VALUES (1053, 4454, 'Appointment Cancelled', 4455, 'PatientCancelled', 'patient', NULL, 0, 858, '2022-05-04 17:10:03.321+10', '2022-05-04 17:10:03.321+10');
INSERT INTO public.notifications VALUES (1054, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:11:10.329+10', '2022-05-04 17:11:10.329+10');
INSERT INTO public.notifications VALUES (1055, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:11:28.474+10', '2022-05-04 17:11:28.474+10');
INSERT INTO public.notifications VALUES (1056, 4464, 'Appointment Cancelled', 4465, 'PatientCancelled', 'patient', NULL, 0, 860, '2022-05-04 17:11:31.607+10', '2022-05-04 17:11:31.607+10');
INSERT INTO public.notifications VALUES (1057, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:13:16.508+10', '2022-05-04 17:13:16.508+10');
INSERT INTO public.notifications VALUES (1058, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:13:36.889+10', '2022-05-04 17:13:36.889+10');
INSERT INTO public.notifications VALUES (1059, 4469, 'Appointment Cancelled', 4470, 'PatientCancelled', 'patient', NULL, 0, 862, '2022-05-04 17:13:40.057+10', '2022-05-04 17:13:40.057+10');
INSERT INTO public.notifications VALUES (1060, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:14:01.246+10', '2022-05-04 17:14:01.246+10');
INSERT INTO public.notifications VALUES (1061, 4483, 'Appointment Cancelled', 4484, 'PatientCancelled', 'patient', NULL, 0, 864, '2022-05-04 17:14:09.979+10', '2022-05-04 17:14:09.979+10');
INSERT INTO public.notifications VALUES (1062, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:14:38.224+10', '2022-05-04 17:14:38.224+10');
INSERT INTO public.notifications VALUES (1063, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:14:46.821+10', '2022-05-04 17:14:46.821+10');
INSERT INTO public.notifications VALUES (1064, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:15:09.078+10', '2022-05-04 17:15:09.078+10');
INSERT INTO public.notifications VALUES (1065, 4488, 'Appointment Cancelled', 4489, 'PatientCancelled', 'patient', NULL, 0, 866, '2022-05-04 17:15:12.253+10', '2022-05-04 17:15:12.253+10');
INSERT INTO public.notifications VALUES (1066, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:16:16.975+10', '2022-05-04 17:16:16.975+10');
INSERT INTO public.notifications VALUES (1067, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:16:36.979+10', '2022-05-04 17:16:36.979+10');
INSERT INTO public.notifications VALUES (1068, 4503, 'Appointment Cancelled', 4504, 'PatientCancelled', 'patient', NULL, 0, 868, '2022-05-04 17:16:40.167+10', '2022-05-04 17:16:40.167+10');
INSERT INTO public.notifications VALUES (1069, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:17:21.734+10', '2022-05-04 17:17:21.734+10');
INSERT INTO public.notifications VALUES (1070, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:17:39.973+10', '2022-05-04 17:17:39.973+10');
INSERT INTO public.notifications VALUES (1071, 4513, 'Appointment Cancelled', 4514, 'PatientCancelled', 'patient', NULL, 0, 870, '2022-05-04 17:17:43.099+10', '2022-05-04 17:17:43.099+10');
INSERT INTO public.notifications VALUES (1072, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:18:10.366+10', '2022-05-04 17:18:10.366+10');
INSERT INTO public.notifications VALUES (1073, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:18:32.487+10', '2022-05-04 17:18:32.487+10');
INSERT INTO public.notifications VALUES (1074, 4518, 'Appointment Cancelled', 4519, 'PatientCancelled', 'patient', NULL, 0, 872, '2022-05-04 17:18:35.676+10', '2022-05-04 17:18:35.676+10');
INSERT INTO public.notifications VALUES (1075, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:20:42.802+10', '2022-05-04 17:20:42.802+10');
INSERT INTO public.notifications VALUES (1076, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:21:07.465+10', '2022-05-04 17:21:07.465+10');
INSERT INTO public.notifications VALUES (1077, 4528, 'Appointment Cancelled', 4529, 'PatientCancelled', 'patient', NULL, 0, 874, '2022-05-04 17:21:10.666+10', '2022-05-04 17:21:10.666+10');
INSERT INTO public.notifications VALUES (1078, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:22:52.272+10', '2022-05-04 17:22:52.272+10');
INSERT INTO public.notifications VALUES (1079, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:23:11.925+10', '2022-05-04 17:23:11.925+10');
INSERT INTO public.notifications VALUES (1080, 4543, 'Appointment Cancelled', 4544, 'PatientCancelled', 'patient', NULL, 0, 876, '2022-05-04 17:23:14.988+10', '2022-05-04 17:23:14.988+10');
INSERT INTO public.notifications VALUES (1081, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:26:57.99+10', '2022-05-04 17:26:57.99+10');
INSERT INTO public.notifications VALUES (1082, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:27:20.933+10', '2022-05-04 17:27:20.933+10');
INSERT INTO public.notifications VALUES (1083, 4548, 'Appointment Cancelled', 4549, 'PatientCancelled', 'patient', NULL, 0, 878, '2022-05-04 17:27:23.942+10', '2022-05-04 17:27:23.942+10');
INSERT INTO public.notifications VALUES (1084, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:27:48.667+10', '2022-05-04 17:27:48.667+10');
INSERT INTO public.notifications VALUES (1085, 4562, 'Appointment Cancelled', 4563, 'PatientCancelled', 'patient', NULL, 0, 880, '2022-05-04 17:27:57.255+10', '2022-05-04 17:27:57.255+10');
INSERT INTO public.notifications VALUES (1086, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:28:25.008+10', '2022-05-04 17:28:25.008+10');
INSERT INTO public.notifications VALUES (1087, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:37:27.179+10', '2022-05-04 17:37:27.179+10');
INSERT INTO public.notifications VALUES (1088, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:37:44.357+10', '2022-05-04 17:37:44.357+10');
INSERT INTO public.notifications VALUES (1089, 4573, 'Appointment Cancelled', 4574, 'PatientCancelled', 'patient', NULL, 0, 882, '2022-05-04 17:37:47.457+10', '2022-05-04 17:37:47.457+10');
INSERT INTO public.notifications VALUES (1090, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:41:35.426+10', '2022-05-04 17:41:35.426+10');
INSERT INTO public.notifications VALUES (1091, 4582, 'Appointment Cancelled', 4583, 'PatientCancelled', 'patient', NULL, 0, 884, '2022-05-04 17:41:44.434+10', '2022-05-04 17:41:44.434+10');
INSERT INTO public.notifications VALUES (1092, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:42:13.51+10', '2022-05-04 17:42:13.51+10');
INSERT INTO public.notifications VALUES (1093, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:46:20.601+10', '2022-05-04 17:46:20.601+10');
INSERT INTO public.notifications VALUES (1094, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:46:39.758+10', '2022-05-04 17:46:39.758+10');
INSERT INTO public.notifications VALUES (1095, 4593, 'Appointment Cancelled', 4594, 'PatientCancelled', 'patient', NULL, 0, 886, '2022-05-04 17:46:43.441+10', '2022-05-04 17:46:43.441+10');
INSERT INTO public.notifications VALUES (1096, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:50:12.996+10', '2022-05-04 17:50:12.996+10');
INSERT INTO public.notifications VALUES (1097, 4602, 'Appointment Cancelled', 4603, 'PatientCancelled', 'patient', NULL, 0, 888, '2022-05-04 17:50:20.053+10', '2022-05-04 17:50:20.053+10');
INSERT INTO public.notifications VALUES (1098, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 17:50:42.4+10', '2022-05-04 17:50:42.4+10');
INSERT INTO public.notifications VALUES (1099, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 18:34:56.611+10', '2022-05-04 18:34:56.611+10');
INSERT INTO public.notifications VALUES (1100, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 18:35:12.508+10', '2022-05-04 18:35:12.508+10');
INSERT INTO public.notifications VALUES (1101, 4613, 'Appointment Cancelled', 4614, 'PatientCancelled', 'patient', NULL, 0, 890, '2022-05-04 18:35:15.525+10', '2022-05-04 18:35:15.525+10');
INSERT INTO public.notifications VALUES (1102, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 18:42:25.251+10', '2022-05-04 18:42:25.251+10');
INSERT INTO public.notifications VALUES (1103, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 18:42:40.751+10', '2022-05-04 18:42:40.751+10');
INSERT INTO public.notifications VALUES (1104, 4623, 'Appointment Cancelled', 4624, 'PatientCancelled', 'patient', NULL, 0, 892, '2022-05-04 18:42:43.827+10', '2022-05-04 18:42:43.827+10');
INSERT INTO public.notifications VALUES (1105, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 18:46:57.228+10', '2022-05-04 18:46:57.228+10');
INSERT INTO public.notifications VALUES (1106, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 18:47:13.167+10', '2022-05-04 18:47:13.167+10');
INSERT INTO public.notifications VALUES (1107, 4633, 'Appointment Cancelled', 4634, 'PatientCancelled', 'patient', NULL, 0, 894, '2022-05-04 18:47:16.219+10', '2022-05-04 18:47:16.219+10');
INSERT INTO public.notifications VALUES (1108, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 18:48:55.712+10', '2022-05-04 18:48:55.712+10');
INSERT INTO public.notifications VALUES (1109, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 18:49:11.516+10', '2022-05-04 18:49:11.516+10');
INSERT INTO public.notifications VALUES (1110, 4643, 'Appointment Cancelled', 4644, 'PatientCancelled', 'patient', NULL, 0, 896, '2022-05-04 18:49:14.532+10', '2022-05-04 18:49:14.532+10');
INSERT INTO public.notifications VALUES (1111, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 19:01:01.957+10', '2022-05-04 19:01:01.957+10');
INSERT INTO public.notifications VALUES (1112, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 19:01:29.352+10', '2022-05-04 19:01:29.352+10');
INSERT INTO public.notifications VALUES (1113, 4653, 'Appointment Cancelled', 4654, 'PatientCancelled', 'patient', NULL, 0, 898, '2022-05-04 19:01:35.85+10', '2022-05-04 19:01:35.85+10');
INSERT INTO public.notifications VALUES (1114, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 19:06:31.75+10', '2022-05-04 19:06:31.75+10');
INSERT INTO public.notifications VALUES (1115, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 19:06:45.211+10', '2022-05-04 19:06:45.211+10');
INSERT INTO public.notifications VALUES (1116, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 19:07:02.502+10', '2022-05-04 19:07:02.502+10');
INSERT INTO public.notifications VALUES (1117, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 19:07:05.192+10', '2022-05-04 19:07:05.192+10');
INSERT INTO public.notifications VALUES (1118, 4673, 'Appointment Cancelled', 4674, 'PatientCancelled', 'patient', NULL, 0, 900, '2022-05-04 19:07:08.858+10', '2022-05-04 19:07:08.858+10');
INSERT INTO public.notifications VALUES (1119, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 19:10:32.712+10', '2022-05-04 19:10:32.712+10');
INSERT INTO public.notifications VALUES (1120, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-04 19:11:01.218+10', '2022-05-04 19:11:01.218+10');
INSERT INTO public.notifications VALUES (1121, 4683, 'Appointment Cancelled', 4684, 'PatientCancelled', 'patient', NULL, 0, 903, '2022-05-04 19:11:08.676+10', '2022-05-04 19:11:08.676+10');
INSERT INTO public.notifications VALUES (1122, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-08 15:03:42.199+10', '2022-05-08 15:03:42.199+10');
INSERT INTO public.notifications VALUES (1123, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-08 15:04:14.058+10', '2022-05-08 15:04:14.058+10');
INSERT INTO public.notifications VALUES (1124, 4703, 'Appointment Cancelled', 4704, 'PatientCancelled', 'patient', NULL, 0, 905, '2022-05-08 15:04:22.461+10', '2022-05-08 15:04:22.461+10');
INSERT INTO public.notifications VALUES (1125, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-08 15:43:04.758+10', '2022-05-08 15:43:04.758+10');
INSERT INTO public.notifications VALUES (1126, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-08 15:49:29.827+10', '2022-05-08 15:49:29.827+10');
INSERT INTO public.notifications VALUES (1127, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-08 16:16:08.872+10', '2022-05-08 16:16:08.872+10');
INSERT INTO public.notifications VALUES (1128, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-08 16:16:37.72+10', '2022-05-08 16:16:37.72+10');
INSERT INTO public.notifications VALUES (1129, 4715, 'Appointment Cancelled', 4716, 'PatientCancelled', 'patient', NULL, 0, 907, '2022-05-08 16:16:44.252+10', '2022-05-08 16:16:44.252+10');
INSERT INTO public.notifications VALUES (1130, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 14:33:25.238+10', '2022-05-09 14:33:25.238+10');
INSERT INTO public.notifications VALUES (1131, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 15:43:00.87+10', '2022-05-09 15:43:00.87+10');
INSERT INTO public.notifications VALUES (1132, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 17:49:25.462+10', '2022-05-09 17:49:25.462+10');
INSERT INTO public.notifications VALUES (1133, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 17:49:53.638+10', '2022-05-09 17:49:53.638+10');
INSERT INTO public.notifications VALUES (1134, 4727, 'Appointment Cancelled', 4728, 'PatientCancelled', 'patient', NULL, 0, 909, '2022-05-09 17:50:00.886+10', '2022-05-09 17:50:00.886+10');
INSERT INTO public.notifications VALUES (1135, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 18:04:43.71+10', '2022-05-09 18:04:43.71+10');
INSERT INTO public.notifications VALUES (1136, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 18:05:15.695+10', '2022-05-09 18:05:15.695+10');
INSERT INTO public.notifications VALUES (1137, 4737, 'Appointment Cancelled', 4738, 'PatientCancelled', 'patient', NULL, 0, 911, '2022-05-09 18:05:23.941+10', '2022-05-09 18:05:23.941+10');
INSERT INTO public.notifications VALUES (1138, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 18:15:34.859+10', '2022-05-09 18:15:34.859+10');
INSERT INTO public.notifications VALUES (1139, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 18:16:02.467+10', '2022-05-09 18:16:02.467+10');
INSERT INTO public.notifications VALUES (1140, 4747, 'Appointment Cancelled', 4748, 'PatientCancelled', 'patient', NULL, 0, 913, '2022-05-09 18:16:09.789+10', '2022-05-09 18:16:09.789+10');
INSERT INTO public.notifications VALUES (1141, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 18:38:50.121+10', '2022-05-09 18:38:50.121+10');
INSERT INTO public.notifications VALUES (1142, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 18:39:21.389+10', '2022-05-09 18:39:21.389+10');
INSERT INTO public.notifications VALUES (1143, 4757, 'Appointment Cancelled', 4758, 'PatientCancelled', 'patient', NULL, 0, 915, '2022-05-09 18:39:29.506+10', '2022-05-09 18:39:29.506+10');
INSERT INTO public.notifications VALUES (1144, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 20:02:43.377+10', '2022-05-09 20:02:43.377+10');
INSERT INTO public.notifications VALUES (1145, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 20:03:16.091+10', '2022-05-09 20:03:16.091+10');
INSERT INTO public.notifications VALUES (1146, 4767, 'Appointment Cancelled', 4768, 'PatientCancelled', 'patient', NULL, 0, 917, '2022-05-09 20:03:24.373+10', '2022-05-09 20:03:24.373+10');
INSERT INTO public.notifications VALUES (1147, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 20:22:01.339+10', '2022-05-09 20:22:01.339+10');
INSERT INTO public.notifications VALUES (1148, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 20:22:33.985+10', '2022-05-09 20:22:33.985+10');
INSERT INTO public.notifications VALUES (1149, 4777, 'Appointment Cancelled', 4778, 'PatientCancelled', 'patient', NULL, 0, 919, '2022-05-09 20:22:42.274+10', '2022-05-09 20:22:42.274+10');
INSERT INTO public.notifications VALUES (1150, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 20:43:40.876+10', '2022-05-09 20:43:40.876+10');
INSERT INTO public.notifications VALUES (1151, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 20:44:08.537+10', '2022-05-09 20:44:08.537+10');
INSERT INTO public.notifications VALUES (1152, 4787, 'Appointment Cancelled', 4788, 'PatientCancelled', 'patient', NULL, 0, 921, '2022-05-09 20:44:15.14+10', '2022-05-09 20:44:15.14+10');
INSERT INTO public.notifications VALUES (1153, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 21:05:50.03+10', '2022-05-09 21:05:50.03+10');
INSERT INTO public.notifications VALUES (1154, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 21:06:20.92+10', '2022-05-09 21:06:20.92+10');
INSERT INTO public.notifications VALUES (1155, 4797, 'Appointment Cancelled', 4798, 'PatientCancelled', 'patient', NULL, 0, 923, '2022-05-09 21:06:29.288+10', '2022-05-09 21:06:29.288+10');
INSERT INTO public.notifications VALUES (1156, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 22:22:51.79+10', '2022-05-09 22:22:51.79+10');
INSERT INTO public.notifications VALUES (1157, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 22:23:08.866+10', '2022-05-09 22:23:08.866+10');
INSERT INTO public.notifications VALUES (1158, 4807, 'Appointment Cancelled', 4808, 'PatientCancelled', 'patient', NULL, 0, 925, '2022-05-09 22:23:12.074+10', '2022-05-09 22:23:12.074+10');
INSERT INTO public.notifications VALUES (1159, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 22:30:41.437+10', '2022-05-09 22:30:41.437+10');
INSERT INTO public.notifications VALUES (1160, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-09 22:31:14.173+10', '2022-05-09 22:31:14.173+10');
INSERT INTO public.notifications VALUES (1161, 4817, 'Appointment Cancelled', 4818, 'PatientCancelled', 'patient', NULL, 0, 927, '2022-05-09 22:31:22.536+10', '2022-05-09 22:31:22.536+10');
INSERT INTO public.notifications VALUES (1162, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 14:29:01.572+10', '2022-05-10 14:29:01.572+10');
INSERT INTO public.notifications VALUES (1163, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 14:29:19.001+10', '2022-05-10 14:29:19.001+10');
INSERT INTO public.notifications VALUES (1164, 4827, 'Appointment Cancelled', 4828, 'PatientCancelled', 'patient', NULL, 0, 929, '2022-05-10 14:29:22.266+10', '2022-05-10 14:29:22.266+10');
INSERT INTO public.notifications VALUES (1165, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 15:13:48.601+10', '2022-05-10 15:13:48.601+10');
INSERT INTO public.notifications VALUES (1166, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 15:14:06.199+10', '2022-05-10 15:14:06.199+10');
INSERT INTO public.notifications VALUES (1167, 4837, 'Appointment Cancelled', 4838, 'PatientCancelled', 'patient', NULL, 0, 931, '2022-05-10 15:14:09.562+10', '2022-05-10 15:14:09.562+10');
INSERT INTO public.notifications VALUES (1168, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 15:36:11.12+10', '2022-05-10 15:36:11.12+10');
INSERT INTO public.notifications VALUES (1169, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 15:36:42.117+10', '2022-05-10 15:36:42.117+10');
INSERT INTO public.notifications VALUES (1170, 4847, 'Appointment Cancelled', 4848, 'PatientCancelled', 'patient', NULL, 0, 933, '2022-05-10 15:36:50.421+10', '2022-05-10 15:36:50.421+10');
INSERT INTO public.notifications VALUES (1171, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 15:42:59.5+10', '2022-05-10 15:42:59.5+10');
INSERT INTO public.notifications VALUES (1172, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 15:43:28.483+10', '2022-05-10 15:43:28.483+10');
INSERT INTO public.notifications VALUES (1173, 4857, 'Appointment Cancelled', 4858, 'PatientCancelled', 'patient', NULL, 0, 935, '2022-05-10 15:43:35.899+10', '2022-05-10 15:43:35.899+10');
INSERT INTO public.notifications VALUES (1174, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 15:49:56.085+10', '2022-05-10 15:49:56.085+10');
INSERT INTO public.notifications VALUES (1175, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 15:50:26.817+10', '2022-05-10 15:50:26.817+10');
INSERT INTO public.notifications VALUES (1176, 4867, 'Appointment Cancelled', 4868, 'PatientCancelled', 'patient', NULL, 0, 937, '2022-05-10 15:50:35.007+10', '2022-05-10 15:50:35.007+10');
INSERT INTO public.notifications VALUES (1177, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 15:58:14.322+10', '2022-05-10 15:58:14.322+10');
INSERT INTO public.notifications VALUES (1178, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 15:58:44.799+10', '2022-05-10 15:58:44.799+10');
INSERT INTO public.notifications VALUES (1179, 4877, 'Appointment Cancelled', 4878, 'PatientCancelled', 'patient', NULL, 0, 939, '2022-05-10 15:58:53.031+10', '2022-05-10 15:58:53.031+10');
INSERT INTO public.notifications VALUES (1180, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 16:28:25.269+10', '2022-05-10 16:28:25.269+10');
INSERT INTO public.notifications VALUES (1181, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 16:28:54.174+10', '2022-05-10 16:28:54.174+10');
INSERT INTO public.notifications VALUES (1182, 4887, 'Appointment Cancelled', 4888, 'PatientCancelled', 'patient', NULL, 0, 941, '2022-05-10 16:29:01.541+10', '2022-05-10 16:29:01.541+10');
INSERT INTO public.notifications VALUES (1183, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 17:33:37.181+10', '2022-05-10 17:33:37.181+10');
INSERT INTO public.notifications VALUES (1184, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 17:34:07.602+10', '2022-05-10 17:34:07.602+10');
INSERT INTO public.notifications VALUES (1185, 4897, 'Appointment Cancelled', 4898, 'PatientCancelled', 'patient', NULL, 0, 943, '2022-05-10 17:34:15.717+10', '2022-05-10 17:34:15.717+10');
INSERT INTO public.notifications VALUES (1186, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 18:23:16.1+10', '2022-05-10 18:23:16.1+10');
INSERT INTO public.notifications VALUES (1187, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 18:27:20.111+10', '2022-05-10 18:27:20.111+10');
INSERT INTO public.notifications VALUES (1188, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 18:27:52.631+10', '2022-05-10 18:27:52.631+10');
INSERT INTO public.notifications VALUES (1189, 4913, 'Appointment Cancelled', 4914, 'PatientCancelled', 'patient', NULL, 0, 945, '2022-05-10 18:28:00.954+10', '2022-05-10 18:28:00.954+10');
INSERT INTO public.notifications VALUES (1190, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 18:41:55.367+10', '2022-05-10 18:41:55.367+10');
INSERT INTO public.notifications VALUES (1191, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 18:42:26.096+10', '2022-05-10 18:42:26.096+10');
INSERT INTO public.notifications VALUES (1192, 4923, 'Appointment Cancelled', 4924, 'PatientCancelled', 'patient', NULL, 0, 947, '2022-05-10 18:42:34.285+10', '2022-05-10 18:42:34.285+10');
INSERT INTO public.notifications VALUES (1193, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 18:51:00.943+10', '2022-05-10 18:51:00.943+10');
INSERT INTO public.notifications VALUES (1194, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 18:51:29.217+10', '2022-05-10 18:51:29.217+10');
INSERT INTO public.notifications VALUES (1195, 4933, 'Appointment Cancelled', 4934, 'PatientCancelled', 'patient', NULL, 0, 949, '2022-05-10 18:51:35.717+10', '2022-05-10 18:51:35.717+10');
INSERT INTO public.notifications VALUES (1196, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 19:16:48.766+10', '2022-05-10 19:16:48.766+10');
INSERT INTO public.notifications VALUES (1197, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 19:17:20.081+10', '2022-05-10 19:17:20.081+10');
INSERT INTO public.notifications VALUES (1198, 4943, 'Appointment Cancelled', 4944, 'PatientCancelled', 'patient', NULL, 0, 951, '2022-05-10 19:17:28.306+10', '2022-05-10 19:17:28.306+10');
INSERT INTO public.notifications VALUES (1199, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 19:24:26.622+10', '2022-05-10 19:24:26.622+10');
INSERT INTO public.notifications VALUES (1200, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 19:24:54.76+10', '2022-05-10 19:24:54.76+10');
INSERT INTO public.notifications VALUES (1201, 4953, 'Appointment Cancelled', 4954, 'PatientCancelled', 'patient', NULL, 0, 953, '2022-05-10 19:25:02.179+10', '2022-05-10 19:25:02.179+10');
INSERT INTO public.notifications VALUES (1202, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 20:11:05.86+10', '2022-05-10 20:11:05.86+10');
INSERT INTO public.notifications VALUES (1203, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 20:11:37.327+10', '2022-05-10 20:11:37.327+10');
INSERT INTO public.notifications VALUES (1204, 4963, 'Appointment Cancelled', 4964, 'PatientCancelled', 'patient', NULL, 0, 955, '2022-05-10 20:11:45.563+10', '2022-05-10 20:11:45.563+10');
INSERT INTO public.notifications VALUES (1205, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 20:29:16.645+10', '2022-05-10 20:29:16.645+10');
INSERT INTO public.notifications VALUES (1206, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 20:29:45.082+10', '2022-05-10 20:29:45.082+10');
INSERT INTO public.notifications VALUES (1207, 4973, 'Appointment Cancelled', 4974, 'PatientCancelled', 'patient', NULL, 0, 957, '2022-05-10 20:29:53.236+10', '2022-05-10 20:29:53.236+10');
INSERT INTO public.notifications VALUES (1208, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 20:39:53.652+10', '2022-05-10 20:39:53.652+10');
INSERT INTO public.notifications VALUES (1209, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 20:40:24.493+10', '2022-05-10 20:40:24.493+10');
INSERT INTO public.notifications VALUES (1210, 4983, 'Appointment Cancelled', 4984, 'PatientCancelled', 'patient', NULL, 0, 959, '2022-05-10 20:40:32.656+10', '2022-05-10 20:40:32.656+10');
INSERT INTO public.notifications VALUES (1211, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 20:47:04.748+10', '2022-05-10 20:47:04.748+10');
INSERT INTO public.notifications VALUES (1212, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 20:47:32.912+10', '2022-05-10 20:47:32.912+10');
INSERT INTO public.notifications VALUES (1213, 4993, 'Appointment Cancelled', 4994, 'PatientCancelled', 'patient', NULL, 0, 961, '2022-05-10 20:47:40.144+10', '2022-05-10 20:47:40.144+10');
INSERT INTO public.notifications VALUES (1214, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 21:12:37.945+10', '2022-05-10 21:12:37.945+10');
INSERT INTO public.notifications VALUES (1215, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 21:13:09.039+10', '2022-05-10 21:13:09.039+10');
INSERT INTO public.notifications VALUES (1216, 5003, 'Appointment Cancelled', 5004, 'PatientCancelled', 'patient', NULL, 0, 963, '2022-05-10 21:13:17.402+10', '2022-05-10 21:13:17.402+10');
INSERT INTO public.notifications VALUES (1217, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-10 22:41:55.98+10', '2022-05-10 22:41:55.98+10');
INSERT INTO public.notifications VALUES (1218, 5013, 'Appointment Cancelled', 5014, 'PatientCancelled', 'patient', NULL, 0, 965, '2022-05-10 22:42:03.245+10', '2022-05-10 22:42:03.245+10');
INSERT INTO public.notifications VALUES (1219, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 15:01:12.989+10', '2022-05-11 15:01:12.989+10');
INSERT INTO public.notifications VALUES (1220, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 15:01:44.449+10', '2022-05-11 15:01:44.449+10');
INSERT INTO public.notifications VALUES (1221, 5023, 'Appointment Cancelled', 5024, 'PatientCancelled', 'patient', NULL, 0, 967, '2022-05-11 15:01:52.632+10', '2022-05-11 15:01:52.632+10');
INSERT INTO public.notifications VALUES (1222, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 15:37:35.296+10', '2022-05-11 15:37:35.296+10');
INSERT INTO public.notifications VALUES (1223, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 15:38:03.043+10', '2022-05-11 15:38:03.043+10');
INSERT INTO public.notifications VALUES (1224, 5033, 'Appointment Cancelled', 5034, 'PatientCancelled', 'patient', NULL, 0, 969, '2022-05-11 15:38:10.288+10', '2022-05-11 15:38:10.288+10');
INSERT INTO public.notifications VALUES (1225, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 15:48:57.821+10', '2022-05-11 15:48:57.821+10');
INSERT INTO public.notifications VALUES (1226, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 15:49:25.568+10', '2022-05-11 15:49:25.568+10');
INSERT INTO public.notifications VALUES (1227, 5043, 'Appointment Cancelled', 5044, 'PatientCancelled', 'patient', NULL, 0, 971, '2022-05-11 15:49:32.121+10', '2022-05-11 15:49:32.121+10');
INSERT INTO public.notifications VALUES (1228, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 15:53:58.188+10', '2022-05-11 15:53:58.188+10');
INSERT INTO public.notifications VALUES (1229, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 15:54:26.484+10', '2022-05-11 15:54:26.484+10');
INSERT INTO public.notifications VALUES (1230, 5053, 'Appointment Cancelled', 5054, 'PatientCancelled', 'patient', NULL, 0, 973, '2022-05-11 15:54:33.859+10', '2022-05-11 15:54:33.859+10');
INSERT INTO public.notifications VALUES (1231, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 16:09:41.14+10', '2022-05-11 16:09:41.14+10');
INSERT INTO public.notifications VALUES (1232, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 16:10:09.164+10', '2022-05-11 16:10:09.164+10');
INSERT INTO public.notifications VALUES (1233, 5063, 'Appointment Cancelled', 5064, 'PatientCancelled', 'patient', NULL, 0, 975, '2022-05-11 16:10:16.545+10', '2022-05-11 16:10:16.545+10');
INSERT INTO public.notifications VALUES (1234, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 16:18:04.608+10', '2022-05-11 16:18:04.608+10');
INSERT INTO public.notifications VALUES (1235, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 16:18:36.188+10', '2022-05-11 16:18:36.188+10');
INSERT INTO public.notifications VALUES (1236, 5073, 'Appointment Cancelled', 5074, 'PatientCancelled', 'patient', NULL, 0, 977, '2022-05-11 16:18:44.538+10', '2022-05-11 16:18:44.538+10');
INSERT INTO public.notifications VALUES (1237, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 17:47:42.25+10', '2022-05-11 17:47:42.25+10');
INSERT INTO public.notifications VALUES (1238, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 17:48:13.575+10', '2022-05-11 17:48:13.575+10');
INSERT INTO public.notifications VALUES (1239, 5083, 'Appointment Cancelled', 5084, 'PatientCancelled', 'patient', NULL, 0, 979, '2022-05-11 17:48:20.939+10', '2022-05-11 17:48:20.939+10');
INSERT INTO public.notifications VALUES (1240, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 19:30:33.849+10', '2022-05-11 19:30:33.849+10');
INSERT INTO public.notifications VALUES (1241, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 19:31:06.92+10', '2022-05-11 19:31:06.92+10');
INSERT INTO public.notifications VALUES (1242, 5093, 'Appointment Cancelled', 5094, 'PatientCancelled', 'patient', NULL, 0, 981, '2022-05-11 19:31:15.138+10', '2022-05-11 19:31:15.138+10');
INSERT INTO public.notifications VALUES (1243, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 19:44:44.922+10', '2022-05-11 19:44:44.922+10');
INSERT INTO public.notifications VALUES (1244, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 19:45:12.976+10', '2022-05-11 19:45:12.976+10');
INSERT INTO public.notifications VALUES (1245, 5103, 'Appointment Cancelled', 5104, 'PatientCancelled', 'patient', NULL, 0, 983, '2022-05-11 19:45:20.306+10', '2022-05-11 19:45:20.306+10');
INSERT INTO public.notifications VALUES (1246, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 19:47:37.968+10', '2022-05-11 19:47:37.968+10');
INSERT INTO public.notifications VALUES (1247, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 19:48:09.881+10', '2022-05-11 19:48:09.881+10');
INSERT INTO public.notifications VALUES (1248, 5113, 'Appointment Cancelled', 5114, 'PatientCancelled', 'patient', NULL, 0, 985, '2022-05-11 19:48:18.245+10', '2022-05-11 19:48:18.245+10');
INSERT INTO public.notifications VALUES (1249, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 19:54:13.798+10', '2022-05-11 19:54:13.798+10');
INSERT INTO public.notifications VALUES (1250, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 19:54:45.57+10', '2022-05-11 19:54:45.57+10');
INSERT INTO public.notifications VALUES (1251, 5123, 'Appointment Cancelled', 5124, 'PatientCancelled', 'patient', NULL, 0, 987, '2022-05-11 19:54:53.781+10', '2022-05-11 19:54:53.781+10');
INSERT INTO public.notifications VALUES (1252, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 20:06:58.113+10', '2022-05-11 20:06:58.113+10');
INSERT INTO public.notifications VALUES (1253, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-11 20:07:29.412+10', '2022-05-11 20:07:29.412+10');
INSERT INTO public.notifications VALUES (1254, 5133, 'Appointment Cancelled', 5134, 'PatientCancelled', 'patient', NULL, 0, 989, '2022-05-11 20:07:37.561+10', '2022-05-11 20:07:37.561+10');
INSERT INTO public.notifications VALUES (1255, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-12 22:51:38.036+10', '2022-05-12 22:51:38.036+10');
INSERT INTO public.notifications VALUES (1256, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-12 22:55:34.078+10', '2022-05-12 22:55:34.078+10');
INSERT INTO public.notifications VALUES (1257, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-12 22:57:08.674+10', '2022-05-12 22:57:08.674+10');
INSERT INTO public.notifications VALUES (1258, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-12 22:59:04.448+10', '2022-05-12 22:59:04.448+10');
INSERT INTO public.notifications VALUES (1259, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-12 23:01:22.345+10', '2022-05-12 23:01:22.345+10');
INSERT INTO public.notifications VALUES (1260, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-12 23:02:03.23+10', '2022-05-12 23:02:03.23+10');
INSERT INTO public.notifications VALUES (1261, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-12 23:03:57.849+10', '2022-05-12 23:03:57.849+10');
INSERT INTO public.notifications VALUES (1262, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-12 23:06:51.914+10', '2022-05-12 23:06:51.914+10');
INSERT INTO public.notifications VALUES (1263, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-12 23:07:49.315+10', '2022-05-12 23:07:49.315+10');
INSERT INTO public.notifications VALUES (1264, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-12 23:08:42.991+10', '2022-05-12 23:08:42.991+10');
INSERT INTO public.notifications VALUES (1265, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-12 23:10:58.256+10', '2022-05-12 23:10:58.256+10');
INSERT INTO public.notifications VALUES (1266, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-12 23:12:29.728+10', '2022-05-12 23:12:29.728+10');
INSERT INTO public.notifications VALUES (1267, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 14:55:18.853+10', '2022-05-13 14:55:18.853+10');
INSERT INTO public.notifications VALUES (1268, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 14:56:36.843+10', '2022-05-13 14:56:36.843+10');
INSERT INTO public.notifications VALUES (1269, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 14:58:02.578+10', '2022-05-13 14:58:02.578+10');
INSERT INTO public.notifications VALUES (1270, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 15:07:28.603+10', '2022-05-13 15:07:28.603+10');
INSERT INTO public.notifications VALUES (1271, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 15:54:41.426+10', '2022-05-13 15:54:41.426+10');
INSERT INTO public.notifications VALUES (1272, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 16:03:04.217+10', '2022-05-13 16:03:04.217+10');
INSERT INTO public.notifications VALUES (1273, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 16:12:57.038+10', '2022-05-13 16:12:57.038+10');
INSERT INTO public.notifications VALUES (1274, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 16:18:47.813+10', '2022-05-13 16:18:47.813+10');
INSERT INTO public.notifications VALUES (1275, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 16:22:44.396+10', '2022-05-13 16:22:44.396+10');
INSERT INTO public.notifications VALUES (1276, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 16:46:39.248+10', '2022-05-13 16:46:39.248+10');
INSERT INTO public.notifications VALUES (1277, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 16:52:23.74+10', '2022-05-13 16:52:23.74+10');
INSERT INTO public.notifications VALUES (1278, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 16:57:38.303+10', '2022-05-13 16:57:38.303+10');
INSERT INTO public.notifications VALUES (1279, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 17:00:01.768+10', '2022-05-13 17:00:01.768+10');
INSERT INTO public.notifications VALUES (1280, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 17:03:18.812+10', '2022-05-13 17:03:18.812+10');
INSERT INTO public.notifications VALUES (1281, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 17:05:14.409+10', '2022-05-13 17:05:14.409+10');
INSERT INTO public.notifications VALUES (1282, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 17:07:20.287+10', '2022-05-13 17:07:20.287+10');
INSERT INTO public.notifications VALUES (1283, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 17:09:47.138+10', '2022-05-13 17:09:47.138+10');
INSERT INTO public.notifications VALUES (1284, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 17:12:29.193+10', '2022-05-13 17:12:29.193+10');
INSERT INTO public.notifications VALUES (1285, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 22:45:32.759+10', '2022-05-13 22:45:32.759+10');
INSERT INTO public.notifications VALUES (1286, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 22:47:59.768+10', '2022-05-13 22:47:59.768+10');
INSERT INTO public.notifications VALUES (1287, NULL, 'Appointment Cancelled', NULL, 'PatientCancelled', 'patient', NULL, 0, NULL, '2022-05-13 22:55:11.01+10', '2022-05-13 22:55:11.01+10');


--
-- TOC entry 4824 (class 0 OID 18265)
-- Dependencies: 284
-- Data for Name: patient_alerts; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4826 (class 0 OID 18273)
-- Dependencies: 286
-- Data for Name: patient_details; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.patient_details VALUES (2, 2, '', '', '', '', '', '', '', '2022-02-04 20:47:12.389+11', '2022-02-04 20:47:12.389+11');
INSERT INTO public.patient_details VALUES (217, NULL, '', '', '', '', '', '', '', '2022-04-12 15:41:44.679+10', '2022-05-12 22:51:38.671+10');
INSERT INTO public.patient_details VALUES (301, 2759, '3500265121', '', '', '', '', '', '', '2022-04-19 22:35:18.456+10', '2022-04-19 22:35:18.456+10');
INSERT INTO public.patient_details VALUES (540, 5156, '', '', '', '', '', '', '', '2022-05-13 17:07:20.767+10', '2022-05-13 17:07:20.767+10');


--
-- TOC entry 4828 (class 0 OID 18279)
-- Dependencies: 288
-- Data for Name: practitioner_appointment_types; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4830 (class 0 OID 18283)
-- Dependencies: 290
-- Data for Name: practitioners; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4832 (class 0 OID 18293)
-- Dependencies: 292
-- Data for Name: professions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.professions VALUES (2, 'General Practitioner/GP', '2022-01-31 19:14:07.091+11', '2022-01-31 19:14:07.091+11');
INSERT INTO public.professions VALUES (6, 'Dietitian', '2022-01-31 19:14:07.091+11', '2022-01-31 19:14:07.091+11');
INSERT INTO public.professions VALUES (4, 'Physiotherapist', '2022-01-31 19:14:07.091+11', '2022-01-31 19:14:07.091+11');
INSERT INTO public.professions VALUES (3, 'Counsellor/Psychiatrist', '2022-01-31 19:14:07.091+11', '2022-01-31 19:14:07.091+11');
INSERT INTO public.professions VALUES (5, 'Speech Therapist', '2022-01-31 19:14:07.091+11', '2022-01-31 19:14:07.091+11');


--
-- TOC entry 4834 (class 0 OID 18297)
-- Dependencies: 294
-- Data for Name: qualifications; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.qualifications VALUES (1, 'BSc', '2022-01-31 19:14:24.156+11', '2022-01-31 19:14:24.156+11');
INSERT INTO public.qualifications VALUES (2, 'BSc(Hons)', '2022-01-31 19:14:24.156+11', '2022-01-31 19:14:24.156+11');
INSERT INTO public.qualifications VALUES (3, 'MBBS', '2022-01-31 19:14:24.156+11', '2022-01-31 19:14:24.156+11');
INSERT INTO public.qualifications VALUES (4, 'MD', '2022-01-31 19:14:24.156+11', '2022-01-31 19:14:24.156+11');
INSERT INTO public.qualifications VALUES (5, 'Master of clinical medicine', '2022-01-31 19:14:24.156+11', '2022-01-31 19:14:24.156+11');
INSERT INTO public.qualifications VALUES (6, 'Nurse practitioner', '2022-01-31 19:14:24.156+11', '2022-01-31 19:14:24.156+11');


--
-- TOC entry 4836 (class 0 OID 18301)
-- Dependencies: 296
-- Data for Name: reminders_settings; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.reminders_settings VALUES (1, 2529, true, NULL, '[3453,3644,4685,4694,4688]', NULL, NULL, '2022-05-04 17:10:28.321+10', '2022-05-11 18:03:47.916+10');


--
-- TOC entry 4838 (class 0 OID 18307)
-- Dependencies: 298
-- Data for Name: room_users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.room_users VALUES (1, 1, 3453, 3453, 3, 0, 1, '2022-04-21 19:55:43.336+10', '2022-04-21 19:55:43.336+10', true);
INSERT INTO public.room_users VALUES (2, 4, 3453, 3453, 3, 0, 1, '2022-04-21 19:55:43.343+10', '2022-04-21 19:55:43.343+10', true);
INSERT INTO public.room_users VALUES (3, 2, 3453, 3453, 3, 0, 1, '2022-04-21 19:55:43.344+10', '2022-04-21 19:55:43.344+10', true);
INSERT INTO public.room_users VALUES (4, 3, 3453, 3453, 3, 0, 1, '2022-04-21 19:55:43.344+10', '2022-04-21 19:55:43.344+10', true);
INSERT INTO public.room_users VALUES (5, 5, 3453, 3453, 3, 0, 1, '2022-04-21 19:55:43.35+10', '2022-04-21 19:55:43.35+10', true);
INSERT INTO public.room_users VALUES (6, 6, 3453, 3453, 3, 0, 1, '2022-04-21 19:55:43.355+10', '2022-04-21 19:55:43.355+10', true);
INSERT INTO public.room_users VALUES (7, 1, 1, 3453, 3, 0, 1, '2022-04-21 19:55:43.359+10', '2022-04-21 19:55:43.359+10', true);
INSERT INTO public.room_users VALUES (8, 2, 3430, 3453, 3, 0, 1, '2022-04-21 19:55:43.394+10', '2022-04-21 19:55:43.394+10', true);
INSERT INTO public.room_users VALUES (9, 4, 3429, 3453, 3, 0, 1, '2022-04-21 19:55:43.394+10', '2022-04-21 19:55:43.394+10', true);
INSERT INTO public.room_users VALUES (12, 6, 2529, 3453, 3, 0, 1, '2022-04-21 19:55:43.405+10', '2022-04-21 19:55:43.405+10', true);
INSERT INTO public.room_users VALUES (13, 7, 3644, 3644, 3, 0, 1, '2022-04-22 17:50:24.287+10', '2022-04-22 17:50:24.287+10', true);
INSERT INTO public.room_users VALUES (14, 8, 3644, 3644, 3, 0, 1, '2022-04-22 17:50:24.303+10', '2022-04-22 17:50:24.303+10', true);
INSERT INTO public.room_users VALUES (15, 9, 3644, 3644, 3, 0, 1, '2022-04-22 17:50:24.304+10', '2022-04-22 17:50:24.304+10', true);
INSERT INTO public.room_users VALUES (16, 10, 3644, 3644, 3, 0, 1, '2022-04-22 17:50:24.32+10', '2022-04-22 17:50:24.32+10', true);
INSERT INTO public.room_users VALUES (17, 11, 3644, 3644, 3, 0, 1, '2022-04-22 17:50:24.344+10', '2022-04-22 17:50:24.344+10', true);
INSERT INTO public.room_users VALUES (18, 12, 3644, 3644, 3, 0, 1, '2022-04-22 17:50:24.344+10', '2022-04-22 17:50:24.344+10', true);
INSERT INTO public.room_users VALUES (19, 13, 3644, 3644, 3, 0, 1, '2022-04-22 17:50:24.344+10', '2022-04-22 17:50:24.344+10', true);
INSERT INTO public.room_users VALUES (20, 7, 3430, 3644, 3, 0, 1, '2022-04-22 17:50:24.376+10', '2022-04-22 17:50:24.376+10', true);
INSERT INTO public.room_users VALUES (21, 8, 1, 3644, 3, 0, 1, '2022-04-22 17:50:24.377+10', '2022-04-22 17:50:24.377+10', true);
INSERT INTO public.room_users VALUES (23, 10, 3429, 3644, 3, 0, 1, '2022-04-22 17:50:24.382+10', '2022-04-22 17:50:24.382+10', true);
INSERT INTO public.room_users VALUES (25, 12, 3453, 3644, 3, 0, 1, '2022-04-22 17:50:24.389+10', '2022-04-22 17:50:24.389+10', true);
INSERT INTO public.room_users VALUES (26, 13, 2529, 3644, 3, 0, 1, '2022-04-22 17:50:24.389+10', '2022-04-22 17:50:24.389+10', true);
INSERT INTO public.room_users VALUES (27, 14, 4685, 4685, 3, 0, 1, '2022-05-04 21:57:27.402+10', '2022-05-04 21:57:27.402+10', true);
INSERT INTO public.room_users VALUES (28, 17, 4685, 4685, 3, 0, 1, '2022-05-04 21:57:27.408+10', '2022-05-04 21:57:27.408+10', true);
INSERT INTO public.room_users VALUES (29, 15, 4685, 4685, 3, 0, 1, '2022-05-04 21:57:27.408+10', '2022-05-04 21:57:27.408+10', true);
INSERT INTO public.room_users VALUES (30, 16, 4685, 4685, 3, 0, 1, '2022-05-04 21:57:27.408+10', '2022-05-04 21:57:27.408+10', true);
INSERT INTO public.room_users VALUES (31, 19, 4685, 4685, 3, 0, 1, '2022-05-04 21:57:27.417+10', '2022-05-04 21:57:27.417+10', true);
INSERT INTO public.room_users VALUES (32, 18, 4685, 4685, 3, 0, 1, '2022-05-04 21:57:27.409+10', '2022-05-04 21:57:27.409+10', true);
INSERT INTO public.room_users VALUES (33, 20, 4685, 4685, 3, 0, 1, '2022-05-04 21:57:27.424+10', '2022-05-04 21:57:27.424+10', true);
INSERT INTO public.room_users VALUES (34, 21, 4685, 4685, 3, 0, 1, '2022-05-04 21:57:27.424+10', '2022-05-04 21:57:27.424+10', true);
INSERT INTO public.room_users VALUES (35, 14, 3430, 4685, 3, 0, 1, '2022-05-04 21:57:27.424+10', '2022-05-04 21:57:27.424+10', true);
INSERT INTO public.room_users VALUES (36, 17, 1, 4685, 3, 0, 1, '2022-05-04 21:57:27.458+10', '2022-05-04 21:57:27.458+10', true);
INSERT INTO public.room_users VALUES (37, 15, 3453, 4685, 3, 0, 1, '2022-05-04 21:57:27.458+10', '2022-05-04 21:57:27.458+10', true);
INSERT INTO public.room_users VALUES (38, 19, 3429, 4685, 3, 0, 1, '2022-05-04 21:57:27.459+10', '2022-05-04 21:57:27.459+10', true);
INSERT INTO public.room_users VALUES (39, 18, 3644, 4685, 3, 0, 1, '2022-05-04 21:57:27.459+10', '2022-05-04 21:57:27.459+10', true);
INSERT INTO public.room_users VALUES (42, 21, 2529, 4685, 3, 0, 1, '2022-05-04 21:57:27.472+10', '2022-05-04 21:57:27.472+10', true);
INSERT INTO public.room_users VALUES (43, 22, 4686, 4686, 3, 0, 1, '2022-05-04 22:00:24.594+10', '2022-05-04 22:00:24.594+10', true);
INSERT INTO public.room_users VALUES (44, 26, 4686, 4686, 3, 0, 1, '2022-05-04 22:00:24.599+10', '2022-05-04 22:00:24.599+10', true);
INSERT INTO public.room_users VALUES (45, 23, 4686, 4686, 3, 0, 1, '2022-05-04 22:00:24.599+10', '2022-05-04 22:00:24.599+10', true);
INSERT INTO public.room_users VALUES (46, 25, 4686, 4686, 3, 0, 1, '2022-05-04 22:00:24.599+10', '2022-05-04 22:00:24.599+10', true);
INSERT INTO public.room_users VALUES (47, 24, 4686, 4686, 3, 0, 1, '2022-05-04 22:00:24.6+10', '2022-05-04 22:00:24.6+10', true);
INSERT INTO public.room_users VALUES (48, 27, 4686, 4686, 3, 0, 1, '2022-05-04 22:00:24.606+10', '2022-05-04 22:00:24.606+10', true);
INSERT INTO public.room_users VALUES (49, 28, 4686, 4686, 3, 0, 1, '2022-05-04 22:00:24.609+10', '2022-05-04 22:00:24.609+10', true);
INSERT INTO public.room_users VALUES (50, 29, 4686, 4686, 3, 0, 1, '2022-05-04 22:00:24.609+10', '2022-05-04 22:00:24.609+10', true);
INSERT INTO public.room_users VALUES (51, 30, 4686, 4686, 3, 0, 1, '2022-05-04 22:00:24.614+10', '2022-05-04 22:00:24.614+10', true);
INSERT INTO public.room_users VALUES (52, 22, 1, 4686, 3, 0, 1, '2022-05-04 22:00:24.614+10', '2022-05-04 22:00:24.614+10', true);
INSERT INTO public.room_users VALUES (53, 26, 3430, 4686, 3, 0, 1, '2022-05-04 22:00:24.629+10', '2022-05-04 22:00:24.629+10', true);
INSERT INTO public.room_users VALUES (54, 23, 3644, 4686, 3, 0, 1, '2022-05-04 22:00:24.629+10', '2022-05-04 22:00:24.629+10', true);
INSERT INTO public.room_users VALUES (55, 25, 4685, 4686, 3, 0, 1, '2022-05-04 22:00:24.629+10', '2022-05-04 22:00:24.629+10', true);
INSERT INTO public.room_users VALUES (56, 24, 3453, 4686, 3, 0, 1, '2022-05-04 22:00:24.629+10', '2022-05-04 22:00:24.629+10', true);
INSERT INTO public.room_users VALUES (59, 30, 2529, 4686, 3, 0, 1, '2022-05-04 22:00:24.639+10', '2022-05-04 22:00:24.639+10', true);
INSERT INTO public.room_users VALUES (60, 28, 3429, 4686, 3, 0, 1, '2022-05-04 22:00:24.642+10', '2022-05-04 22:00:24.642+10', true);
INSERT INTO public.room_users VALUES (61, 34, 4687, 4687, 3, 0, 1, '2022-05-05 15:54:57.408+10', '2022-05-05 15:54:57.408+10', true);
INSERT INTO public.room_users VALUES (62, 31, 4687, 4687, 3, 0, 1, '2022-05-05 15:54:57.404+10', '2022-05-05 15:54:57.404+10', true);
INSERT INTO public.room_users VALUES (63, 33, 4687, 4687, 3, 0, 1, '2022-05-05 15:54:57.409+10', '2022-05-05 15:54:57.409+10', true);
INSERT INTO public.room_users VALUES (64, 35, 4687, 4687, 3, 0, 1, '2022-05-05 15:54:57.414+10', '2022-05-05 15:54:57.414+10', true);
INSERT INTO public.room_users VALUES (65, 36, 4687, 4687, 3, 0, 1, '2022-05-05 15:54:57.42+10', '2022-05-05 15:54:57.42+10', true);
INSERT INTO public.room_users VALUES (66, 37, 4687, 4687, 3, 0, 1, '2022-05-05 15:54:57.42+10', '2022-05-05 15:54:57.42+10', true);
INSERT INTO public.room_users VALUES (67, 32, 4687, 4687, 3, 0, 1, '2022-05-05 15:54:57.409+10', '2022-05-05 15:54:57.409+10', true);
INSERT INTO public.room_users VALUES (68, 38, 4687, 4687, 3, 0, 1, '2022-05-05 15:54:57.42+10', '2022-05-05 15:54:57.42+10', true);
INSERT INTO public.room_users VALUES (69, 39, 4687, 4687, 3, 0, 1, '2022-05-05 15:54:57.42+10', '2022-05-05 15:54:57.42+10', true);
INSERT INTO public.room_users VALUES (70, 40, 4687, 4687, 3, 0, 1, '2022-05-05 15:54:57.43+10', '2022-05-05 15:54:57.43+10', true);
INSERT INTO public.room_users VALUES (71, 34, 3644, 4687, 3, 0, 1, '2022-05-05 15:54:57.43+10', '2022-05-05 15:54:57.43+10', true);
INSERT INTO public.room_users VALUES (72, 31, 3430, 4687, 3, 0, 1, '2022-05-05 15:54:57.431+10', '2022-05-05 15:54:57.431+10', true);
INSERT INTO public.room_users VALUES (73, 33, 4685, 4687, 3, 0, 1, '2022-05-05 15:54:57.431+10', '2022-05-05 15:54:57.431+10', true);
INSERT INTO public.room_users VALUES (74, 35, 3453, 4687, 3, 0, 1, '2022-05-05 15:54:57.446+10', '2022-05-05 15:54:57.446+10', true);
INSERT INTO public.room_users VALUES (76, 37, 3429, 4687, 3, 0, 1, '2022-05-05 15:54:57.446+10', '2022-05-05 15:54:57.446+10', true);
INSERT INTO public.room_users VALUES (77, 38, 4686, 4687, 3, 0, 1, '2022-05-05 15:54:57.447+10', '2022-05-05 15:54:57.447+10', true);
INSERT INTO public.room_users VALUES (78, 32, 1, 4687, 3, 0, 1, '2022-05-05 15:54:57.446+10', '2022-05-05 15:54:57.446+10', true);
INSERT INTO public.room_users VALUES (80, 40, 2529, 4687, 3, 0, 1, '2022-05-05 15:54:57.462+10', '2022-05-05 15:54:57.462+10', true);
INSERT INTO public.room_users VALUES (81, 41, 4688, 4688, 3, 0, 1, '2022-05-05 16:03:07.016+10', '2022-05-05 16:03:07.016+10', true);
INSERT INTO public.room_users VALUES (82, 42, 4688, 4688, 3, 0, 1, '2022-05-05 16:03:07.02+10', '2022-05-05 16:03:07.02+10', true);
INSERT INTO public.room_users VALUES (83, 43, 4688, 4688, 3, 0, 1, '2022-05-05 16:03:07.021+10', '2022-05-05 16:03:07.021+10', true);
INSERT INTO public.room_users VALUES (84, 44, 4688, 4688, 3, 0, 1, '2022-05-05 16:03:07.024+10', '2022-05-05 16:03:07.024+10', true);
INSERT INTO public.room_users VALUES (85, 46, 4688, 4688, 3, 0, 1, '2022-05-05 16:03:07.032+10', '2022-05-05 16:03:07.032+10', true);
INSERT INTO public.room_users VALUES (86, 45, 4688, 4688, 3, 0, 1, '2022-05-05 16:03:07.029+10', '2022-05-05 16:03:07.029+10', true);
INSERT INTO public.room_users VALUES (87, 47, 4688, 4688, 3, 0, 1, '2022-05-05 16:03:07.032+10', '2022-05-05 16:03:07.032+10', true);
INSERT INTO public.room_users VALUES (88, 48, 4688, 4688, 3, 0, 1, '2022-05-05 16:03:07.032+10', '2022-05-05 16:03:07.032+10', true);
INSERT INTO public.room_users VALUES (89, 49, 4688, 4688, 3, 0, 1, '2022-05-05 16:03:07.038+10', '2022-05-05 16:03:07.038+10', true);
INSERT INTO public.room_users VALUES (90, 51, 4688, 4688, 3, 0, 1, '2022-05-05 16:03:07.043+10', '2022-05-05 16:03:07.043+10', true);
INSERT INTO public.room_users VALUES (91, 50, 4688, 4688, 3, 0, 1, '2022-05-05 16:03:07.043+10', '2022-05-05 16:03:07.043+10', true);
INSERT INTO public.room_users VALUES (92, 41, 1, 4688, 3, 0, 1, '2022-05-05 16:03:07.043+10', '2022-05-05 16:03:07.043+10', true);
INSERT INTO public.room_users VALUES (93, 42, 3430, 4688, 3, 0, 1, '2022-05-05 16:03:07.057+10', '2022-05-05 16:03:07.057+10', true);
INSERT INTO public.room_users VALUES (94, 43, 3644, 4688, 3, 0, 1, '2022-05-05 16:03:07.057+10', '2022-05-05 16:03:07.057+10', true);
INSERT INTO public.room_users VALUES (95, 44, 4685, 4688, 3, 0, 1, '2022-05-05 16:03:07.057+10', '2022-05-05 16:03:07.057+10', true);
INSERT INTO public.room_users VALUES (97, 45, 3453, 4688, 3, 0, 1, '2022-05-05 16:03:07.058+10', '2022-05-05 16:03:07.058+10', true);
INSERT INTO public.room_users VALUES (98, 47, 4686, 4688, 3, 0, 1, '2022-05-05 16:03:07.067+10', '2022-05-05 16:03:07.067+10', true);
INSERT INTO public.room_users VALUES (99, 48, 4687, 4688, 3, 0, 1, '2022-05-05 16:03:07.067+10', '2022-05-05 16:03:07.067+10', true);
INSERT INTO public.room_users VALUES (100, 49, 3429, 4688, 3, 0, 1, '2022-05-05 16:03:07.067+10', '2022-05-05 16:03:07.067+10', true);
INSERT INTO public.room_users VALUES (101, 51, 2529, 4688, 3, 0, 1, '2022-05-05 16:03:07.068+10', '2022-05-05 16:03:07.068+10', true);
INSERT INTO public.room_users VALUES (103, 52, 4689, 4689, 3, 0, 1, '2022-05-05 18:32:37.718+10', '2022-05-05 18:32:37.718+10', true);
INSERT INTO public.room_users VALUES (104, 53, 4689, 4689, 3, 0, 1, '2022-05-05 18:32:37.724+10', '2022-05-05 18:32:37.724+10', true);
INSERT INTO public.room_users VALUES (105, 54, 4689, 4689, 3, 0, 1, '2022-05-05 18:32:37.725+10', '2022-05-05 18:32:37.725+10', true);
INSERT INTO public.room_users VALUES (106, 55, 4689, 4689, 3, 0, 1, '2022-05-05 18:32:37.73+10', '2022-05-05 18:32:37.73+10', true);
INSERT INTO public.room_users VALUES (107, 56, 4689, 4689, 3, 0, 1, '2022-05-05 18:32:37.734+10', '2022-05-05 18:32:37.734+10', true);
INSERT INTO public.room_users VALUES (109, 58, 4689, 4689, 3, 0, 1, '2022-05-05 18:32:37.734+10', '2022-05-05 18:32:37.734+10', true);
INSERT INTO public.room_users VALUES (113, 62, 4689, 4689, 3, 0, 1, '2022-05-05 18:32:37.747+10', '2022-05-05 18:32:37.747+10', true);
INSERT INTO public.room_users VALUES (118, 55, 4685, 4689, 3, 0, 1, '2022-05-05 18:32:37.772+10', '2022-05-05 18:32:37.772+10', true);
INSERT INTO public.room_users VALUES (124, 60, 4688, 4689, 3, 0, 1, '2022-05-05 18:32:37.784+10', '2022-05-05 18:32:37.784+10', true);
INSERT INTO public.room_users VALUES (126, 63, 2529, 4689, 3, 0, 1, '2022-05-05 18:32:37.79+10', '2022-05-05 18:32:37.79+10', true);
INSERT INTO public.room_users VALUES (108, 57, 4689, 4689, 3, 0, 1, '2022-05-05 18:32:37.734+10', '2022-05-05 18:32:37.734+10', true);
INSERT INTO public.room_users VALUES (114, 63, 4689, 4689, 3, 0, 1, '2022-05-05 18:32:37.747+10', '2022-05-05 18:32:37.747+10', true);
INSERT INTO public.room_users VALUES (119, 56, 3453, 4689, 3, 0, 1, '2022-05-05 18:32:37.778+10', '2022-05-05 18:32:37.778+10', true);
INSERT INTO public.room_users VALUES (123, 61, 3429, 4689, 3, 0, 1, '2022-05-05 18:32:37.79+10', '2022-05-05 18:32:37.79+10', true);
INSERT INTO public.room_users VALUES (110, 59, 4689, 4689, 3, 0, 1, '2022-05-05 18:32:37.742+10', '2022-05-05 18:32:37.742+10', true);
INSERT INTO public.room_users VALUES (115, 52, 1, 4689, 3, 0, 1, '2022-05-05 18:32:37.755+10', '2022-05-05 18:32:37.755+10', true);
INSERT INTO public.room_users VALUES (111, 60, 4689, 4689, 3, 0, 1, '2022-05-05 18:32:37.743+10', '2022-05-05 18:32:37.743+10', true);
INSERT INTO public.room_users VALUES (116, 53, 3430, 4689, 3, 0, 1, '2022-05-05 18:32:37.755+10', '2022-05-05 18:32:37.755+10', true);
INSERT INTO public.room_users VALUES (121, 57, 4686, 4689, 3, 0, 1, '2022-05-05 18:32:37.779+10', '2022-05-05 18:32:37.779+10', true);
INSERT INTO public.room_users VALUES (112, 61, 4689, 4689, 3, 0, 1, '2022-05-05 18:32:37.747+10', '2022-05-05 18:32:37.747+10', true);
INSERT INTO public.room_users VALUES (117, 54, 3644, 4689, 3, 0, 1, '2022-05-05 18:32:37.772+10', '2022-05-05 18:32:37.772+10', true);
INSERT INTO public.room_users VALUES (122, 59, 4687, 4689, 3, 0, 1, '2022-05-05 18:32:37.784+10', '2022-05-05 18:32:37.784+10', true);
INSERT INTO public.room_users VALUES (127, 64, 4690, 4690, 3, 0, 1, '2022-05-05 18:33:07.911+10', '2022-05-05 18:33:07.911+10', true);
INSERT INTO public.room_users VALUES (128, 67, 4690, 4690, 3, 0, 1, '2022-05-05 18:33:07.915+10', '2022-05-05 18:33:07.915+10', true);
INSERT INTO public.room_users VALUES (129, 65, 4690, 4690, 3, 0, 1, '2022-05-05 18:33:07.916+10', '2022-05-05 18:33:07.916+10', true);
INSERT INTO public.room_users VALUES (130, 66, 4690, 4690, 3, 0, 1, '2022-05-05 18:33:07.916+10', '2022-05-05 18:33:07.916+10', true);
INSERT INTO public.room_users VALUES (131, 68, 4690, 4690, 3, 0, 1, '2022-05-05 18:33:07.923+10', '2022-05-05 18:33:07.923+10', true);
INSERT INTO public.room_users VALUES (132, 69, 4690, 4690, 3, 0, 1, '2022-05-05 18:33:07.933+10', '2022-05-05 18:33:07.933+10', true);
INSERT INTO public.room_users VALUES (133, 70, 4690, 4690, 3, 0, 1, '2022-05-05 18:33:07.933+10', '2022-05-05 18:33:07.933+10', true);
INSERT INTO public.room_users VALUES (134, 71, 4690, 4690, 3, 0, 1, '2022-05-05 18:33:07.933+10', '2022-05-05 18:33:07.933+10', true);
INSERT INTO public.room_users VALUES (135, 72, 4690, 4690, 3, 0, 1, '2022-05-05 18:33:07.941+10', '2022-05-05 18:33:07.941+10', true);
INSERT INTO public.room_users VALUES (136, 73, 4690, 4690, 3, 0, 1, '2022-05-05 18:33:07.941+10', '2022-05-05 18:33:07.941+10', true);
INSERT INTO public.room_users VALUES (137, 74, 4690, 4690, 3, 0, 1, '2022-05-05 18:33:07.941+10', '2022-05-05 18:33:07.941+10', true);
INSERT INTO public.room_users VALUES (138, 75, 4690, 4690, 3, 0, 1, '2022-05-05 18:33:07.942+10', '2022-05-05 18:33:07.942+10', true);
INSERT INTO public.room_users VALUES (139, 76, 4690, 4690, 3, 0, 1, '2022-05-05 18:33:07.942+10', '2022-05-05 18:33:07.942+10', true);
INSERT INTO public.room_users VALUES (140, 64, 1, 4690, 3, 0, 1, '2022-05-05 18:33:07.952+10', '2022-05-05 18:33:07.952+10', true);
INSERT INTO public.room_users VALUES (141, 65, 3430, 4690, 3, 0, 1, '2022-05-05 18:33:07.953+10', '2022-05-05 18:33:07.953+10', true);
INSERT INTO public.room_users VALUES (142, 66, 3644, 4690, 3, 0, 1, '2022-05-05 18:33:07.953+10', '2022-05-05 18:33:07.953+10', true);
INSERT INTO public.room_users VALUES (143, 68, 3453, 4690, 3, 0, 1, '2022-05-05 18:33:07.969+10', '2022-05-05 18:33:07.969+10', true);
INSERT INTO public.room_users VALUES (145, 67, 4685, 4690, 3, 0, 1, '2022-05-05 18:33:07.953+10', '2022-05-05 18:33:07.953+10', true);
INSERT INTO public.room_users VALUES (146, 70, 4687, 4690, 3, 0, 1, '2022-05-05 18:33:07.969+10', '2022-05-05 18:33:07.969+10', true);
INSERT INTO public.room_users VALUES (147, 71, 4686, 4690, 3, 0, 1, '2022-05-05 18:33:07.969+10', '2022-05-05 18:33:07.969+10', true);
INSERT INTO public.room_users VALUES (148, 72, 4688, 4690, 3, 0, 1, '2022-05-05 18:33:07.97+10', '2022-05-05 18:33:07.97+10', true);
INSERT INTO public.room_users VALUES (149, 74, 3429, 4690, 3, 0, 1, '2022-05-05 18:33:07.983+10', '2022-05-05 18:33:07.983+10', true);
INSERT INTO public.room_users VALUES (150, 73, 4689, 4690, 3, 0, 1, '2022-05-05 18:33:07.982+10', '2022-05-05 18:33:07.982+10', true);
INSERT INTO public.room_users VALUES (152, 76, 2529, 4690, 3, 0, 1, '2022-05-05 18:33:07.983+10', '2022-05-05 18:33:07.983+10', true);
INSERT INTO public.room_users VALUES (153, 77, 4691, 4691, 3, 0, 1, '2022-05-05 18:38:56.44+10', '2022-05-05 18:38:56.44+10', true);
INSERT INTO public.room_users VALUES (154, 81, 4691, 4691, 3, 0, 1, '2022-05-05 18:38:56.443+10', '2022-05-05 18:38:56.443+10', true);
INSERT INTO public.room_users VALUES (156, 80, 4691, 4691, 3, 0, 1, '2022-05-05 18:38:56.445+10', '2022-05-05 18:38:56.445+10', true);
INSERT INTO public.room_users VALUES (157, 79, 4691, 4691, 3, 0, 1, '2022-05-05 18:38:56.445+10', '2022-05-05 18:38:56.445+10', true);
INSERT INTO public.room_users VALUES (155, 78, 4691, 4691, 3, 0, 1, '2022-05-05 18:38:56.444+10', '2022-05-05 18:38:56.444+10', true);
INSERT INTO public.room_users VALUES (158, 82, 4691, 4691, 3, 0, 1, '2022-05-05 18:38:56.453+10', '2022-05-05 18:38:56.453+10', true);
INSERT INTO public.room_users VALUES (159, 83, 4691, 4691, 3, 0, 1, '2022-05-05 18:38:56.454+10', '2022-05-05 18:38:56.454+10', true);
INSERT INTO public.room_users VALUES (160, 84, 4691, 4691, 3, 0, 1, '2022-05-05 18:38:56.454+10', '2022-05-05 18:38:56.454+10', true);
INSERT INTO public.room_users VALUES (161, 85, 4691, 4691, 3, 0, 1, '2022-05-05 18:38:56.454+10', '2022-05-05 18:38:56.454+10', true);
INSERT INTO public.room_users VALUES (162, 86, 4691, 4691, 3, 0, 1, '2022-05-05 18:38:56.454+10', '2022-05-05 18:38:56.454+10', true);
INSERT INTO public.room_users VALUES (163, 87, 4691, 4691, 3, 0, 1, '2022-05-05 18:38:56.467+10', '2022-05-05 18:38:56.467+10', true);
INSERT INTO public.room_users VALUES (164, 88, 4691, 4691, 3, 0, 1, '2022-05-05 18:38:56.467+10', '2022-05-05 18:38:56.467+10', true);
INSERT INTO public.room_users VALUES (165, 90, 4691, 4691, 3, 0, 1, '2022-05-05 18:38:56.468+10', '2022-05-05 18:38:56.468+10', true);
INSERT INTO public.room_users VALUES (166, 89, 4691, 4691, 3, 0, 1, '2022-05-05 18:38:56.468+10', '2022-05-05 18:38:56.468+10', true);
INSERT INTO public.room_users VALUES (167, 77, 1, 4691, 3, 0, 1, '2022-05-05 18:38:56.486+10', '2022-05-05 18:38:56.486+10', true);
INSERT INTO public.room_users VALUES (168, 81, 3430, 4691, 3, 0, 1, '2022-05-05 18:38:56.487+10', '2022-05-05 18:38:56.487+10', true);
INSERT INTO public.room_users VALUES (169, 80, 4685, 4691, 3, 0, 1, '2022-05-05 18:38:56.487+10', '2022-05-05 18:38:56.487+10', true);
INSERT INTO public.room_users VALUES (170, 78, 4690, 4691, 3, 0, 1, '2022-05-05 18:38:56.487+10', '2022-05-05 18:38:56.487+10', true);
INSERT INTO public.room_users VALUES (171, 82, 3453, 4691, 3, 0, 1, '2022-05-05 18:38:56.498+10', '2022-05-05 18:38:56.498+10', true);
INSERT INTO public.room_users VALUES (172, 79, 3644, 4691, 3, 0, 1, '2022-05-05 18:38:56.487+10', '2022-05-05 18:38:56.487+10', true);
INSERT INTO public.room_users VALUES (174, 84, 4686, 4691, 3, 0, 1, '2022-05-05 18:38:56.499+10', '2022-05-05 18:38:56.499+10', true);
INSERT INTO public.room_users VALUES (175, 85, 4687, 4691, 3, 0, 1, '2022-05-05 18:38:56.499+10', '2022-05-05 18:38:56.499+10', true);
INSERT INTO public.room_users VALUES (176, 86, 4688, 4691, 3, 0, 1, '2022-05-05 18:38:56.499+10', '2022-05-05 18:38:56.499+10', true);
INSERT INTO public.room_users VALUES (177, 87, 3429, 4691, 3, 0, 1, '2022-05-05 18:38:56.509+10', '2022-05-05 18:38:56.509+10', true);
INSERT INTO public.room_users VALUES (178, 88, 4689, 4691, 3, 0, 1, '2022-05-05 18:38:56.51+10', '2022-05-05 18:38:56.51+10', true);
INSERT INTO public.room_users VALUES (179, 90, 2529, 4691, 3, 0, 1, '2022-05-05 18:38:56.51+10', '2022-05-05 18:38:56.51+10', true);
INSERT INTO public.room_users VALUES (181, 91, 4692, 4692, 3, 0, 1, '2022-05-05 18:39:00.225+10', '2022-05-05 18:39:00.225+10', true);
INSERT INTO public.room_users VALUES (182, 93, 4692, 4692, 3, 0, 1, '2022-05-05 18:39:00.23+10', '2022-05-05 18:39:00.23+10', true);
INSERT INTO public.room_users VALUES (183, 92, 4692, 4692, 3, 0, 1, '2022-05-05 18:39:00.23+10', '2022-05-05 18:39:00.23+10', true);
INSERT INTO public.room_users VALUES (184, 94, 4692, 4692, 3, 0, 1, '2022-05-05 18:39:00.231+10', '2022-05-05 18:39:00.231+10', true);
INSERT INTO public.room_users VALUES (185, 95, 4692, 4692, 3, 0, 1, '2022-05-05 18:39:00.23+10', '2022-05-05 18:39:00.23+10', true);
INSERT INTO public.room_users VALUES (186, 96, 4692, 4692, 3, 0, 1, '2022-05-05 18:39:00.236+10', '2022-05-05 18:39:00.236+10', true);
INSERT INTO public.room_users VALUES (187, 97, 4692, 4692, 3, 0, 1, '2022-05-05 18:39:00.249+10', '2022-05-05 18:39:00.249+10', true);
INSERT INTO public.room_users VALUES (188, 98, 4692, 4692, 3, 0, 1, '2022-05-05 18:39:00.249+10', '2022-05-05 18:39:00.249+10', true);
INSERT INTO public.room_users VALUES (189, 99, 4692, 4692, 3, 0, 1, '2022-05-05 18:39:00.249+10', '2022-05-05 18:39:00.249+10', true);
INSERT INTO public.room_users VALUES (190, 100, 4692, 4692, 3, 0, 1, '2022-05-05 18:39:00.249+10', '2022-05-05 18:39:00.249+10', true);
INSERT INTO public.room_users VALUES (191, 101, 4692, 4692, 3, 0, 1, '2022-05-05 18:39:00.25+10', '2022-05-05 18:39:00.25+10', true);
INSERT INTO public.room_users VALUES (192, 102, 4692, 4692, 3, 0, 1, '2022-05-05 18:39:00.262+10', '2022-05-05 18:39:00.262+10', true);
INSERT INTO public.room_users VALUES (193, 103, 4692, 4692, 3, 0, 1, '2022-05-05 18:39:00.262+10', '2022-05-05 18:39:00.262+10', true);
INSERT INTO public.room_users VALUES (194, 104, 4692, 4692, 3, 0, 1, '2022-05-05 18:39:00.263+10', '2022-05-05 18:39:00.263+10', true);
INSERT INTO public.room_users VALUES (195, 105, 4692, 4692, 3, 0, 1, '2022-05-05 18:39:00.263+10', '2022-05-05 18:39:00.263+10', true);
INSERT INTO public.room_users VALUES (196, 91, 1, 4692, 3, 0, 1, '2022-05-05 18:39:00.282+10', '2022-05-05 18:39:00.282+10', true);
INSERT INTO public.room_users VALUES (197, 92, 4690, 4692, 3, 0, 1, '2022-05-05 18:39:00.283+10', '2022-05-05 18:39:00.283+10', true);
INSERT INTO public.room_users VALUES (198, 94, 4685, 4692, 3, 0, 1, '2022-05-05 18:39:00.283+10', '2022-05-05 18:39:00.283+10', true);
INSERT INTO public.room_users VALUES (199, 93, 3430, 4692, 3, 0, 1, '2022-05-05 18:39:00.283+10', '2022-05-05 18:39:00.283+10', true);
INSERT INTO public.room_users VALUES (200, 95, 3644, 4692, 3, 0, 1, '2022-05-05 18:39:00.284+10', '2022-05-05 18:39:00.284+10', true);
INSERT INTO public.room_users VALUES (201, 96, 3453, 4692, 3, 0, 1, '2022-05-05 18:39:00.292+10', '2022-05-05 18:39:00.292+10', true);
INSERT INTO public.room_users VALUES (202, 97, 4686, 4692, 3, 0, 1, '2022-05-05 18:39:00.303+10', '2022-05-05 18:39:00.303+10', true);
INSERT INTO public.room_users VALUES (203, 99, 4688, 4692, 3, 0, 1, '2022-05-05 18:39:00.304+10', '2022-05-05 18:39:00.304+10', true);
INSERT INTO public.room_users VALUES (204, 100, 4687, 4692, 3, 0, 1, '2022-05-05 18:39:00.304+10', '2022-05-05 18:39:00.304+10', true);
INSERT INTO public.room_users VALUES (206, 101, 3429, 4692, 3, 0, 1, '2022-05-05 18:39:00.316+10', '2022-05-05 18:39:00.316+10', true);
INSERT INTO public.room_users VALUES (207, 102, 4689, 4692, 3, 0, 1, '2022-05-05 18:39:00.316+10', '2022-05-05 18:39:00.316+10', true);
INSERT INTO public.room_users VALUES (208, 103, 4691, 4692, 3, 0, 1, '2022-05-05 18:39:00.317+10', '2022-05-05 18:39:00.317+10', true);
INSERT INTO public.room_users VALUES (210, 105, 2529, 4692, 3, 0, 1, '2022-05-05 18:39:00.317+10', '2022-05-05 18:39:00.317+10', true);
INSERT INTO public.room_users VALUES (211, 106, 4693, 4693, 3, 0, 1, '2022-05-05 18:51:50.862+10', '2022-05-05 18:51:50.862+10', true);
INSERT INTO public.room_users VALUES (212, 107, 4693, 4693, 3, 0, 1, '2022-05-05 18:51:50.867+10', '2022-05-05 18:51:50.867+10', true);
INSERT INTO public.room_users VALUES (213, 109, 4693, 4693, 3, 0, 1, '2022-05-05 18:51:50.867+10', '2022-05-05 18:51:50.867+10', true);
INSERT INTO public.room_users VALUES (214, 108, 4693, 4693, 3, 0, 1, '2022-05-05 18:51:50.868+10', '2022-05-05 18:51:50.868+10', true);
INSERT INTO public.room_users VALUES (215, 110, 4693, 4693, 3, 0, 1, '2022-05-05 18:51:50.873+10', '2022-05-05 18:51:50.873+10', true);
INSERT INTO public.room_users VALUES (216, 111, 4693, 4693, 3, 0, 1, '2022-05-05 18:51:50.879+10', '2022-05-05 18:51:50.879+10', true);
INSERT INTO public.room_users VALUES (217, 112, 4693, 4693, 3, 0, 1, '2022-05-05 18:51:50.879+10', '2022-05-05 18:51:50.879+10', true);
INSERT INTO public.room_users VALUES (218, 113, 4693, 4693, 3, 0, 1, '2022-05-05 18:51:50.879+10', '2022-05-05 18:51:50.879+10', true);
INSERT INTO public.room_users VALUES (219, 114, 4693, 4693, 3, 0, 1, '2022-05-05 18:51:50.88+10', '2022-05-05 18:51:50.88+10', true);
INSERT INTO public.room_users VALUES (220, 115, 4693, 4693, 3, 0, 1, '2022-05-05 18:51:50.889+10', '2022-05-05 18:51:50.889+10', true);
INSERT INTO public.room_users VALUES (221, 116, 4693, 4693, 3, 0, 1, '2022-05-05 18:51:50.89+10', '2022-05-05 18:51:50.89+10', true);
INSERT INTO public.room_users VALUES (222, 118, 4693, 4693, 3, 0, 1, '2022-05-05 18:51:50.89+10', '2022-05-05 18:51:50.89+10', true);
INSERT INTO public.room_users VALUES (223, 119, 4693, 4693, 3, 0, 1, '2022-05-05 18:51:50.89+10', '2022-05-05 18:51:50.89+10', true);
INSERT INTO public.room_users VALUES (224, 117, 4693, 4693, 3, 0, 1, '2022-05-05 18:51:50.89+10', '2022-05-05 18:51:50.89+10', true);
INSERT INTO public.room_users VALUES (225, 120, 4693, 4693, 3, 0, 1, '2022-05-05 18:51:50.914+10', '2022-05-05 18:51:50.914+10', true);
INSERT INTO public.room_users VALUES (226, 106, 1, 4693, 3, 0, 1, '2022-05-05 18:51:50.914+10', '2022-05-05 18:51:50.914+10', true);
INSERT INTO public.room_users VALUES (227, 107, 4690, 4693, 3, 0, 1, '2022-05-05 18:51:50.914+10', '2022-05-05 18:51:50.914+10', true);
INSERT INTO public.room_users VALUES (228, 121, 4693, 4693, 3, 0, 1, '2022-05-05 18:51:50.915+10', '2022-05-05 18:51:50.915+10', true);
INSERT INTO public.room_users VALUES (229, 109, 3430, 4693, 3, 0, 1, '2022-05-05 18:51:50.932+10', '2022-05-05 18:51:50.932+10', true);
INSERT INTO public.room_users VALUES (230, 108, 3644, 4693, 3, 0, 1, '2022-05-05 18:51:50.932+10', '2022-05-05 18:51:50.932+10', true);
INSERT INTO public.room_users VALUES (231, 110, 4685, 4693, 3, 0, 1, '2022-05-05 18:51:50.932+10', '2022-05-05 18:51:50.932+10', true);
INSERT INTO public.room_users VALUES (235, 116, 4689, 4693, 3, 0, 1, '2022-05-05 18:51:50.947+10', '2022-05-05 18:51:50.947+10', true);
INSERT INTO public.room_users VALUES (240, 117, 4692, 4693, 3, 0, 1, '2022-05-05 18:51:50.96+10', '2022-05-05 18:51:50.96+10', true);
INSERT INTO public.room_users VALUES (232, 111, 3453, 4693, 3, 0, 1, '2022-05-05 18:51:50.933+10', '2022-05-05 18:51:50.933+10', true);
INSERT INTO public.room_users VALUES (236, 118, 4691, 4693, 3, 0, 1, '2022-05-05 18:51:50.947+10', '2022-05-05 18:51:50.947+10', true);
INSERT INTO public.room_users VALUES (239, 119, 3429, 4693, 3, 0, 1, '2022-05-05 18:51:50.959+10', '2022-05-05 18:51:50.959+10', true);
INSERT INTO public.room_users VALUES (238, 113, 4686, 4693, 3, 0, 1, '2022-05-05 18:51:50.947+10', '2022-05-05 18:51:50.947+10', true);
INSERT INTO public.room_users VALUES (234, 114, 4687, 4693, 3, 0, 1, '2022-05-05 18:51:50.946+10', '2022-05-05 18:51:50.946+10', true);
INSERT INTO public.room_users VALUES (242, 121, 2529, 4693, 3, 0, 1, '2022-05-05 18:51:50.974+10', '2022-05-05 18:51:50.974+10', true);
INSERT INTO public.room_users VALUES (237, 115, 4688, 4693, 3, 0, 1, '2022-05-05 18:51:50.946+10', '2022-05-05 18:51:50.946+10', true);
INSERT INTO public.room_users VALUES (243, 122, 4694, 4694, 3, 0, 1, '2022-05-06 15:29:24.132+10', '2022-05-06 15:29:24.132+10', true);
INSERT INTO public.room_users VALUES (244, 123, 4694, 4694, 3, 0, 1, '2022-05-06 15:29:24.132+10', '2022-05-06 15:29:24.132+10', true);
INSERT INTO public.room_users VALUES (245, 125, 4694, 4694, 3, 0, 1, '2022-05-06 15:29:24.132+10', '2022-05-06 15:29:24.132+10', true);
INSERT INTO public.room_users VALUES (246, 124, 4694, 4694, 3, 0, 1, '2022-05-06 15:29:24.133+10', '2022-05-06 15:29:24.133+10', true);
INSERT INTO public.room_users VALUES (247, 126, 4694, 4694, 3, 0, 1, '2022-05-06 15:29:24.133+10', '2022-05-06 15:29:24.133+10', true);
INSERT INTO public.room_users VALUES (248, 127, 4694, 4694, 3, 0, 1, '2022-05-06 15:29:24.144+10', '2022-05-06 15:29:24.144+10', true);
INSERT INTO public.room_users VALUES (249, 128, 4694, 4694, 3, 0, 1, '2022-05-06 15:29:24.151+10', '2022-05-06 15:29:24.151+10', true);
INSERT INTO public.room_users VALUES (250, 129, 4694, 4694, 3, 0, 1, '2022-05-06 15:29:24.151+10', '2022-05-06 15:29:24.151+10', true);
INSERT INTO public.room_users VALUES (251, 130, 4694, 4694, 3, 0, 1, '2022-05-06 15:29:24.151+10', '2022-05-06 15:29:24.151+10', true);
INSERT INTO public.room_users VALUES (252, 131, 4694, 4694, 3, 0, 1, '2022-05-06 15:29:24.152+10', '2022-05-06 15:29:24.152+10', true);
INSERT INTO public.room_users VALUES (253, 132, 4694, 4694, 3, 0, 1, '2022-05-06 15:29:24.162+10', '2022-05-06 15:29:24.162+10', true);
INSERT INTO public.room_users VALUES (254, 133, 4694, 4694, 3, 0, 1, '2022-05-06 15:29:24.162+10', '2022-05-06 15:29:24.162+10', true);
INSERT INTO public.room_users VALUES (255, 134, 4694, 4694, 3, 0, 1, '2022-05-06 15:29:24.162+10', '2022-05-06 15:29:24.162+10', true);
INSERT INTO public.room_users VALUES (256, 135, 4694, 4694, 3, 0, 1, '2022-05-06 15:29:24.162+10', '2022-05-06 15:29:24.162+10', true);
INSERT INTO public.room_users VALUES (257, 136, 4694, 4694, 3, 0, 1, '2022-05-06 15:29:24.163+10', '2022-05-06 15:29:24.163+10', true);
INSERT INTO public.room_users VALUES (258, 137, 4694, 4694, 3, 0, 1, '2022-05-06 15:29:24.174+10', '2022-05-06 15:29:24.174+10', true);
INSERT INTO public.room_users VALUES (259, 138, 4694, 4694, 3, 0, 1, '2022-05-06 15:29:24.174+10', '2022-05-06 15:29:24.174+10', true);
INSERT INTO public.room_users VALUES (260, 122, 1, 4694, 3, 0, 1, '2022-05-06 15:29:24.174+10', '2022-05-06 15:29:24.174+10', true);
INSERT INTO public.room_users VALUES (261, 123, 3644, 4694, 3, 0, 1, '2022-05-06 15:29:24.175+10', '2022-05-06 15:29:24.175+10', true);
INSERT INTO public.room_users VALUES (262, 125, 3430, 4694, 3, 0, 1, '2022-05-06 15:29:24.175+10', '2022-05-06 15:29:24.175+10', true);
INSERT INTO public.room_users VALUES (263, 124, 4690, 4694, 3, 0, 1, '2022-05-06 15:29:24.185+10', '2022-05-06 15:29:24.185+10', true);
INSERT INTO public.room_users VALUES (265, 127, 4686, 4694, 3, 0, 1, '2022-05-06 15:29:24.186+10', '2022-05-06 15:29:24.186+10', true);
INSERT INTO public.room_users VALUES (266, 128, 4687, 4694, 3, 0, 1, '2022-05-06 15:29:24.186+10', '2022-05-06 15:29:24.186+10', true);
INSERT INTO public.room_users VALUES (267, 129, 4688, 4694, 3, 0, 1, '2022-05-06 15:29:24.186+10', '2022-05-06 15:29:24.186+10', true);
INSERT INTO public.room_users VALUES (268, 130, 4689, 4694, 3, 0, 1, '2022-05-06 15:29:24.196+10', '2022-05-06 15:29:24.196+10', true);
INSERT INTO public.room_users VALUES (269, 131, 3429, 4694, 3, 0, 1, '2022-05-06 15:29:24.199+10', '2022-05-06 15:29:24.199+10', true);
INSERT INTO public.room_users VALUES (270, 132, 4691, 4694, 3, 0, 1, '2022-05-06 15:29:24.199+10', '2022-05-06 15:29:24.199+10', true);
INSERT INTO public.room_users VALUES (271, 133, 4692, 4694, 3, 0, 1, '2022-05-06 15:29:24.2+10', '2022-05-06 15:29:24.2+10', true);
INSERT INTO public.room_users VALUES (273, 135, 4693, 4694, 3, 0, 1, '2022-05-06 15:29:24.208+10', '2022-05-06 15:29:24.208+10', true);
INSERT INTO public.room_users VALUES (274, 136, 4685, 4694, 3, 0, 1, '2022-05-06 15:29:24.208+10', '2022-05-06 15:29:24.208+10', true);
INSERT INTO public.room_users VALUES (275, 138, 2529, 4694, 3, 0, 1, '2022-05-06 15:29:24.208+10', '2022-05-06 15:29:24.208+10', true);
INSERT INTO public.room_users VALUES (276, 137, 3453, 4694, 3, 0, 1, '2022-05-06 15:29:24.223+10', '2022-05-06 15:29:24.223+10', true);
INSERT INTO public.room_users VALUES (309, 155, 5137, 5137, 3, 0, 1, '2022-05-12 16:58:42.277+10', '2022-05-12 16:58:42.277+10', true);
INSERT INTO public.room_users VALUES (310, 156, 5137, 5137, 3, 0, 1, '2022-05-12 16:58:42.286+10', '2022-05-12 16:58:42.286+10', true);
INSERT INTO public.room_users VALUES (311, 159, 5137, 5137, 3, 0, 1, '2022-05-12 16:58:42.286+10', '2022-05-12 16:58:42.286+10', true);
INSERT INTO public.room_users VALUES (312, 158, 5137, 5137, 3, 0, 1, '2022-05-12 16:58:42.287+10', '2022-05-12 16:58:42.287+10', true);
INSERT INTO public.room_users VALUES (313, 157, 5137, 5137, 3, 0, 1, '2022-05-12 16:58:42.287+10', '2022-05-12 16:58:42.287+10', true);
INSERT INTO public.room_users VALUES (314, 160, 5137, 5137, 3, 0, 1, '2022-05-12 16:58:42.297+10', '2022-05-12 16:58:42.297+10', true);
INSERT INTO public.room_users VALUES (315, 161, 5137, 5137, 3, 0, 1, '2022-05-12 16:58:42.301+10', '2022-05-12 16:58:42.301+10', true);
INSERT INTO public.room_users VALUES (316, 162, 5137, 5137, 3, 0, 1, '2022-05-12 16:58:42.302+10', '2022-05-12 16:58:42.302+10', true);
INSERT INTO public.room_users VALUES (317, 164, 5137, 5137, 3, 0, 1, '2022-05-12 16:58:42.302+10', '2022-05-12 16:58:42.302+10', true);
INSERT INTO public.room_users VALUES (318, 163, 5137, 5137, 3, 0, 1, '2022-05-12 16:58:42.309+10', '2022-05-12 16:58:42.309+10', true);
INSERT INTO public.room_users VALUES (319, 165, 5137, 5137, 3, 0, 1, '2022-05-12 16:58:42.311+10', '2022-05-12 16:58:42.311+10', true);
INSERT INTO public.room_users VALUES (320, 166, 5137, 5137, 3, 0, 1, '2022-05-12 16:58:42.319+10', '2022-05-12 16:58:42.319+10', true);
INSERT INTO public.room_users VALUES (321, 167, 5137, 5137, 3, 0, 1, '2022-05-12 16:58:42.319+10', '2022-05-12 16:58:42.319+10', true);
INSERT INTO public.room_users VALUES (322, 168, 5137, 5137, 3, 0, 1, '2022-05-12 16:58:42.319+10', '2022-05-12 16:58:42.319+10', true);
INSERT INTO public.room_users VALUES (323, 170, 5137, 5137, 3, 0, 1, '2022-05-12 16:58:42.326+10', '2022-05-12 16:58:42.326+10', true);
INSERT INTO public.room_users VALUES (324, 155, 1, 5137, 3, 0, 1, '2022-05-12 16:58:42.335+10', '2022-05-12 16:58:42.335+10', true);
INSERT INTO public.room_users VALUES (325, 169, 5137, 5137, 3, 0, 1, '2022-05-12 16:58:42.326+10', '2022-05-12 16:58:42.326+10', true);
INSERT INTO public.room_users VALUES (326, 156, 3429, 5137, 3, 0, 1, '2022-05-12 16:58:42.338+10', '2022-05-12 16:58:42.338+10', true);
INSERT INTO public.room_users VALUES (327, 159, 3430, 5137, 3, 0, 1, '2022-05-12 16:58:42.41+10', '2022-05-12 16:58:42.41+10', true);
INSERT INTO public.room_users VALUES (328, 158, 4688, 5137, 3, 0, 1, '2022-05-12 16:58:42.411+10', '2022-05-12 16:58:42.411+10', true);
INSERT INTO public.room_users VALUES (329, 157, 4693, 5137, 3, 0, 1, '2022-05-12 16:58:42.452+10', '2022-05-12 16:58:42.452+10', true);
INSERT INTO public.room_users VALUES (330, 160, 4692, 5137, 3, 0, 1, '2022-05-12 16:58:42.453+10', '2022-05-12 16:58:42.453+10', true);
INSERT INTO public.room_users VALUES (331, 161, 4687, 5137, 3, 0, 1, '2022-05-12 16:58:42.453+10', '2022-05-12 16:58:42.453+10', true);
INSERT INTO public.room_users VALUES (332, 162, 4685, 5137, 3, 0, 1, '2022-05-12 16:58:42.462+10', '2022-05-12 16:58:42.462+10', true);
INSERT INTO public.room_users VALUES (333, 164, 4686, 5137, 3, 0, 1, '2022-05-12 16:58:42.462+10', '2022-05-12 16:58:42.462+10', true);
INSERT INTO public.room_users VALUES (334, 165, 3644, 5137, 3, 0, 1, '2022-05-12 16:58:42.492+10', '2022-05-12 16:58:42.492+10', true);
INSERT INTO public.room_users VALUES (335, 163, 4691, 5137, 3, 0, 1, '2022-05-12 16:58:42.491+10', '2022-05-12 16:58:42.491+10', true);
INSERT INTO public.room_users VALUES (336, 166, 4690, 5137, 3, 0, 1, '2022-05-12 16:58:42.492+10', '2022-05-12 16:58:42.492+10', true);
INSERT INTO public.room_users VALUES (337, 167, 2529, 5137, 3, 0, 1, '2022-05-12 16:58:42.5+10', '2022-05-12 16:58:42.5+10', true);
INSERT INTO public.room_users VALUES (338, 168, 4694, 5137, 3, 0, 1, '2022-05-12 16:58:42.5+10', '2022-05-12 16:58:42.5+10', true);
INSERT INTO public.room_users VALUES (339, 170, 3453, 5137, 3, 0, 1, '2022-05-12 16:58:42.506+10', '2022-05-12 16:58:42.506+10', true);
INSERT INTO public.room_users VALUES (340, 169, 4689, 5137, 3, 0, 1, '2022-05-12 16:58:42.506+10', '2022-05-12 16:58:42.506+10', true);
INSERT INTO public.room_users VALUES (341, 171, 5138, 5138, 3, 0, 1, '2022-05-12 18:56:57.257+10', '2022-05-12 18:56:57.257+10', true);
INSERT INTO public.room_users VALUES (342, 173, 5138, 5138, 3, 0, 1, '2022-05-12 18:56:57.264+10', '2022-05-12 18:56:57.264+10', true);
INSERT INTO public.room_users VALUES (343, 175, 5138, 5138, 3, 0, 1, '2022-05-12 18:56:57.263+10', '2022-05-12 18:56:57.263+10', true);
INSERT INTO public.room_users VALUES (344, 174, 5138, 5138, 3, 0, 1, '2022-05-12 18:56:57.264+10', '2022-05-12 18:56:57.264+10', true);
INSERT INTO public.room_users VALUES (345, 172, 5138, 5138, 3, 0, 1, '2022-05-12 18:56:57.264+10', '2022-05-12 18:56:57.264+10', true);
INSERT INTO public.room_users VALUES (346, 176, 5138, 5138, 3, 0, 1, '2022-05-12 18:56:57.273+10', '2022-05-12 18:56:57.273+10', true);
INSERT INTO public.room_users VALUES (347, 180, 5138, 5138, 3, 0, 1, '2022-05-12 18:56:57.281+10', '2022-05-12 18:56:57.281+10', true);
INSERT INTO public.room_users VALUES (348, 178, 5138, 5138, 3, 0, 1, '2022-05-12 18:56:57.288+10', '2022-05-12 18:56:57.288+10', true);
INSERT INTO public.room_users VALUES (349, 177, 5138, 5138, 3, 0, 1, '2022-05-12 18:56:57.281+10', '2022-05-12 18:56:57.281+10', true);
INSERT INTO public.room_users VALUES (350, 179, 5138, 5138, 3, 0, 1, '2022-05-12 18:56:57.288+10', '2022-05-12 18:56:57.288+10', true);
INSERT INTO public.room_users VALUES (351, 181, 5138, 5138, 3, 0, 1, '2022-05-12 18:56:57.288+10', '2022-05-12 18:56:57.288+10', true);
INSERT INTO public.room_users VALUES (352, 182, 5138, 5138, 3, 0, 1, '2022-05-12 18:56:57.295+10', '2022-05-12 18:56:57.295+10', true);
INSERT INTO public.room_users VALUES (353, 183, 5138, 5138, 3, 0, 1, '2022-05-12 18:56:57.3+10', '2022-05-12 18:56:57.3+10', true);
INSERT INTO public.room_users VALUES (354, 184, 5138, 5138, 3, 0, 1, '2022-05-12 18:56:57.3+10', '2022-05-12 18:56:57.3+10', true);
INSERT INTO public.room_users VALUES (355, 185, 5138, 5138, 3, 0, 1, '2022-05-12 18:56:57.3+10', '2022-05-12 18:56:57.3+10', true);
INSERT INTO public.room_users VALUES (356, 186, 5138, 5138, 3, 0, 1, '2022-05-12 18:56:57.301+10', '2022-05-12 18:56:57.301+10', true);
INSERT INTO public.room_users VALUES (357, 187, 5138, 5138, 3, 0, 1, '2022-05-12 18:56:57.309+10', '2022-05-12 18:56:57.309+10', true);
INSERT INTO public.room_users VALUES (358, 175, 3430, 5138, 3, 0, 1, '2022-05-12 18:56:57.312+10', '2022-05-12 18:56:57.312+10', true);
INSERT INTO public.room_users VALUES (359, 171, 1, 5138, 3, 0, 1, '2022-05-12 18:56:57.345+10', '2022-05-12 18:56:57.345+10', true);
INSERT INTO public.room_users VALUES (360, 173, 4693, 5138, 3, 0, 1, '2022-05-12 18:56:57.346+10', '2022-05-12 18:56:57.346+10', true);
INSERT INTO public.room_users VALUES (361, 174, 4688, 5138, 3, 0, 1, '2022-05-12 18:56:57.346+10', '2022-05-12 18:56:57.346+10', true);
INSERT INTO public.room_users VALUES (362, 172, 3429, 5138, 3, 0, 1, '2022-05-12 18:56:57.356+10', '2022-05-12 18:56:57.356+10', true);
INSERT INTO public.room_users VALUES (363, 176, 5137, 5138, 3, 0, 1, '2022-05-12 18:56:57.356+10', '2022-05-12 18:56:57.356+10', true);
INSERT INTO public.room_users VALUES (364, 180, 4685, 5138, 3, 0, 1, '2022-05-12 18:56:57.36+10', '2022-05-12 18:56:57.36+10', true);
INSERT INTO public.room_users VALUES (365, 178, 4687, 5138, 3, 0, 1, '2022-05-12 18:56:57.367+10', '2022-05-12 18:56:57.367+10', true);
INSERT INTO public.room_users VALUES (366, 177, 4692, 5138, 3, 0, 1, '2022-05-12 18:56:57.367+10', '2022-05-12 18:56:57.367+10', true);
INSERT INTO public.room_users VALUES (367, 179, 4686, 5138, 3, 0, 1, '2022-05-12 18:56:57.368+10', '2022-05-12 18:56:57.368+10', true);
INSERT INTO public.room_users VALUES (368, 181, 4691, 5138, 3, 0, 1, '2022-05-12 18:56:57.368+10', '2022-05-12 18:56:57.368+10', true);
INSERT INTO public.room_users VALUES (369, 182, 3644, 5138, 3, 0, 1, '2022-05-12 18:56:57.374+10', '2022-05-12 18:56:57.374+10', true);
INSERT INTO public.room_users VALUES (370, 183, 4690, 5138, 3, 0, 1, '2022-05-12 18:56:57.379+10', '2022-05-12 18:56:57.379+10', true);
INSERT INTO public.room_users VALUES (371, 184, 2529, 5138, 3, 0, 1, '2022-05-12 18:56:57.379+10', '2022-05-12 18:56:57.379+10', true);
INSERT INTO public.room_users VALUES (372, 185, 4694, 5138, 3, 0, 1, '2022-05-12 18:56:57.379+10', '2022-05-12 18:56:57.379+10', true);
INSERT INTO public.room_users VALUES (373, 186, 4689, 5138, 3, 0, 1, '2022-05-12 18:56:57.38+10', '2022-05-12 18:56:57.38+10', true);
INSERT INTO public.room_users VALUES (374, 187, 3453, 5138, 3, 0, 1, '2022-05-12 18:56:57.405+10', '2022-05-12 18:56:57.405+10', true);
INSERT INTO public.room_users VALUES (375, 188, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.154+10', '2022-05-13 09:52:03.154+10', true);
INSERT INTO public.room_users VALUES (376, 189, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.158+10', '2022-05-13 09:52:03.158+10', true);
INSERT INTO public.room_users VALUES (377, 190, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.158+10', '2022-05-13 09:52:03.158+10', true);
INSERT INTO public.room_users VALUES (378, 191, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.162+10', '2022-05-13 09:52:03.162+10', true);
INSERT INTO public.room_users VALUES (379, 192, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.167+10', '2022-05-13 09:52:03.167+10', true);
INSERT INTO public.room_users VALUES (380, 193, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.171+10', '2022-05-13 09:52:03.171+10', true);
INSERT INTO public.room_users VALUES (381, 194, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.171+10', '2022-05-13 09:52:03.171+10', true);
INSERT INTO public.room_users VALUES (387, 199, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.184+10', '2022-05-13 09:52:03.184+10', true);
INSERT INTO public.room_users VALUES (392, 205, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.194+10', '2022-05-13 09:52:03.194+10', true);
INSERT INTO public.room_users VALUES (397, 192, 4693, 5141, 3, 0, 1, '2022-05-13 09:52:03.333+10', '2022-05-13 09:52:03.333+10', true);
INSERT INTO public.room_users VALUES (402, 197, 4685, 5141, 3, 0, 1, '2022-05-13 09:52:03.34+10', '2022-05-13 09:52:03.34+10', true);
INSERT INTO public.room_users VALUES (407, 201, 4690, 5141, 3, 0, 1, '2022-05-13 09:52:03.353+10', '2022-05-13 09:52:03.353+10', true);
INSERT INTO public.room_users VALUES (382, 195, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.171+10', '2022-05-13 09:52:03.171+10', true);
INSERT INTO public.room_users VALUES (389, 201, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.189+10', '2022-05-13 09:52:03.189+10', true);
INSERT INTO public.room_users VALUES (394, 189, 3430, 5141, 3, 0, 1, '2022-05-13 09:52:03.327+10', '2022-05-13 09:52:03.327+10', true);
INSERT INTO public.room_users VALUES (399, 194, 4692, 5141, 3, 0, 1, '2022-05-13 09:52:03.339+10', '2022-05-13 09:52:03.339+10', true);
INSERT INTO public.room_users VALUES (404, 200, 2529, 5141, 3, 0, 1, '2022-05-13 09:52:03.352+10', '2022-05-13 09:52:03.352+10', true);
INSERT INTO public.room_users VALUES (408, 203, 4689, 5141, 3, 0, 1, '2022-05-13 09:52:03.363+10', '2022-05-13 09:52:03.363+10', true);
INSERT INTO public.room_users VALUES (383, 196, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.176+10', '2022-05-13 09:52:03.176+10', true);
INSERT INTO public.room_users VALUES (386, 200, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.184+10', '2022-05-13 09:52:03.184+10', true);
INSERT INTO public.room_users VALUES (391, 204, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.194+10', '2022-05-13 09:52:03.194+10', true);
INSERT INTO public.room_users VALUES (396, 191, 4688, 5141, 3, 0, 1, '2022-05-13 09:52:03.328+10', '2022-05-13 09:52:03.328+10', true);
INSERT INTO public.room_users VALUES (401, 195, 4687, 5141, 3, 0, 1, '2022-05-13 09:52:03.34+10', '2022-05-13 09:52:03.34+10', true);
INSERT INTO public.room_users VALUES (409, 204, 3453, 5141, 3, 0, 1, '2022-05-13 09:52:03.363+10', '2022-05-13 09:52:03.363+10', true);
INSERT INTO public.room_users VALUES (384, 197, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.179+10', '2022-05-13 09:52:03.179+10', true);
INSERT INTO public.room_users VALUES (388, 202, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.193+10', '2022-05-13 09:52:03.193+10', true);
INSERT INTO public.room_users VALUES (393, 188, 1, 5141, 3, 0, 1, '2022-05-13 09:52:03.327+10', '2022-05-13 09:52:03.327+10', true);
INSERT INTO public.room_users VALUES (398, 193, 5137, 5141, 3, 0, 1, '2022-05-13 09:52:03.339+10', '2022-05-13 09:52:03.339+10', true);
INSERT INTO public.room_users VALUES (403, 198, 4691, 5141, 3, 0, 1, '2022-05-13 09:52:03.348+10', '2022-05-13 09:52:03.348+10', true);
INSERT INTO public.room_users VALUES (406, 202, 4694, 5141, 3, 0, 1, '2022-05-13 09:52:03.352+10', '2022-05-13 09:52:03.352+10', true);
INSERT INTO public.room_users VALUES (385, 198, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.184+10', '2022-05-13 09:52:03.184+10', true);
INSERT INTO public.room_users VALUES (390, 203, 5141, 5141, 3, 0, 1, '2022-05-13 09:52:03.194+10', '2022-05-13 09:52:03.194+10', true);
INSERT INTO public.room_users VALUES (395, 190, 3429, 5141, 3, 0, 1, '2022-05-13 09:52:03.327+10', '2022-05-13 09:52:03.327+10', true);
INSERT INTO public.room_users VALUES (400, 196, 4686, 5141, 3, 0, 1, '2022-05-13 09:52:03.339+10', '2022-05-13 09:52:03.339+10', true);
INSERT INTO public.room_users VALUES (405, 199, 3644, 5141, 3, 0, 1, '2022-05-13 09:52:03.352+10', '2022-05-13 09:52:03.352+10', true);
INSERT INTO public.room_users VALUES (410, 205, 5138, 5141, 3, 0, 1, '2022-05-13 09:52:03.364+10', '2022-05-13 09:52:03.364+10', true);


--
-- TOC entry 4840 (class 0 OID 18315)
-- Dependencies: 300
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.sessions VALUES (2458, 1, 11, 101, 5, 101, '9:00am', '9:00am', 54, '9:00am', '10:00am', 22, '10:00am', '11:00am', 45, '11:30am', '1:30pm', 85, '2:00pm', '4:00pm', 55, '4:00pm', '6:00pm', 66, '2022-05-13 17:05:12.446+10', '2022-05-13 22:55:10.591+10');


--
-- TOC entry 4336 (class 0 OID 17316)
-- Dependencies: 211
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4842 (class 0 OID 18321)
-- Dependencies: 302
-- Data for Name: support_users; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4844 (class 0 OID 18326)
-- Dependencies: 304
-- Data for Name: system_infos; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.system_infos VALUES (1, 1, '{"operatingSystem":{"fileSystem":[{"freeSpace":25969397760,"name":"/","label":"cloudimg-rootfs","totalSpace":89311358976,"type":"ext4","mount":"/"},{"freeSpace":103973888,"name":"/dev/sda15","label":"UEFI","totalSpace":109422592,"type":"vfat","mount":"/boot/efi"},{"freeSpace":10390315008,"name":"/dev/sdb1","label":"","totalSpace":14727258112,"type":"ext4","mount":"/mnt"}],"process":[],"osVersionInfo":{"version":"20.04.4 LTS","codeName":"Focal Fossa","buildNumber":"5.13.0-1021-azure","versionStr":"20.04.4 LTS (Focal Fossa) build 5.13.0-1021-azure"},"osArchitecture":64,"family":"Ubuntu","manufacturer":"GNU/Linux"},"hardware":{"memory":{"heapMemory":{"total":203423744,"max":1822425088,"free":111031296},"physicalMemory":[]},"computerSystem":{"serialNumber":"unknown","model":"Virtual Machine (version: 7.0)","manufacturer":"Microsoft Corporation"},"processor":{"physicalPackageCount":1,"clockFrequency":2095194000,"name":"Intel(R) Xeon(R) Platinum 8171M CPU @ 2.60GHz","logicalProcessorCount":2,"family":"6","physicalProcessorCount":2,"architecture":"x64"}}}', '2022-04-21 19:16:40.805+10', '2022-04-21 19:22:23.528+10');


--
-- TOC entry 4846 (class 0 OID 18332)
-- Dependencies: 306
-- Data for Name: temp_sessions; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4848 (class 0 OID 18338)
-- Dependencies: 308
-- Data for Name: transaction_logs; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4850 (class 0 OID 18345)
-- Dependencies: 310
-- Data for Name: user_address_changes; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4852 (class 0 OID 18351)
-- Dependencies: 312
-- Data for Name: user_conversation_temps; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4854 (class 0 OID 18358)
-- Dependencies: 314
-- Data for Name: user_conversations; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4856 (class 0 OID 18365)
-- Dependencies: 316
-- Data for Name: user_faxes; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4858 (class 0 OID 18374)
-- Dependencies: 318
-- Data for Name: user_fcm_tokens; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4860 (class 0 OID 18380)
-- Dependencies: 320
-- Data for Name: user_notification_sounds; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4862 (class 0 OID 18384)
-- Dependencies: 322
-- Data for Name: user_practitioners; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.user_practitioners VALUES (2529, 5137, 1, '2022-05-12 16:58:42.221+10', '2022-05-12 17:05:52.282+10');
INSERT INTO public.user_practitioners VALUES (2529, 5138, 1, '2022-05-12 18:56:57.206+10', '2022-05-13 09:49:01.189+10');
INSERT INTO public.user_practitioners VALUES (2529, 5141, 0, '2022-05-13 09:52:03.098+10', '2022-05-13 09:52:03.098+10');


--
-- TOC entry 4863 (class 0 OID 18388)
-- Dependencies: 323
-- Data for Name: user_rooms; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.user_rooms VALUES (1, NULL, 3453, 0, 3, 1, 0, NULL, 1, NULL, NULL, NULL, 0, NULL, '2022-04-21 19:55:43.316+10', '2022-04-21 19:55:43.316+10');
INSERT INTO public.user_rooms VALUES (2, NULL, 3453, 0, 3, 1, 0, NULL, 3430, NULL, NULL, NULL, 0, NULL, '2022-04-21 19:55:43.316+10', '2022-04-21 19:55:43.316+10');
INSERT INTO public.user_rooms VALUES (4, NULL, 3453, 0, 3, 1, 0, NULL, 3429, NULL, NULL, NULL, 0, NULL, '2022-04-21 19:55:43.317+10', '2022-04-21 19:55:43.317+10');
INSERT INTO public.user_rooms VALUES (6, NULL, 3453, 0, 3, 1, 0, NULL, 2529, NULL, NULL, NULL, 0, NULL, '2022-04-21 19:55:43.317+10', '2022-04-21 19:55:43.317+10');
INSERT INTO public.user_rooms VALUES (7, NULL, 3644, 0, 3, 1, 0, NULL, 3430, NULL, NULL, NULL, 0, NULL, '2022-04-22 17:50:24.212+10', '2022-04-22 17:50:24.212+10');
INSERT INTO public.user_rooms VALUES (8, NULL, 3644, 0, 3, 1, 0, NULL, 1, NULL, NULL, NULL, 0, NULL, '2022-04-22 17:50:24.211+10', '2022-04-22 17:50:24.211+10');
INSERT INTO public.user_rooms VALUES (10, NULL, 3644, 0, 3, 1, 0, NULL, 3429, NULL, NULL, NULL, 0, NULL, '2022-04-22 17:50:24.212+10', '2022-04-22 17:50:24.212+10');
INSERT INTO public.user_rooms VALUES (12, NULL, 3644, 0, 3, 1, 0, NULL, 3453, NULL, NULL, NULL, 0, NULL, '2022-04-22 17:50:24.212+10', '2022-04-22 17:50:24.212+10');
INSERT INTO public.user_rooms VALUES (13, NULL, 3644, 0, 3, 1, 0, NULL, 2529, NULL, NULL, NULL, 0, NULL, '2022-04-22 17:50:24.213+10', '2022-04-22 17:50:24.213+10');
INSERT INTO public.user_rooms VALUES (14, NULL, 4685, 0, 3, 1, 0, NULL, 3430, NULL, NULL, NULL, 0, NULL, '2022-05-04 21:57:27.383+10', '2022-05-04 21:57:27.383+10');
INSERT INTO public.user_rooms VALUES (15, NULL, 4685, 0, 3, 1, 0, NULL, 3453, NULL, NULL, NULL, 0, NULL, '2022-05-04 21:57:27.384+10', '2022-05-04 21:57:27.384+10');
INSERT INTO public.user_rooms VALUES (17, NULL, 4685, 0, 3, 1, 0, NULL, 1, NULL, NULL, NULL, 0, NULL, '2022-05-04 21:57:27.383+10', '2022-05-04 21:57:27.383+10');
INSERT INTO public.user_rooms VALUES (18, NULL, 4685, 0, 3, 1, 0, NULL, 3644, NULL, NULL, NULL, 0, NULL, '2022-05-04 21:57:27.384+10', '2022-05-04 21:57:27.384+10');
INSERT INTO public.user_rooms VALUES (19, NULL, 4685, 0, 3, 1, 0, NULL, 3429, NULL, NULL, NULL, 0, NULL, '2022-05-04 21:57:27.384+10', '2022-05-04 21:57:27.384+10');
INSERT INTO public.user_rooms VALUES (21, NULL, 4685, 0, 3, 1, 0, NULL, 2529, NULL, NULL, NULL, 0, NULL, '2022-05-04 21:57:27.385+10', '2022-05-04 21:57:27.385+10');
INSERT INTO public.user_rooms VALUES (22, NULL, 4686, 0, 3, 1, 0, NULL, 1, NULL, NULL, NULL, 0, NULL, '2022-05-04 22:00:24.575+10', '2022-05-04 22:00:24.575+10');
INSERT INTO public.user_rooms VALUES (23, NULL, 4686, 0, 3, 1, 0, NULL, 3644, NULL, NULL, NULL, 0, NULL, '2022-05-04 22:00:24.575+10', '2022-05-04 22:00:24.575+10');
INSERT INTO public.user_rooms VALUES (24, NULL, 4686, 0, 3, 1, 0, NULL, 3453, NULL, NULL, NULL, 0, NULL, '2022-05-04 22:00:24.575+10', '2022-05-04 22:00:24.575+10');
INSERT INTO public.user_rooms VALUES (25, NULL, 4686, 0, 3, 1, 0, NULL, 4685, NULL, NULL, NULL, 0, NULL, '2022-05-04 22:00:24.575+10', '2022-05-04 22:00:24.575+10');
INSERT INTO public.user_rooms VALUES (26, NULL, 4686, 0, 3, 1, 0, NULL, 3430, NULL, NULL, NULL, 0, NULL, '2022-05-04 22:00:24.575+10', '2022-05-04 22:00:24.575+10');
INSERT INTO public.user_rooms VALUES (28, NULL, 4686, 0, 3, 1, 0, NULL, 3429, NULL, NULL, NULL, 0, NULL, '2022-05-04 22:00:24.576+10', '2022-05-04 22:00:24.576+10');
INSERT INTO public.user_rooms VALUES (30, NULL, 4686, 0, 3, 1, 0, NULL, 2529, NULL, NULL, NULL, 0, NULL, '2022-05-04 22:00:24.576+10', '2022-05-04 22:00:24.576+10');
INSERT INTO public.user_rooms VALUES (31, NULL, 4687, 0, 3, 1, 0, NULL, 3430, NULL, NULL, NULL, 0, NULL, '2022-05-05 15:54:57.374+10', '2022-05-05 15:54:57.374+10');
INSERT INTO public.user_rooms VALUES (32, NULL, 4687, 0, 3, 1, 0, NULL, 1, NULL, NULL, NULL, 0, NULL, '2022-05-05 15:54:57.374+10', '2022-05-05 15:54:57.374+10');
INSERT INTO public.user_rooms VALUES (33, NULL, 4687, 0, 3, 1, 0, NULL, 4685, NULL, NULL, NULL, 0, NULL, '2022-05-05 15:54:57.375+10', '2022-05-05 15:54:57.375+10');
INSERT INTO public.user_rooms VALUES (34, NULL, 4687, 0, 3, 1, 0, NULL, 3644, NULL, NULL, NULL, 0, NULL, '2022-05-05 15:54:57.374+10', '2022-05-05 15:54:57.374+10');
INSERT INTO public.user_rooms VALUES (35, NULL, 4687, 0, 3, 1, 0, NULL, 3453, NULL, NULL, NULL, 0, NULL, '2022-05-05 15:54:57.375+10', '2022-05-05 15:54:57.375+10');
INSERT INTO public.user_rooms VALUES (37, NULL, 4687, 0, 3, 1, 0, NULL, 3429, NULL, NULL, NULL, 0, NULL, '2022-05-05 15:54:57.376+10', '2022-05-05 15:54:57.376+10');
INSERT INTO public.user_rooms VALUES (38, NULL, 4687, 0, 3, 1, 0, NULL, 4686, NULL, NULL, NULL, 0, NULL, '2022-05-05 15:54:57.376+10', '2022-05-05 15:54:57.376+10');
INSERT INTO public.user_rooms VALUES (40, NULL, 4687, 0, 3, 1, 0, NULL, 2529, NULL, NULL, NULL, 0, NULL, '2022-05-05 15:54:57.376+10', '2022-05-05 15:54:57.376+10');
INSERT INTO public.user_rooms VALUES (41, NULL, 4688, 0, 3, 1, 0, NULL, 1, NULL, NULL, NULL, 0, NULL, '2022-05-05 16:03:06.989+10', '2022-05-05 16:03:06.989+10');
INSERT INTO public.user_rooms VALUES (42, NULL, 4688, 0, 3, 1, 0, NULL, 3430, NULL, NULL, NULL, 0, NULL, '2022-05-05 16:03:06.989+10', '2022-05-05 16:03:06.989+10');
INSERT INTO public.user_rooms VALUES (43, NULL, 4688, 0, 3, 1, 0, NULL, 3644, NULL, NULL, NULL, 0, NULL, '2022-05-05 16:03:06.99+10', '2022-05-05 16:03:06.99+10');
INSERT INTO public.user_rooms VALUES (44, NULL, 4688, 0, 3, 1, 0, NULL, 4685, NULL, NULL, NULL, 0, NULL, '2022-05-05 16:03:06.99+10', '2022-05-05 16:03:06.99+10');
INSERT INTO public.user_rooms VALUES (45, NULL, 4688, 0, 3, 1, 0, NULL, 3453, NULL, NULL, NULL, 0, NULL, '2022-05-05 16:03:06.99+10', '2022-05-05 16:03:06.99+10');
INSERT INTO public.user_rooms VALUES (47, NULL, 4688, 0, 3, 1, 0, NULL, 4686, NULL, NULL, NULL, 0, NULL, '2022-05-05 16:03:06.991+10', '2022-05-05 16:03:06.991+10');
INSERT INTO public.user_rooms VALUES (48, NULL, 4688, 0, 3, 1, 0, NULL, 4687, NULL, NULL, NULL, 0, NULL, '2022-05-05 16:03:06.991+10', '2022-05-05 16:03:06.991+10');
INSERT INTO public.user_rooms VALUES (49, NULL, 4688, 0, 3, 1, 0, NULL, 3429, NULL, NULL, NULL, 0, NULL, '2022-05-05 16:03:06.991+10', '2022-05-05 16:03:06.991+10');
INSERT INTO public.user_rooms VALUES (51, NULL, 4688, 0, 3, 1, 0, NULL, 2529, NULL, NULL, NULL, 0, NULL, '2022-05-05 16:03:06.991+10', '2022-05-05 16:03:06.991+10');
INSERT INTO public.user_rooms VALUES (52, NULL, 4689, 0, 3, 1, 0, NULL, 1, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:32:37.691+10', '2022-05-05 18:32:37.691+10');
INSERT INTO public.user_rooms VALUES (53, NULL, 4689, 0, 3, 1, 0, NULL, 3430, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:32:37.692+10', '2022-05-05 18:32:37.692+10');
INSERT INTO public.user_rooms VALUES (54, NULL, 4689, 0, 3, 1, 0, NULL, 3644, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:32:37.692+10', '2022-05-05 18:32:37.692+10');
INSERT INTO public.user_rooms VALUES (55, NULL, 4689, 0, 3, 1, 0, NULL, 4685, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:32:37.692+10', '2022-05-05 18:32:37.692+10');
INSERT INTO public.user_rooms VALUES (56, NULL, 4689, 0, 3, 1, 0, NULL, 3453, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:32:37.693+10', '2022-05-05 18:32:37.693+10');
INSERT INTO public.user_rooms VALUES (57, NULL, 4689, 0, 3, 1, 0, NULL, 4686, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:32:37.693+10', '2022-05-05 18:32:37.693+10');
INSERT INTO public.user_rooms VALUES (59, NULL, 4689, 0, 3, 1, 0, NULL, 4687, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:32:37.693+10', '2022-05-05 18:32:37.693+10');
INSERT INTO public.user_rooms VALUES (60, NULL, 4689, 0, 3, 1, 0, NULL, 4688, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:32:37.694+10', '2022-05-05 18:32:37.694+10');
INSERT INTO public.user_rooms VALUES (61, NULL, 4689, 0, 3, 1, 0, NULL, 3429, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:32:37.694+10', '2022-05-05 18:32:37.694+10');
INSERT INTO public.user_rooms VALUES (63, NULL, 4689, 0, 3, 1, 0, NULL, 2529, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:32:37.694+10', '2022-05-05 18:32:37.694+10');
INSERT INTO public.user_rooms VALUES (64, NULL, 4690, 0, 3, 1, 0, NULL, 1, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:33:07.883+10', '2022-05-05 18:33:07.883+10');
INSERT INTO public.user_rooms VALUES (65, NULL, 4690, 0, 3, 1, 0, NULL, 3430, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:33:07.883+10', '2022-05-05 18:33:07.883+10');
INSERT INTO public.user_rooms VALUES (66, NULL, 4690, 0, 3, 1, 0, NULL, 3644, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:33:07.883+10', '2022-05-05 18:33:07.883+10');
INSERT INTO public.user_rooms VALUES (67, NULL, 4690, 0, 3, 1, 0, NULL, 4685, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:33:07.884+10', '2022-05-05 18:33:07.884+10');
INSERT INTO public.user_rooms VALUES (68, NULL, 4690, 0, 3, 1, 0, NULL, 3453, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:33:07.884+10', '2022-05-05 18:33:07.884+10');
INSERT INTO public.user_rooms VALUES (70, NULL, 4690, 0, 3, 1, 0, NULL, 4687, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:33:07.885+10', '2022-05-05 18:33:07.885+10');
INSERT INTO public.user_rooms VALUES (71, NULL, 4690, 0, 3, 1, 0, NULL, 4686, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:33:07.884+10', '2022-05-05 18:33:07.884+10');
INSERT INTO public.user_rooms VALUES (72, NULL, 4690, 0, 3, 1, 0, NULL, 4688, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:33:07.885+10', '2022-05-05 18:33:07.885+10');
INSERT INTO public.user_rooms VALUES (73, NULL, 4690, 0, 3, 1, 0, NULL, 4689, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:33:07.886+10', '2022-05-05 18:33:07.886+10');
INSERT INTO public.user_rooms VALUES (74, NULL, 4690, 0, 3, 1, 0, NULL, 3429, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:33:07.886+10', '2022-05-05 18:33:07.886+10');
INSERT INTO public.user_rooms VALUES (76, NULL, 4690, 0, 3, 1, 0, NULL, 2529, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:33:07.887+10', '2022-05-05 18:33:07.887+10');
INSERT INTO public.user_rooms VALUES (77, NULL, 4691, 0, 3, 1, 0, NULL, 1, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:38:56.407+10', '2022-05-05 18:38:56.407+10');
INSERT INTO public.user_rooms VALUES (78, NULL, 4691, 0, 3, 1, 0, NULL, 4690, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:38:56.407+10', '2022-05-05 18:38:56.407+10');
INSERT INTO public.user_rooms VALUES (79, NULL, 4691, 0, 3, 1, 0, NULL, 3644, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:38:56.408+10', '2022-05-05 18:38:56.408+10');
INSERT INTO public.user_rooms VALUES (80, NULL, 4691, 0, 3, 1, 0, NULL, 4685, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:38:56.408+10', '2022-05-05 18:38:56.408+10');
INSERT INTO public.user_rooms VALUES (81, NULL, 4691, 0, 3, 1, 0, NULL, 3430, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:38:56.407+10', '2022-05-05 18:38:56.407+10');
INSERT INTO public.user_rooms VALUES (82, NULL, 4691, 0, 3, 1, 0, NULL, 3453, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:38:56.408+10', '2022-05-05 18:38:56.408+10');
INSERT INTO public.user_rooms VALUES (84, NULL, 4691, 0, 3, 1, 0, NULL, 4686, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:38:56.409+10', '2022-05-05 18:38:56.409+10');
INSERT INTO public.user_rooms VALUES (85, NULL, 4691, 0, 3, 1, 0, NULL, 4687, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:38:56.409+10', '2022-05-05 18:38:56.409+10');
INSERT INTO public.user_rooms VALUES (86, NULL, 4691, 0, 3, 1, 0, NULL, 4688, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:38:56.409+10', '2022-05-05 18:38:56.409+10');
INSERT INTO public.user_rooms VALUES (87, NULL, 4691, 0, 3, 1, 0, NULL, 3429, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:38:56.409+10', '2022-05-05 18:38:56.409+10');
INSERT INTO public.user_rooms VALUES (88, NULL, 4691, 0, 3, 1, 0, NULL, 4689, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:38:56.41+10', '2022-05-05 18:38:56.41+10');
INSERT INTO public.user_rooms VALUES (90, NULL, 4691, 0, 3, 1, 0, NULL, 2529, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:38:56.411+10', '2022-05-05 18:38:56.411+10');
INSERT INTO public.user_rooms VALUES (91, NULL, 4692, 0, 3, 1, 0, NULL, 1, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:39:00.201+10', '2022-05-05 18:39:00.201+10');
INSERT INTO public.user_rooms VALUES (92, NULL, 4692, 0, 3, 1, 0, NULL, 4690, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:39:00.201+10', '2022-05-05 18:39:00.201+10');
INSERT INTO public.user_rooms VALUES (93, NULL, 4692, 0, 3, 1, 0, NULL, 3430, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:39:00.202+10', '2022-05-05 18:39:00.202+10');
INSERT INTO public.user_rooms VALUES (94, NULL, 4692, 0, 3, 1, 0, NULL, 4685, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:39:00.202+10', '2022-05-05 18:39:00.202+10');
INSERT INTO public.user_rooms VALUES (95, NULL, 4692, 0, 3, 1, 0, NULL, 3644, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:39:00.202+10', '2022-05-05 18:39:00.202+10');
INSERT INTO public.user_rooms VALUES (96, NULL, 4692, 0, 3, 1, 0, NULL, 3453, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:39:00.202+10', '2022-05-05 18:39:00.202+10');
INSERT INTO public.user_rooms VALUES (97, NULL, 4692, 0, 3, 1, 0, NULL, 4686, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:39:00.203+10', '2022-05-05 18:39:00.203+10');
INSERT INTO public.user_rooms VALUES (99, NULL, 4692, 0, 3, 1, 0, NULL, 4688, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:39:00.203+10', '2022-05-05 18:39:00.203+10');
INSERT INTO public.user_rooms VALUES (100, NULL, 4692, 0, 3, 1, 0, NULL, 4687, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:39:00.203+10', '2022-05-05 18:39:00.203+10');
INSERT INTO public.user_rooms VALUES (101, NULL, 4692, 0, 3, 1, 0, NULL, 3429, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:39:00.203+10', '2022-05-05 18:39:00.203+10');
INSERT INTO public.user_rooms VALUES (102, NULL, 4692, 0, 3, 1, 0, NULL, 4689, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:39:00.203+10', '2022-05-05 18:39:00.203+10');
INSERT INTO public.user_rooms VALUES (103, NULL, 4692, 0, 3, 1, 0, NULL, 4691, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:39:00.204+10', '2022-05-05 18:39:00.204+10');
INSERT INTO public.user_rooms VALUES (105, NULL, 4692, 0, 3, 1, 0, NULL, 2529, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:39:00.204+10', '2022-05-05 18:39:00.204+10');
INSERT INTO public.user_rooms VALUES (106, NULL, 4693, 0, 3, 1, 0, NULL, 1, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:51:50.828+10', '2022-05-05 18:51:50.828+10');
INSERT INTO public.user_rooms VALUES (107, NULL, 4693, 0, 3, 1, 0, NULL, 4690, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:51:50.828+10', '2022-05-05 18:51:50.828+10');
INSERT INTO public.user_rooms VALUES (108, NULL, 4693, 0, 3, 1, 0, NULL, 3644, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:51:50.828+10', '2022-05-05 18:51:50.828+10');
INSERT INTO public.user_rooms VALUES (109, NULL, 4693, 0, 3, 1, 0, NULL, 3430, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:51:50.828+10', '2022-05-05 18:51:50.828+10');
INSERT INTO public.user_rooms VALUES (113, NULL, 4693, 0, 3, 1, 0, NULL, 4686, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:51:50.829+10', '2022-05-05 18:51:50.829+10');
INSERT INTO public.user_rooms VALUES (116, NULL, 4693, 0, 3, 1, 0, NULL, 4689, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:51:50.83+10', '2022-05-05 18:51:50.83+10');
INSERT INTO public.user_rooms VALUES (119, NULL, 4693, 0, 3, 1, 0, NULL, 3429, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:51:50.83+10', '2022-05-05 18:51:50.83+10');
INSERT INTO public.user_rooms VALUES (121, NULL, 4693, 0, 3, 1, 0, NULL, 2529, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:51:50.831+10', '2022-05-05 18:51:50.831+10');
INSERT INTO public.user_rooms VALUES (110, NULL, 4693, 0, 3, 1, 0, NULL, 4685, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:51:50.829+10', '2022-05-05 18:51:50.829+10');
INSERT INTO public.user_rooms VALUES (114, NULL, 4693, 0, 3, 1, 0, NULL, 4687, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:51:50.83+10', '2022-05-05 18:51:50.83+10');
INSERT INTO public.user_rooms VALUES (118, NULL, 4693, 0, 3, 1, 0, NULL, 4691, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:51:50.83+10', '2022-05-05 18:51:50.83+10');
INSERT INTO public.user_rooms VALUES (111, NULL, 4693, 0, 3, 1, 0, NULL, 3453, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:51:50.829+10', '2022-05-05 18:51:50.829+10');
INSERT INTO public.user_rooms VALUES (115, NULL, 4693, 0, 3, 1, 0, NULL, 4688, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:51:50.83+10', '2022-05-05 18:51:50.83+10');
INSERT INTO public.user_rooms VALUES (117, NULL, 4693, 0, 3, 1, 0, NULL, 4692, NULL, NULL, NULL, 0, NULL, '2022-05-05 18:51:50.831+10', '2022-05-05 18:51:50.831+10');
INSERT INTO public.user_rooms VALUES (122, NULL, 4694, 0, 3, 1, 0, NULL, 1, NULL, NULL, NULL, 0, NULL, '2022-05-06 15:29:24.068+10', '2022-05-06 15:29:24.068+10');
INSERT INTO public.user_rooms VALUES (123, NULL, 4694, 0, 3, 1, 0, NULL, 3644, NULL, NULL, NULL, 0, NULL, '2022-05-06 15:29:24.069+10', '2022-05-06 15:29:24.069+10');
INSERT INTO public.user_rooms VALUES (124, NULL, 4694, 0, 3, 1, 0, NULL, 4690, NULL, NULL, NULL, 0, NULL, '2022-05-06 15:29:24.068+10', '2022-05-06 15:29:24.068+10');
INSERT INTO public.user_rooms VALUES (125, NULL, 4694, 0, 3, 1, 0, NULL, 3430, NULL, NULL, NULL, 0, NULL, '2022-05-06 15:29:24.069+10', '2022-05-06 15:29:24.069+10');
INSERT INTO public.user_rooms VALUES (127, NULL, 4694, 0, 3, 1, 0, NULL, 4686, NULL, NULL, NULL, 0, NULL, '2022-05-06 15:29:24.069+10', '2022-05-06 15:29:24.069+10');
INSERT INTO public.user_rooms VALUES (128, NULL, 4694, 0, 3, 1, 0, NULL, 4687, NULL, NULL, NULL, 0, NULL, '2022-05-06 15:29:24.069+10', '2022-05-06 15:29:24.069+10');
INSERT INTO public.user_rooms VALUES (129, NULL, 4694, 0, 3, 1, 0, NULL, 4688, NULL, NULL, NULL, 0, NULL, '2022-05-06 15:29:24.07+10', '2022-05-06 15:29:24.07+10');
INSERT INTO public.user_rooms VALUES (130, NULL, 4694, 0, 3, 1, 0, NULL, 4689, NULL, NULL, NULL, 0, NULL, '2022-05-06 15:29:24.07+10', '2022-05-06 15:29:24.07+10');
INSERT INTO public.user_rooms VALUES (131, NULL, 4694, 0, 3, 1, 0, NULL, 3429, NULL, NULL, NULL, 0, NULL, '2022-05-06 15:29:24.07+10', '2022-05-06 15:29:24.07+10');
INSERT INTO public.user_rooms VALUES (132, NULL, 4694, 0, 3, 1, 0, NULL, 4691, NULL, NULL, NULL, 0, NULL, '2022-05-06 15:29:24.07+10', '2022-05-06 15:29:24.07+10');
INSERT INTO public.user_rooms VALUES (133, NULL, 4694, 0, 3, 1, 0, NULL, 4692, NULL, NULL, NULL, 0, NULL, '2022-05-06 15:29:24.07+10', '2022-05-06 15:29:24.07+10');
INSERT INTO public.user_rooms VALUES (135, NULL, 4694, 0, 3, 1, 0, NULL, 4693, NULL, NULL, NULL, 0, NULL, '2022-05-06 15:29:24.071+10', '2022-05-06 15:29:24.071+10');
INSERT INTO public.user_rooms VALUES (136, NULL, 4694, 0, 3, 1, 0, NULL, 4685, NULL, NULL, NULL, 0, NULL, '2022-05-06 15:29:24.071+10', '2022-05-06 15:29:24.071+10');
INSERT INTO public.user_rooms VALUES (137, NULL, 4694, 0, 3, 1, 0, NULL, 3453, NULL, NULL, NULL, 0, NULL, '2022-05-06 15:29:24.071+10', '2022-05-06 15:29:24.071+10');
INSERT INTO public.user_rooms VALUES (138, NULL, 4694, 0, 3, 1, 0, NULL, 2529, NULL, NULL, NULL, 0, NULL, '2022-05-06 15:29:24.071+10', '2022-05-06 15:29:24.071+10');
INSERT INTO public.user_rooms VALUES (155, NULL, 5137, 0, 3, 1, 0, NULL, 1, NULL, NULL, NULL, 0, NULL, '2022-05-12 16:58:42.238+10', '2022-05-12 16:58:42.238+10');
INSERT INTO public.user_rooms VALUES (156, NULL, 5137, 0, 3, 1, 0, NULL, 3429, NULL, NULL, NULL, 0, NULL, '2022-05-12 16:58:42.238+10', '2022-05-12 16:58:42.238+10');
INSERT INTO public.user_rooms VALUES (157, NULL, 5137, 0, 3, 1, 0, NULL, 4693, NULL, NULL, NULL, 0, NULL, '2022-05-12 16:58:42.239+10', '2022-05-12 16:58:42.239+10');
INSERT INTO public.user_rooms VALUES (158, NULL, 5137, 0, 3, 1, 0, NULL, 4688, NULL, NULL, NULL, 0, NULL, '2022-05-12 16:58:42.239+10', '2022-05-12 16:58:42.239+10');
INSERT INTO public.user_rooms VALUES (159, NULL, 5137, 0, 3, 1, 0, NULL, 3430, NULL, NULL, NULL, 0, NULL, '2022-05-12 16:58:42.238+10', '2022-05-12 16:58:42.238+10');
INSERT INTO public.user_rooms VALUES (160, NULL, 5137, 0, 3, 1, 0, NULL, 4692, NULL, NULL, NULL, 0, NULL, '2022-05-12 16:58:42.239+10', '2022-05-12 16:58:42.239+10');
INSERT INTO public.user_rooms VALUES (161, NULL, 5137, 0, 3, 1, 0, NULL, 4687, NULL, NULL, NULL, 0, NULL, '2022-05-12 16:58:42.24+10', '2022-05-12 16:58:42.24+10');
INSERT INTO public.user_rooms VALUES (162, NULL, 5137, 0, 3, 1, 0, NULL, 4685, NULL, NULL, NULL, 0, NULL, '2022-05-12 16:58:42.241+10', '2022-05-12 16:58:42.241+10');
INSERT INTO public.user_rooms VALUES (163, NULL, 5137, 0, 3, 1, 0, NULL, 4691, NULL, NULL, NULL, 0, NULL, '2022-05-12 16:58:42.241+10', '2022-05-12 16:58:42.241+10');
INSERT INTO public.user_rooms VALUES (164, NULL, 5137, 0, 3, 1, 0, NULL, 4686, NULL, NULL, NULL, 0, NULL, '2022-05-12 16:58:42.24+10', '2022-05-12 16:58:42.24+10');
INSERT INTO public.user_rooms VALUES (165, NULL, 5137, 0, 3, 1, 0, NULL, 3644, NULL, NULL, NULL, 0, NULL, '2022-05-12 16:58:42.242+10', '2022-05-12 16:58:42.242+10');
INSERT INTO public.user_rooms VALUES (166, NULL, 5137, 0, 3, 1, 0, NULL, 4690, NULL, NULL, NULL, 0, NULL, '2022-05-12 16:58:42.243+10', '2022-05-12 16:58:42.243+10');
INSERT INTO public.user_rooms VALUES (167, NULL, 5137, 0, 3, 1, 0, NULL, 2529, NULL, NULL, NULL, 0, NULL, '2022-05-12 16:58:42.243+10', '2022-05-12 16:58:42.243+10');
INSERT INTO public.user_rooms VALUES (168, NULL, 5137, 0, 3, 1, 0, NULL, 4694, NULL, NULL, NULL, 0, NULL, '2022-05-12 16:58:42.243+10', '2022-05-12 16:58:42.243+10');
INSERT INTO public.user_rooms VALUES (169, NULL, 5137, 0, 3, 1, 0, NULL, 4689, NULL, NULL, NULL, 0, NULL, '2022-05-12 16:58:42.244+10', '2022-05-12 16:58:42.244+10');
INSERT INTO public.user_rooms VALUES (170, NULL, 5137, 0, 3, 1, 0, NULL, 3453, NULL, NULL, NULL, 0, NULL, '2022-05-12 16:58:42.244+10', '2022-05-12 16:58:42.244+10');
INSERT INTO public.user_rooms VALUES (171, NULL, 5138, 0, 3, 1, 0, NULL, 1, NULL, NULL, NULL, 0, NULL, '2022-05-12 18:56:57.221+10', '2022-05-12 18:56:57.221+10');
INSERT INTO public.user_rooms VALUES (172, NULL, 5138, 0, 3, 1, 0, NULL, 3429, NULL, NULL, NULL, 0, NULL, '2022-05-12 18:56:57.222+10', '2022-05-12 18:56:57.222+10');
INSERT INTO public.user_rooms VALUES (173, NULL, 5138, 0, 3, 1, 0, NULL, 4693, NULL, NULL, NULL, 0, NULL, '2022-05-12 18:56:57.222+10', '2022-05-12 18:56:57.222+10');
INSERT INTO public.user_rooms VALUES (174, NULL, 5138, 0, 3, 1, 0, NULL, 4688, NULL, NULL, NULL, 0, NULL, '2022-05-12 18:56:57.222+10', '2022-05-12 18:56:57.222+10');
INSERT INTO public.user_rooms VALUES (175, NULL, 5138, 0, 3, 1, 0, NULL, 3430, NULL, NULL, NULL, 0, NULL, '2022-05-12 18:56:57.221+10', '2022-05-12 18:56:57.221+10');
INSERT INTO public.user_rooms VALUES (176, NULL, 5138, 0, 3, 1, 0, NULL, 5137, NULL, NULL, NULL, 0, NULL, '2022-05-12 18:56:57.223+10', '2022-05-12 18:56:57.223+10');
INSERT INTO public.user_rooms VALUES (177, NULL, 5138, 0, 3, 1, 0, NULL, 4692, NULL, NULL, NULL, 0, NULL, '2022-05-12 18:56:57.223+10', '2022-05-12 18:56:57.223+10');
INSERT INTO public.user_rooms VALUES (178, NULL, 5138, 0, 3, 1, 0, NULL, 4687, NULL, NULL, NULL, 0, NULL, '2022-05-12 18:56:57.223+10', '2022-05-12 18:56:57.223+10');
INSERT INTO public.user_rooms VALUES (179, NULL, 5138, 0, 3, 1, 0, NULL, 4686, NULL, NULL, NULL, 0, NULL, '2022-05-12 18:56:57.223+10', '2022-05-12 18:56:57.223+10');
INSERT INTO public.user_rooms VALUES (180, NULL, 5138, 0, 3, 1, 0, NULL, 4685, NULL, NULL, NULL, 0, NULL, '2022-05-12 18:56:57.224+10', '2022-05-12 18:56:57.224+10');
INSERT INTO public.user_rooms VALUES (181, NULL, 5138, 0, 3, 1, 0, NULL, 4691, NULL, NULL, NULL, 0, NULL, '2022-05-12 18:56:57.224+10', '2022-05-12 18:56:57.224+10');
INSERT INTO public.user_rooms VALUES (182, NULL, 5138, 0, 3, 1, 0, NULL, 3644, NULL, NULL, NULL, 0, NULL, '2022-05-12 18:56:57.224+10', '2022-05-12 18:56:57.224+10');
INSERT INTO public.user_rooms VALUES (183, NULL, 5138, 0, 3, 1, 0, NULL, 4690, NULL, NULL, NULL, 0, NULL, '2022-05-12 18:56:57.224+10', '2022-05-12 18:56:57.224+10');
INSERT INTO public.user_rooms VALUES (184, NULL, 5138, 0, 3, 1, 0, NULL, 2529, NULL, NULL, NULL, 0, NULL, '2022-05-12 18:56:57.225+10', '2022-05-12 18:56:57.225+10');
INSERT INTO public.user_rooms VALUES (185, NULL, 5138, 0, 3, 1, 0, NULL, 4694, NULL, NULL, NULL, 0, NULL, '2022-05-12 18:56:57.225+10', '2022-05-12 18:56:57.225+10');
INSERT INTO public.user_rooms VALUES (186, NULL, 5138, 0, 3, 1, 0, NULL, 4689, NULL, NULL, NULL, 0, NULL, '2022-05-12 18:56:57.225+10', '2022-05-12 18:56:57.225+10');
INSERT INTO public.user_rooms VALUES (187, NULL, 5138, 0, 3, 1, 0, NULL, 3453, NULL, NULL, NULL, 0, NULL, '2022-05-12 18:56:57.225+10', '2022-05-12 18:56:57.225+10');
INSERT INTO public.user_rooms VALUES (188, NULL, 5141, 0, 3, 1, 0, NULL, 1, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.111+10', '2022-05-13 09:52:03.111+10');
INSERT INTO public.user_rooms VALUES (189, NULL, 5141, 0, 3, 1, 0, NULL, 3430, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.111+10', '2022-05-13 09:52:03.111+10');
INSERT INTO public.user_rooms VALUES (190, NULL, 5141, 0, 3, 1, 0, NULL, 3429, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.111+10', '2022-05-13 09:52:03.111+10');
INSERT INTO public.user_rooms VALUES (191, NULL, 5141, 0, 3, 1, 0, NULL, 4688, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.112+10', '2022-05-13 09:52:03.112+10');
INSERT INTO public.user_rooms VALUES (192, NULL, 5141, 0, 3, 1, 0, NULL, 4693, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.112+10', '2022-05-13 09:52:03.112+10');
INSERT INTO public.user_rooms VALUES (193, NULL, 5141, 0, 3, 1, 0, NULL, 5137, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.112+10', '2022-05-13 09:52:03.112+10');
INSERT INTO public.user_rooms VALUES (194, NULL, 5141, 0, 3, 1, 0, NULL, 4692, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.112+10', '2022-05-13 09:52:03.112+10');
INSERT INTO public.user_rooms VALUES (195, NULL, 5141, 0, 3, 1, 0, NULL, 4687, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.113+10', '2022-05-13 09:52:03.113+10');
INSERT INTO public.user_rooms VALUES (196, NULL, 5141, 0, 3, 1, 0, NULL, 4686, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.113+10', '2022-05-13 09:52:03.113+10');
INSERT INTO public.user_rooms VALUES (197, NULL, 5141, 0, 3, 1, 0, NULL, 4685, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.113+10', '2022-05-13 09:52:03.113+10');
INSERT INTO public.user_rooms VALUES (198, NULL, 5141, 0, 3, 1, 0, NULL, 4691, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.114+10', '2022-05-13 09:52:03.114+10');
INSERT INTO public.user_rooms VALUES (199, NULL, 5141, 0, 3, 1, 0, NULL, 3644, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.115+10', '2022-05-13 09:52:03.115+10');
INSERT INTO public.user_rooms VALUES (200, NULL, 5141, 0, 3, 1, 0, NULL, 2529, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.115+10', '2022-05-13 09:52:03.115+10');
INSERT INTO public.user_rooms VALUES (201, NULL, 5141, 0, 3, 1, 0, NULL, 4690, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.115+10', '2022-05-13 09:52:03.115+10');
INSERT INTO public.user_rooms VALUES (202, NULL, 5141, 0, 3, 1, 0, NULL, 4694, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.115+10', '2022-05-13 09:52:03.115+10');
INSERT INTO public.user_rooms VALUES (203, NULL, 5141, 0, 3, 1, 0, NULL, 4689, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.116+10', '2022-05-13 09:52:03.116+10');
INSERT INTO public.user_rooms VALUES (204, NULL, 5141, 0, 3, 1, 0, NULL, 3453, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.116+10', '2022-05-13 09:52:03.116+10');
INSERT INTO public.user_rooms VALUES (205, NULL, 5141, 0, 3, 1, 0, NULL, 5138, NULL, NULL, NULL, 0, NULL, '2022-05-13 09:52:03.116+10', '2022-05-13 09:52:03.116+10');


--
-- TOC entry 4865 (class 0 OID 18399)
-- Dependencies: 325
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, NULL, NULL, 'Staging', NULL, 'Clinic', 'Staging Clinic', NULL, 'clinic.staging@yopmail.com', NULL, NULL, NULL, 3, NULL, NULL, NULL, 'Kolkata', NULL, 'Webel more', 'Sector 5, Netguru Building', NULL, NULL, NULL, '700010', NULL, NULL, '+91', '9876543210', NULL, NULL, 'DEtNXQpg3nDtZlKre9P8kbBi5zOsBO.png', NULL, 'www.localhost.com', NULL, 'www.facebook.com/my-page', 'www.twitter.com/my-page', 'www.instagram.com/my-page', true, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, NULL, '$2b$10$zI9Nzb5utdlg8TZJXlMuseydASQXL3kRp8HPYILH/DViXr7cOPOgW', NULL, NULL, NULL, NULL, NULL, 'N/A', false, NULL, false, false, NULL, '#3399ff', '#ffffff', 0, 1, '0101000000EA132F051AF76240093C8B3963C338C0', '-24.7632328', '151.7219263', NULL, false, 0, NULL, NULL, NULL, 1, 'active', 4, '2022-02-01 00:15:18.57+11', '2022-04-21 15:04:27.935+10', 'complete', NULL, NULL);
INSERT INTO public.users VALUES (3430, NULL, NULL, 'testsanjib', NULL, 'ff', 'testsanjib ff', NULL, 'sanjib@technoexponent.com', NULL, NULL, NULL, 3, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91', '8820116233', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2b$10$dPag2mK2CEgPR7d2Pj/03..Bc7tQvBRPh9MqhU5Bpconw3wf7Mzpq', NULL, 6, '', 'School', '"[1]"', '', true, 0, true, false, NULL, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'active', 2, '2022-04-21 19:31:30.707+10', '2022-04-21 19:31:30.715+10', 'complete', NULL, NULL);
INSERT INTO public.users VALUES (2, NULL, 'Mr.', 'Patient', '', 'Staging', 'Mr. Patient  Staging', NULL, 'patient.staging@yopmail.com', NULL, NULL, NULL, 3, '1997-12-12 00:00:00.0', 'M', 'India', NULL, 'Kolkata', 'Webel more', '', '', NULL, 'Netguru Building', '700010', '', '', '+91', '9876543210', NULL, NULL, NULL, NULL, 'www.localhost.com', NULL, 'www.facebook.com/my-page', 'www.twitter.com/my-page', 'www.instagram.com/my-page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', '$2b$10$/3iQ4cdGqW6tsFWeyzi8.ekQ9IqhdN1frGK0koahLIqEh0VM490SC', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, false, false, NULL, '#3399ff', '#ffffff', 0, 1, '0101000000EA132F051AF76240093C8B3963C338C0', '-24.7632328', '151.7219263', NULL, false, 0, NULL, NULL, NULL, 1, 'active', 3, '2022-02-01 00:37:12.893+11', '2022-05-11 20:07:19.91+10', 'complete', NULL, NULL);
INSERT INTO public.users VALUES (3429, NULL, NULL, 'testsanjib', NULL, 'ff', 'testsanjib ff', NULL, 'sanjib@technoexponent.com', NULL, NULL, NULL, 3, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91', '8820116233', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2b$10$yA08zDEo7T2jlz0PTm2At.wJKiDyCwB7GF/YeBPINe/HzUSPtbBHe', NULL, 6, '', 'School', '"[1]"', '', true, 0, true, false, NULL, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'active', 2, '2022-04-21 19:28:26.336+10', '2022-04-21 19:28:26.342+10', 'complete', NULL, NULL);
INSERT INTO public.users VALUES (4688, NULL, NULL, 'dasd', NULL, 'sdas', 'dasd sdas', NULL, 'sa1n@yopmail.com', NULL, NULL, NULL, 3, NULL, 'M', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+91', '8820117645', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '123456', NULL, 6, '', 'School', '"[6]"', 'test', true, 0, true, false, NULL, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'active', 2, '2022-05-05 16:03:06.943+10', '2022-05-11 18:01:41.431+10', 'complete', 'IN', NULL);
INSERT INTO public.users VALUES (4693, NULL, NULL, 'saa', NULL, 'ddd', 'saa ddd', NULL, 'sanjib3@technoexponent.com', NULL, NULL, NULL, 3, NULL, 'F', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+91', '8820116238', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2b$10$ex3X7VvOF6tcLpjKPIhFuOoGLNY9H1H4g0AOOzblz/QxgmMDsiK9e', NULL, 6, '', 'Univ. of Applied Science', '"[6]"', 'test', true, 0, true, false, NULL, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'active', 2, '2022-05-05 18:51:50.788+10', '2022-05-05 18:51:50.795+10', 'complete', 'IN', NULL);
INSERT INTO public.users VALUES (5137, NULL, NULL, 'doc', NULL, 'one', 'doc one', NULL, 'doc1@yopmail.com', NULL, NULL, NULL, 3, NULL, 'M', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+91', '8820116233', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2b$10$V2EFcIGhXIYIKCQgJGtKsuzoVVevrxorywMtmly0V6qgrCxAOK8Ju', NULL, 6, '', 'Univ. of Applied Science', '"[4,6]"', 'test', true, 0, true, false, 1996, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'active', 2, '2022-05-12 16:58:42.172+10', '2022-05-12 17:05:52.386+10', 'complete', 'IN', '"[85,3]"');
INSERT INTO public.users VALUES (4692, NULL, NULL, 'one', NULL, 'dfsfaf', 'ss dfsfaf', NULL, 'sa@technoexponent.com', NULL, NULL, NULL, 3, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+91', '8820116542', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2b$10$MEGpNCbz/nlFXIx1L0fb0eCWG8ZOipjSVd.gaWdTNn9JtAfYNu0jy', NULL, 4, '', 'sdfsdf', '"[6]"', 'sfasdf', true, 0, true, false, NULL, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'active', 2, '2022-05-05 18:39:00.172+10', '2022-05-05 18:39:00.178+10', 'complete', 'IN', NULL);
INSERT INTO public.users VALUES (4687, NULL, NULL, 'dasd', NULL, 'sda', 'dasd sda', NULL, 'san@yopmail.com', NULL, NULL, NULL, 3, NULL, 'M', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91', '8820117644', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2b$10$Zui/j.5xXsXOt1506dHIDO/fboYwHvsTK22UOYGYUcPwwtvY.0uRq', NULL, 6, '', 'School', '"[6]"', 'test', true, 0, true, false, NULL, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'active', 2, '2022-05-05 15:54:57.33+10', '2022-05-05 15:54:57.344+10', 'complete', 'IN', NULL);
INSERT INTO public.users VALUES (4686, NULL, NULL, 'sanjib2', NULL, 'mondal', 'sanjib2 mondal', NULL, 'sanjib@technoeonent.com', NULL, NULL, NULL, 3, NULL, 'M', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91', '8826771558', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2b$10$ojQeHMAh5k3KGiwtvKVWOeVnIo3tvRq9Q7dqHqc0wVW2nYBMOmalK', NULL, 6, '', 'Univ. of Applied Science', '"[4,1,6]"', 'test', true, 0, true, false, NULL, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'active', 2, '2022-05-04 22:00:24.519+10', '2022-05-04 22:00:24.535+10', 'complete', 'IN', NULL);
INSERT INTO public.users VALUES (4685, NULL, NULL, 'sanjib', NULL, 'mondal', 'sanjib mondal', NULL, 'sanjib@tecshnoexponent.com', NULL, NULL, NULL, 3, NULL, 'M', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61', '0400191920', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '123456', NULL, 3, '', 'School', '"[2,4]"', 'test', true, 0, true, false, NULL, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'active', 2, '2022-05-04 21:57:27.333+10', '2022-05-05 19:05:50.495+10', 'complete', 'AU', NULL);
INSERT INTO public.users VALUES (4691, NULL, NULL, 'one', NULL, 'dfsfaf', 'ss dfsfaf', NULL, 'sa@technoexponent.com', NULL, NULL, NULL, 3, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+91', '8820116542', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2b$10$hQEHnaBIyv2SypIiQUEqFeAJDt370edIdKWJPjH3y/3FvH2nRhfCa', NULL, 4, '', 'sdfsdf', '"[6]"', 'sfasdf', true, 0, true, false, NULL, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'active', 2, '2022-05-05 18:38:56.379+10', '2022-05-05 18:38:56.386+10', 'complete', 'IN', NULL);
INSERT INTO public.users VALUES (3644, NULL, NULL, 'ss', NULL, 'dfsfaf', 'ss dfsfaf', NULL, 'sa@technoexponent.com', NULL, NULL, NULL, 3, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+91', '8820116542', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '123456', NULL, 4, '', 'sdfsdf', '"[6]"', 'sfasdf', true, 0, true, false, NULL, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'active', 2, '2022-04-22 17:50:24.173+10', '2022-05-10 15:24:47.244+10', 'complete', 'IN', NULL);
INSERT INTO public.users VALUES (4690, NULL, NULL, 'one', NULL, 'dfsfaf', 'ss dfsfaf', NULL, 'sa@technoexponent.com', NULL, NULL, NULL, 3, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+91', '8820116542', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2b$10$BN9qydo.BvZ3pHz2eaENf.TF2tp10em5.a58sChM1rxh0M0h6bP4W', NULL, 4, '', 'sdfsdf', '"[6]"', 'sfasdf', true, 0, true, false, NULL, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'active', 2, '2022-05-05 18:33:07.827+10', '2022-05-05 18:33:07.836+10', 'complete', 'IN', NULL);
INSERT INTO public.users VALUES (5141, NULL, NULL, 'doc3', NULL, 'three', 'doc3 three', NULL, 'doc3@yopmail.com', NULL, NULL, NULL, 3, NULL, 'M', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+358', '088014632', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2b$10$kbK12BL4Ure1zsTSN43iaeouUycm1gTks0t.Z4O9kSQh3Kf2IjwCK', NULL, 6, '', 'School', '"[6]"', 'test', true, 0, true, false, NULL, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'active', 2, '2022-05-13 09:52:03.064+10', '2022-05-13 09:52:03.076+10', 'complete', 'FI', '"[4]"');
INSERT INTO public.users VALUES (2529, NULL, NULL, NULL, NULL, NULL, 'clinic not delete', NULL, 'practice1.5@yopmail.com', NULL, NULL, NULL, 3, NULL, NULL, NULL, 'Victoria', NULL, 't070/250 Heaths Rd', 'Werribee', NULL, NULL, NULL, '3030', NULL, NULL, '+91', '8820116233', NULL, NULL, NULL, NULL, 'http://google.com', '["Australian Council on Healthcare Standards"]', 'http://google.com', 'http://google.com', 'http://google.com', false, 'We do telehealth only', '["Pharmacy Nearby","Onsite Radiology"]', NULL, NULL, NULL, NULL, 'tis is parking', '', 0, NULL, '$2b$10$yXVpIhbWwLPCV142OU43Z.Gfu0TS5YGxe1MkbXtIR.7JCp3KCmulG', NULL, NULL, NULL, NULL, NULL, 'this is text', false, NULL, false, false, NULL, '#3399ff', '#ffffff', 0, 1, '0101000000A7CCCD37A21562404FADBEBA2AF042C0', '-37.876304', '144.676052', 'acct_1Kq942Q2sWZ6LXJd', false, 0, NULL, NULL, NULL, 1, 'active', 4, '2022-04-19 14:51:04.989+10', '2022-04-19 14:55:51.578+10', 'complete', NULL, NULL);
INSERT INTO public.users VALUES (4694, NULL, NULL, 'sanjib', NULL, 'mondal', 'sanjib mondal', NULL, 'sanjib1@yopmail.com', NULL, NULL, NULL, 3, NULL, 'M', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+91', '8820117622', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '123456', NULL, 3, '', 'School', '"[1,4]"', 'test', true, 0, true, false, NULL, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'active', 2, '2022-05-06 15:29:24.014+10', '2022-05-11 18:03:47.9+10', 'complete', 'IN', NULL);
INSERT INTO public.users VALUES (4689, NULL, NULL, 'one', NULL, 'dfsfaf', 'ss dfsfaf', NULL, 'sa@technoexponent.com', NULL, NULL, NULL, 3, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+91', '8820116542', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2b$10$EBdEjMKPMK7n4rOH2eOrLO2JDVQB5Wy8h7NPlGWAh6oTZKAl5JGBa', NULL, 4, '', 'sdfsdf', '"[6]"', 'sfasdf', true, 0, true, false, NULL, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'active', 2, '2022-05-05 18:32:37.645+10', '2022-05-05 18:32:37.658+10', 'complete', 'IN', NULL);
INSERT INTO public.users VALUES (3453, NULL, NULL, 'one', NULL, 'dfsfaf', 'ss dfsfaf', NULL, 'sa@technoexponent.com', NULL, NULL, NULL, 3, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+91', '8820116542', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '123456', NULL, 4, '', 'sdfsdf', '"[6]"', 'sfasdf', true, 0, true, false, NULL, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'active', 2, '2022-04-21 19:55:43.26+10', '2022-05-11 18:02:46.404+10', 'complete', 'IN', NULL);
INSERT INTO public.users VALUES (5138, NULL, NULL, 'docname', NULL, 'two', 'doc two', NULL, 'doc2@yopmail.com', NULL, NULL, NULL, 3, NULL, 'F', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+91', '8820116234', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2b$10$lkKLOCS.iILzZpVLwuEZTu8pBRXPA7uLQmK2a4nx4sDEcn3uWY5vy', NULL, 5, '', 'School', '"[4,1]"', '', true, 0, true, false, 1994, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'active', 2, '2022-05-12 18:56:57.168+10', '2022-05-13 09:49:01.298+10', 'complete', 'IN', '"[4]"');
INSERT INTO public.users VALUES (5156, NULL, 'Mr', 'SS', '', '', 'Mr SS  ', NULL, '', NULL, NULL, NULL, 3, '01/01/1990', 'F', NULL, NULL, 'Kolkata', 'street1', 'street2', 'Sreet3', NULL, NULL, '', 'phnHome', 'phnWork', NULL, 'phnMobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2b$10$tIjfAMbVqKQ1a8C6hrluTeBSF792nbnyv7a9L3xQzS1SCD7gK91em', NULL, NULL, NULL, NULL, NULL, NULL, false, NULL, false, false, NULL, '#3399ff', '#ffffff', 0, 1, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, NULL, 1, 'patient-sync', 3, '2022-05-13 17:05:14.971+10', '2022-05-13 22:55:11.443+10', 'complete', NULL, NULL);


--
-- TOC entry 4867 (class 0 OID 18421)
-- Dependencies: 327
-- Data for Name: video_call_logs; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4869 (class 0 OID 18428)
-- Dependencies: 329
-- Data for Name: waiting_music_by_users; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4871 (class 0 OID 18432)
-- Dependencies: 331
-- Data for Name: waiting_music_types; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4938 (class 0 OID 0)
-- Dependencies: 216
-- Name: DumpData_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."DumpData_id_seq"', 1, false);


--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 219
-- Name: app_practitioners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.app_practitioners_id_seq', 4072, true);


--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 221
-- Name: appointments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.appointments_id_seq', 989, true);


--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 223
-- Name: appt_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.appt_types_id_seq', 1, false);


--
-- TOC entry 4942 (class 0 OID 0)
-- Dependencies: 225
-- Name: area_of_interests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.area_of_interests_id_seq', 67, true);


--
-- TOC entry 4943 (class 0 OID 0)
-- Dependencies: 227
-- Name: audio_call_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.audio_call_logs_id_seq', 1, false);


--
-- TOC entry 4944 (class 0 OID 0)
-- Dependencies: 229
-- Name: audio_call_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.audio_call_statuses_id_seq', 1, false);


--
-- TOC entry 4945 (class 0 OID 0)
-- Dependencies: 231
-- Name: awaiting_queue_voices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.awaiting_queue_voices_id_seq', 1, false);


--
-- TOC entry 4946 (class 0 OID 0)
-- Dependencies: 233
-- Name: awaiting_queues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.awaiting_queues_id_seq', 1, false);


--
-- TOC entry 4947 (class 0 OID 0)
-- Dependencies: 235
-- Name: booking_slots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.booking_slots_id_seq', 3, true);


--
-- TOC entry 4948 (class 0 OID 0)
-- Dependencies: 237
-- Name: chat_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.chat_users_id_seq', 1, false);


--
-- TOC entry 4949 (class 0 OID 0)
-- Dependencies: 239
-- Name: clinic_infos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.clinic_infos_id_seq', 33, true);


--
-- TOC entry 4950 (class 0 OID 0)
-- Dependencies: 241
-- Name: clinic_invitations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.clinic_invitations_id_seq', 1, false);


--
-- TOC entry 4951 (class 0 OID 0)
-- Dependencies: 243
-- Name: clinic_invite_doctors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.clinic_invite_doctors_id_seq', 16, true);


--
-- TOC entry 4952 (class 0 OID 0)
-- Dependencies: 245
-- Name: clinic_timings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.clinic_timings_id_seq', 1, false);


--
-- TOC entry 4953 (class 0 OID 0)
-- Dependencies: 247
-- Name: clinic_user_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.clinic_user_types_id_seq', 1, false);


--
-- TOC entry 4954 (class 0 OID 0)
-- Dependencies: 249
-- Name: dump_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.dump_data_id_seq', 1, false);


--
-- TOC entry 4955 (class 0 OID 0)
-- Dependencies: 251
-- Name: email_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.email_templates_id_seq', 1, false);


--
-- TOC entry 4956 (class 0 OID 0)
-- Dependencies: 253
-- Name: facilities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.facilities_id_seq', 8, true);


--
-- TOC entry 4957 (class 0 OID 0)
-- Dependencies: 255
-- Name: favourite_contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.favourite_contacts_id_seq', 1, false);


--
-- TOC entry 4958 (class 0 OID 0)
-- Dependencies: 257
-- Name: favourite_rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.favourite_rooms_id_seq', 1, false);


--
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 259
-- Name: favourites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.favourites_id_seq', 1, false);


--
-- TOC entry 4960 (class 0 OID 0)
-- Dependencies: 261
-- Name: forgot_passwords_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.forgot_passwords_id_seq', 1, false);


--
-- TOC entry 4961 (class 0 OID 0)
-- Dependencies: 263
-- Name: hide_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.hide_sessions_id_seq', 1, false);


--
-- TOC entry 4962 (class 0 OID 0)
-- Dependencies: 265
-- Name: invitations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.invitations_id_seq', 1, false);


--
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 267
-- Name: languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.languages_id_seq', 135, true);


--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 269
-- Name: login_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.login_histories_id_seq', 16, true);


--
-- TOC entry 4965 (class 0 OID 0)
-- Dependencies: 271
-- Name: message_viewers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.message_viewers_id_seq', 1, false);


--
-- TOC entry 4966 (class 0 OID 0)
-- Dependencies: 273
-- Name: message_viewers_temps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.message_viewers_temps_id_seq', 1, false);


--
-- TOC entry 4967 (class 0 OID 0)
-- Dependencies: 275
-- Name: music_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.music_lists_id_seq', 1, false);


--
-- TOC entry 4968 (class 0 OID 0)
-- Dependencies: 277
-- Name: notification_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.notification_settings_id_seq', 1, false);


--
-- TOC entry 4969 (class 0 OID 0)
-- Dependencies: 279
-- Name: notification_sounds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.notification_sounds_id_seq', 1, false);


--
-- TOC entry 4970 (class 0 OID 0)
-- Dependencies: 281
-- Name: notification_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.notification_types_id_seq', 8, true);


--
-- TOC entry 4971 (class 0 OID 0)
-- Dependencies: 283
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.notifications_id_seq', 1287, true);


--
-- TOC entry 4972 (class 0 OID 0)
-- Dependencies: 285
-- Name: patient_alerts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.patient_alerts_id_seq', 1, false);


--
-- TOC entry 4973 (class 0 OID 0)
-- Dependencies: 287
-- Name: patient_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.patient_details_id_seq', 540, true);


--
-- TOC entry 4974 (class 0 OID 0)
-- Dependencies: 289
-- Name: practitioner_appointment_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.practitioner_appointment_types_id_seq', 1, false);


--
-- TOC entry 4975 (class 0 OID 0)
-- Dependencies: 291
-- Name: practitioners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.practitioners_id_seq', 1, false);


--
-- TOC entry 4976 (class 0 OID 0)
-- Dependencies: 293
-- Name: professions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.professions_id_seq', 1, false);


--
-- TOC entry 4977 (class 0 OID 0)
-- Dependencies: 295
-- Name: qualifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.qualifications_id_seq', 6, true);


--
-- TOC entry 4978 (class 0 OID 0)
-- Dependencies: 297
-- Name: reminders_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.reminders_settings_id_seq', 1, true);


--
-- TOC entry 4979 (class 0 OID 0)
-- Dependencies: 299
-- Name: room_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.room_users_id_seq', 410, true);


--
-- TOC entry 4980 (class 0 OID 0)
-- Dependencies: 301
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sessions_id_seq', 2458, true);


--
-- TOC entry 4981 (class 0 OID 0)
-- Dependencies: 303
-- Name: support_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.support_users_id_seq', 1, false);


--
-- TOC entry 4982 (class 0 OID 0)
-- Dependencies: 305
-- Name: system_infos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.system_infos_id_seq', 1, true);


--
-- TOC entry 4983 (class 0 OID 0)
-- Dependencies: 307
-- Name: temp_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.temp_sessions_id_seq', 1, false);


--
-- TOC entry 4984 (class 0 OID 0)
-- Dependencies: 309
-- Name: transaction_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.transaction_logs_id_seq', 1, false);


--
-- TOC entry 4985 (class 0 OID 0)
-- Dependencies: 311
-- Name: user_address_changes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.user_address_changes_id_seq', 1, false);


--
-- TOC entry 4986 (class 0 OID 0)
-- Dependencies: 313
-- Name: user_conversation_temps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.user_conversation_temps_id_seq', 1, false);


--
-- TOC entry 4987 (class 0 OID 0)
-- Dependencies: 315
-- Name: user_conversations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.user_conversations_id_seq', 1, false);


--
-- TOC entry 4988 (class 0 OID 0)
-- Dependencies: 317
-- Name: user_faxes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.user_faxes_id_seq', 1, false);


--
-- TOC entry 4989 (class 0 OID 0)
-- Dependencies: 319
-- Name: user_fcm_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.user_fcm_tokens_id_seq', 1, false);


--
-- TOC entry 4990 (class 0 OID 0)
-- Dependencies: 321
-- Name: user_notification_sounds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.user_notification_sounds_id_seq', 1, false);


--
-- TOC entry 4991 (class 0 OID 0)
-- Dependencies: 324
-- Name: user_rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.user_rooms_id_seq', 205, true);


--
-- TOC entry 4992 (class 0 OID 0)
-- Dependencies: 326
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 5156, true);


--
-- TOC entry 4993 (class 0 OID 0)
-- Dependencies: 328
-- Name: video_call_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.video_call_logs_id_seq', 1, false);


--
-- TOC entry 4994 (class 0 OID 0)
-- Dependencies: 330
-- Name: waiting_music_by_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.waiting_music_by_users_id_seq', 1, false);


--
-- TOC entry 4995 (class 0 OID 0)
-- Dependencies: 332
-- Name: waiting_music_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.waiting_music_types_id_seq', 1, false);


--
-- TOC entry 4492 (class 2606 OID 18495)
-- Name: DumpData DumpData_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."DumpData"
    ADD CONSTRAINT "DumpData_pkey" PRIMARY KEY (id);


--
-- TOC entry 4494 (class 2606 OID 18497)
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- TOC entry 4496 (class 2606 OID 18499)
-- Name: app_practitioners app_practitioners_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.app_practitioners
    ADD CONSTRAINT app_practitioners_pkey PRIMARY KEY (id);


--
-- TOC entry 4498 (class 2606 OID 18501)
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (id);


--
-- TOC entry 4500 (class 2606 OID 18503)
-- Name: appt_types appt_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appt_types
    ADD CONSTRAINT appt_types_pkey PRIMARY KEY (id);


--
-- TOC entry 4502 (class 2606 OID 18505)
-- Name: area_of_interests area_of_interests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.area_of_interests
    ADD CONSTRAINT area_of_interests_pkey PRIMARY KEY (id);


--
-- TOC entry 4504 (class 2606 OID 18507)
-- Name: audio_call_logs audio_call_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.audio_call_logs
    ADD CONSTRAINT audio_call_logs_pkey PRIMARY KEY (id);


--
-- TOC entry 4506 (class 2606 OID 18509)
-- Name: audio_call_statuses audio_call_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.audio_call_statuses
    ADD CONSTRAINT audio_call_statuses_pkey PRIMARY KEY (id);


--
-- TOC entry 4508 (class 2606 OID 18511)
-- Name: awaiting_queue_voices awaiting_queue_voices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.awaiting_queue_voices
    ADD CONSTRAINT awaiting_queue_voices_pkey PRIMARY KEY (id);


--
-- TOC entry 4510 (class 2606 OID 18513)
-- Name: awaiting_queues awaiting_queues_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.awaiting_queues
    ADD CONSTRAINT awaiting_queues_pkey PRIMARY KEY (id);


--
-- TOC entry 4512 (class 2606 OID 18515)
-- Name: booking_slots booking_slots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.booking_slots
    ADD CONSTRAINT booking_slots_pkey PRIMARY KEY (id);


--
-- TOC entry 4514 (class 2606 OID 18517)
-- Name: chat_users chat_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chat_users
    ADD CONSTRAINT chat_users_pkey PRIMARY KEY (id);


--
-- TOC entry 4516 (class 2606 OID 18519)
-- Name: clinic_infos clinic_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinic_infos
    ADD CONSTRAINT clinic_infos_pkey PRIMARY KEY (id);


--
-- TOC entry 4518 (class 2606 OID 18521)
-- Name: clinic_invitations clinic_invitations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinic_invitations
    ADD CONSTRAINT clinic_invitations_pkey PRIMARY KEY (id);


--
-- TOC entry 4520 (class 2606 OID 18523)
-- Name: clinic_invite_doctors clinic_invite_doctors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinic_invite_doctors
    ADD CONSTRAINT clinic_invite_doctors_pkey PRIMARY KEY (id);


--
-- TOC entry 4522 (class 2606 OID 18525)
-- Name: clinic_timings clinic_timings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinic_timings
    ADD CONSTRAINT clinic_timings_pkey PRIMARY KEY (id);


--
-- TOC entry 4524 (class 2606 OID 18527)
-- Name: clinic_user_types clinic_user_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinic_user_types
    ADD CONSTRAINT clinic_user_types_pkey PRIMARY KEY (id);


--
-- TOC entry 4526 (class 2606 OID 18529)
-- Name: dump_data dump_data_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dump_data
    ADD CONSTRAINT dump_data_pkey PRIMARY KEY (id);


--
-- TOC entry 4528 (class 2606 OID 18531)
-- Name: email_templates email_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_pkey PRIMARY KEY (id);


--
-- TOC entry 4530 (class 2606 OID 18533)
-- Name: facilities facilities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.facilities
    ADD CONSTRAINT facilities_pkey PRIMARY KEY (id);


--
-- TOC entry 4532 (class 2606 OID 18535)
-- Name: favourite_contacts favourite_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favourite_contacts
    ADD CONSTRAINT favourite_contacts_pkey PRIMARY KEY (id);


--
-- TOC entry 4534 (class 2606 OID 18537)
-- Name: favourite_rooms favourite_rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favourite_rooms
    ADD CONSTRAINT favourite_rooms_pkey PRIMARY KEY (id);


--
-- TOC entry 4536 (class 2606 OID 18541)
-- Name: favourites favourites_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favourites
    ADD CONSTRAINT favourites_pkey PRIMARY KEY (id);


--
-- TOC entry 4538 (class 2606 OID 18543)
-- Name: forgot_passwords forgot_passwords_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forgot_passwords
    ADD CONSTRAINT forgot_passwords_pkey PRIMARY KEY (id);


--
-- TOC entry 4540 (class 2606 OID 18545)
-- Name: hide_sessions hide_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hide_sessions
    ADD CONSTRAINT hide_sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 4542 (class 2606 OID 18547)
-- Name: invitations invitations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.invitations
    ADD CONSTRAINT invitations_pkey PRIMARY KEY (id);


--
-- TOC entry 4544 (class 2606 OID 18549)
-- Name: languages languages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (id);


--
-- TOC entry 4546 (class 2606 OID 18551)
-- Name: login_histories login_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.login_histories
    ADD CONSTRAINT login_histories_pkey PRIMARY KEY (id);


--
-- TOC entry 4549 (class 2606 OID 18553)
-- Name: message_viewers message_viewers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.message_viewers
    ADD CONSTRAINT message_viewers_pkey PRIMARY KEY (id);


--
-- TOC entry 4551 (class 2606 OID 18555)
-- Name: message_viewers_temps message_viewers_temps_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.message_viewers_temps
    ADD CONSTRAINT message_viewers_temps_pkey PRIMARY KEY (id);


--
-- TOC entry 4553 (class 2606 OID 18557)
-- Name: music_lists music_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.music_lists
    ADD CONSTRAINT music_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4555 (class 2606 OID 18559)
-- Name: notification_settings notification_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_settings
    ADD CONSTRAINT notification_settings_pkey PRIMARY KEY (id);


--
-- TOC entry 4557 (class 2606 OID 18561)
-- Name: notification_sounds notification_sounds_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_sounds
    ADD CONSTRAINT notification_sounds_pkey PRIMARY KEY (id);


--
-- TOC entry 4559 (class 2606 OID 18564)
-- Name: notification_types notification_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_types
    ADD CONSTRAINT notification_types_pkey PRIMARY KEY (id);


--
-- TOC entry 4561 (class 2606 OID 18566)
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- TOC entry 4563 (class 2606 OID 18568)
-- Name: patient_alerts patient_alerts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_alerts
    ADD CONSTRAINT patient_alerts_pkey PRIMARY KEY (id);


--
-- TOC entry 4565 (class 2606 OID 18570)
-- Name: patient_details patient_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_details
    ADD CONSTRAINT patient_details_pkey PRIMARY KEY (id);


--
-- TOC entry 4567 (class 2606 OID 18572)
-- Name: practitioner_appointment_types practitioner_appointment_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.practitioner_appointment_types
    ADD CONSTRAINT practitioner_appointment_types_pkey PRIMARY KEY (id);


--
-- TOC entry 4569 (class 2606 OID 18574)
-- Name: practitioners practitioners_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.practitioners
    ADD CONSTRAINT practitioners_pkey PRIMARY KEY (id);


--
-- TOC entry 4571 (class 2606 OID 18576)
-- Name: professions professions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professions
    ADD CONSTRAINT professions_pkey PRIMARY KEY (id);


--
-- TOC entry 4573 (class 2606 OID 18583)
-- Name: qualifications qualifications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.qualifications
    ADD CONSTRAINT qualifications_pkey PRIMARY KEY (id);


--
-- TOC entry 4575 (class 2606 OID 18585)
-- Name: reminders_settings reminders_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reminders_settings
    ADD CONSTRAINT reminders_settings_pkey PRIMARY KEY (id);


--
-- TOC entry 4577 (class 2606 OID 18587)
-- Name: room_users room_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.room_users
    ADD CONSTRAINT room_users_pkey PRIMARY KEY (id);


--
-- TOC entry 4579 (class 2606 OID 18589)
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 4581 (class 2606 OID 18591)
-- Name: support_users support_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.support_users
    ADD CONSTRAINT support_users_pkey PRIMARY KEY (id);


--
-- TOC entry 4583 (class 2606 OID 18593)
-- Name: system_infos system_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.system_infos
    ADD CONSTRAINT system_infos_pkey PRIMARY KEY (id);


--
-- TOC entry 4585 (class 2606 OID 18595)
-- Name: temp_sessions temp_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.temp_sessions
    ADD CONSTRAINT temp_sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 4587 (class 2606 OID 18597)
-- Name: transaction_logs transaction_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transaction_logs
    ADD CONSTRAINT transaction_logs_pkey PRIMARY KEY (id);


--
-- TOC entry 4589 (class 2606 OID 18599)
-- Name: user_address_changes user_address_changes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_address_changes
    ADD CONSTRAINT user_address_changes_pkey PRIMARY KEY (id);


--
-- TOC entry 4591 (class 2606 OID 18601)
-- Name: user_conversation_temps user_conversation_temps_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_conversation_temps
    ADD CONSTRAINT user_conversation_temps_pkey PRIMARY KEY (id);


--
-- TOC entry 4593 (class 2606 OID 18603)
-- Name: user_conversations user_conversations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_conversations
    ADD CONSTRAINT user_conversations_pkey PRIMARY KEY (id);


--
-- TOC entry 4595 (class 2606 OID 18605)
-- Name: user_faxes user_faxes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_faxes
    ADD CONSTRAINT user_faxes_pkey PRIMARY KEY (id);


--
-- TOC entry 4597 (class 2606 OID 18607)
-- Name: user_fcm_tokens user_fcm_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_fcm_tokens
    ADD CONSTRAINT user_fcm_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 4599 (class 2606 OID 18609)
-- Name: user_notification_sounds user_notification_sounds_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_notification_sounds
    ADD CONSTRAINT user_notification_sounds_pkey PRIMARY KEY (id);


--
-- TOC entry 4601 (class 2606 OID 18611)
-- Name: user_rooms user_rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_rooms
    ADD CONSTRAINT user_rooms_pkey PRIMARY KEY (id);


--
-- TOC entry 4603 (class 2606 OID 18613)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4605 (class 2606 OID 18615)
-- Name: video_call_logs video_call_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.video_call_logs
    ADD CONSTRAINT video_call_logs_pkey PRIMARY KEY (id);


--
-- TOC entry 4607 (class 2606 OID 18617)
-- Name: waiting_music_by_users waiting_music_by_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.waiting_music_by_users
    ADD CONSTRAINT waiting_music_by_users_pkey PRIMARY KEY (id);


--
-- TOC entry 4609 (class 2606 OID 18619)
-- Name: waiting_music_types waiting_music_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.waiting_music_types
    ADD CONSTRAINT waiting_music_types_pkey PRIMARY KEY (id);


--
-- TOC entry 4547 (class 1259 OID 18620)
-- Name: message_viewers_message_id_room_id_viewer_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX message_viewers_message_id_room_id_viewer_id ON public.message_viewers USING btree (message_id, room_id, viewer_id);


--
-- TOC entry 4610 (class 2606 OID 18621)
-- Name: message_viewers message_viewers_viewer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.message_viewers
    ADD CONSTRAINT message_viewers_viewer_id_fkey FOREIGN KEY (viewer_id) REFERENCES public.users(id) ON UPDATE CASCADE;


-- Completed on 2022-05-31 00:28:52

--
-- PostgreSQL database dump complete
--

