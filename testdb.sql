--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.19
-- Dumped by pg_dump version 9.5.19

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: c_s_app_camera; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.c_s_app_camera (
    id integer NOT NULL,
    cam_id character varying(64) NOT NULL,
    name character varying(64) NOT NULL,
    address character varying(128) NOT NULL
);


ALTER TABLE public.c_s_app_camera OWNER TO postgres;

--
-- Name: c_s_app_camera_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.c_s_app_camera_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.c_s_app_camera_id_seq OWNER TO postgres;

--
-- Name: c_s_app_camera_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.c_s_app_camera_id_seq OWNED BY public.c_s_app_camera.id;


--
-- Name: c_s_app_request; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.c_s_app_request (
    id integer NOT NULL,
    start timestamp with time zone NOT NULL,
    finish timestamp with time zone NOT NULL,
    request_time timestamp with time zone NOT NULL
);


ALTER TABLE public.c_s_app_request OWNER TO postgres;

--
-- Name: c_s_app_request_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.c_s_app_request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.c_s_app_request_id_seq OWNER TO postgres;

--
-- Name: c_s_app_request_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.c_s_app_request_id_seq OWNED BY public.c_s_app_request.id;


--
-- Name: c_s_app_requestcameraurl; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.c_s_app_requestcameraurl (
    id integer NOT NULL,
    url character varying(256),
    camera_id integer NOT NULL,
    request_id integer NOT NULL
);


ALTER TABLE public.c_s_app_requestcameraurl OWNER TO postgres;

--
-- Name: c_s_app_requestcameraurl_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.c_s_app_requestcameraurl_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.c_s_app_requestcameraurl_id_seq OWNER TO postgres;

--
-- Name: c_s_app_requestcameraurl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.c_s_app_requestcameraurl_id_seq OWNED BY public.c_s_app_requestcameraurl.id;


--
-- Name: c_s_app_resultdeepstream; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.c_s_app_resultdeepstream (
    id integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    car_number character varying(16) NOT NULL,
    car_brand character varying(32) NOT NULL,
    car_color character varying(32) NOT NULL,
    probability integer NOT NULL,
    car_photo character varying(100) NOT NULL,
    camera_id integer NOT NULL,
    request_id integer NOT NULL
);


ALTER TABLE public.c_s_app_resultdeepstream OWNER TO postgres;

--
-- Name: c_s_app_resultdeepstream_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.c_s_app_resultdeepstream_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.c_s_app_resultdeepstream_id_seq OWNER TO postgres;

--
-- Name: c_s_app_resultdeepstream_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.c_s_app_resultdeepstream_id_seq OWNED BY public.c_s_app_resultdeepstream.id;


--
-- Name: cache_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cache_table (
    cache_key character varying(255) NOT NULL,
    value text NOT NULL,
    expires timestamp with time zone NOT NULL
);


ALTER TABLE public.cache_table OWNER TO postgres;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_camera ALTER COLUMN id SET DEFAULT nextval('public.c_s_app_camera_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_request ALTER COLUMN id SET DEFAULT nextval('public.c_s_app_request_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_requestcameraurl ALTER COLUMN id SET DEFAULT nextval('public.c_s_app_requestcameraurl_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_resultdeepstream ALTER COLUMN id SET DEFAULT nextval('public.c_s_app_resultdeepstream_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add user	4	add_user
6	Can change user	4	change_user
7	Can delete user	4	delete_user
8	Can view user	4	view_user
9	Can add group	2	add_group
10	Can change group	2	change_group
11	Can delete group	2	delete_group
12	Can view group	2	view_group
13	Can add permission	3	add_permission
14	Can change permission	3	change_permission
15	Can delete permission	3	delete_permission
16	Can view permission	3	view_permission
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add camera	8	add_camera
26	Can change camera	8	change_camera
27	Can delete camera	8	delete_camera
28	Can view camera	8	view_camera
29	Can add request	7	add_request
30	Can change request	7	change_request
31	Can delete request	7	delete_request
32	Can view request	7	view_request
33	Can add request camera url	9	add_requestcameraurl
34	Can change request camera url	9	change_requestcameraurl
35	Can delete request camera url	9	delete_requestcameraurl
36	Can view request camera url	9	view_requestcameraurl
37	Can add result deepstream	10	add_resultdeepstream
38	Can change result deepstream	10	change_resultdeepstream
39	Can delete result deepstream	10	delete_resultdeepstream
40	Can view result deepstream	10	view_resultdeepstream
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: c_s_app_camera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.c_s_app_camera (id, cam_id, name, address) FROM stdin;
1	cam_id1	Camera1	Address1
2	cam_id2	Camera2	Address2
3	cam_id3	Camera3	Address3
4	cam_id4	Camera4	Address4
5	cam_id5	Camera5	Address5
\.


--
-- Name: c_s_app_camera_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.c_s_app_camera_id_seq', 5, true);


--
-- Data for Name: c_s_app_request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.c_s_app_request (id, start, finish, request_time) FROM stdin;
2	2006-11-01 15:30:00+01	2006-11-02 15:31:00+01	2020-03-11 12:10:43.16513+01
3	2006-11-01 15:30:00+01	2006-11-02 15:31:00+01	2020-03-11 12:10:43.16513+01
4	2006-11-01 15:30:00+01	2006-11-02 15:31:00+01	2020-03-11 12:10:43.16513+01
5	2006-11-01 15:30:00+01	2006-11-02 15:31:00+01	2020-03-11 12:10:43.16513+01
6	2006-11-01 15:30:00+01	2006-11-02 15:31:00+01	2020-03-11 12:10:43.16513+01
7	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
8	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
9	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
10	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
11	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
12	2006-10-25 16:30:00+02	2006-10-25 16:31:00+02	2020-03-11 12:10:43.16513+01
13	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
14	2006-10-25 16:30:00+02	2006-10-25 16:31:00+02	2020-03-11 12:10:43.16513+01
15	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
16	2006-11-01 15:30:00+01	2006-11-02 15:31:00+01	2020-03-11 12:10:43.16513+01
17	2006-11-01 15:30:00+01	2006-11-02 15:31:00+01	2020-03-11 12:10:43.16513+01
18	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
19	2006-11-01 15:30:00+01	2006-11-02 15:31:00+01	2020-03-11 12:10:43.16513+01
20	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
21	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
22	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
23	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
24	2020-01-01 15:30:00+01	2020-01-02 15:30:00+01	2020-03-11 12:10:43.16513+01
25	2020-01-01 13:00:00+01	2020-01-02 13:00:00+01	2020-03-11 12:10:43.16513+01
26	2020-01-01 13:00:00+01	2020-01-02 13:00:00+01	2020-03-11 12:10:43.16513+01
27	2020-01-01 13:00:00+01	2020-01-02 13:00:00+01	2020-03-11 12:10:43.16513+01
28	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
29	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
30	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
31	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
32	2006-10-25 16:30:00+02	2006-10-25 16:31:00+02	2020-03-11 12:10:43.16513+01
33	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
34	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
35	2006-11-01 15:30:00+01	2006-11-01 15:31:00+01	2020-03-11 12:10:43.16513+01
36	2006-11-01 15:30:00+01	2006-11-02 15:31:00+01	2020-03-11 12:10:43.16513+01
37	2006-11-01 15:30:00+01	2006-11-02 15:31:00+01	2020-03-11 12:10:43.16513+01
38	2020-03-09 01:00:00+01	2020-03-10 01:00:00+01	2020-03-11 12:10:43.16513+01
39	2020-03-09 01:00:00+01	2020-03-11 00:59:00+01	2020-03-11 12:10:43.16513+01
40	2020-03-09 01:00:00+01	2020-03-10 12:11:00+01	2020-03-11 12:10:43.16513+01
41	2020-03-09 12:11:00+01	2020-03-10 01:00:00+01	2020-03-11 12:11:37.130382+01
42	2020-03-09 01:00:00+01	2020-03-09 23:22:00+01	2020-03-11 12:23:02.478016+01
43	2020-03-09 12:11:00+01	2020-03-10 23:22:00+01	2020-03-12 12:48:45.369294+01
\.


--
-- Name: c_s_app_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.c_s_app_request_id_seq', 43, true);


--
-- Data for Name: c_s_app_requestcameraurl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.c_s_app_requestcameraurl (id, url, camera_id, request_id) FROM stdin;
2	\N	5	2
66	Test_URL:_request_pk:33/cam_id:cam_id5/cam_address:Address5	5	33
1	Test1	3	2
3	\N	2	3
4	\N	3	3
5	\N	5	4
6	\N	3	4
7	\N	4	5
8	\N	3	5
9	\N	1	6
10	Test1	3	6
11	\N	1	7
12	\N	3	7
13	\N	4	8
14	\N	5	8
15	\N	3	9
16	\N	5	9
17	\N	2	10
18	cam_id2Test_URL	2	11
19	cam_id4Test_URL	4	11
20	\N	5	12
21	\N	3	12
22	Test_URL:_request_pk:13/cam_id:cam_id2/cam_address:Address2	2	13
23	Test_URL:_request_pk:13/cam_id:cam_id4/cam_address:Address4	4	13
24	Test_URL:_request_pk:14/cam_id:cam_id4/cam_address:Address4	4	14
25	Test_URL:_request_pk:14/cam_id:cam_id2/cam_address:Address2	2	14
26	Test_URL:_request_pk:15/cam_id:cam_id1/cam_address:Address1	1	15
27	Test_URL:_request_pk:15/cam_id:cam_id4/cam_address:Address4	4	15
28	Test_URL:_request_pk:16/cam_id:cam_id3/cam_address:Address3	3	16
29	Test_URL:_request_pk:17/cam_id:cam_id1/cam_address:Address1	1	17
30	Test_URL:_request_pk:17/cam_id:cam_id3/cam_address:Address3	3	17
31	Test_URL:_request_pk:18/cam_id:cam_id3/cam_address:Address3	3	18
32	Test_URL:_request_pk:18/cam_id:cam_id5/cam_address:Address5	5	18
33	Test_URL:_request_pk:19/cam_id:cam_id2/cam_address:Address2	2	19
34	Test_URL:_request_pk:19/cam_id:cam_id4/cam_address:Address4	4	19
35	Test_URL:_request_pk:20/cam_id:cam_id1/cam_address:Address1	1	20
36	Test_URL:_request_pk:20/cam_id:cam_id3/cam_address:Address3	3	20
37	Test_URL:_request_pk:20/cam_id:cam_id5/cam_address:Address5	5	20
38	Test_URL:_request_pk:21/cam_id:cam_id1/cam_address:Address1	1	21
39	Test_URL:_request_pk:21/cam_id:cam_id3/cam_address:Address3	3	21
40	Test_URL:_request_pk:21/cam_id:cam_id5/cam_address:Address5	5	21
41	Test_URL:_request_pk:22/cam_id:cam_id1/cam_address:Address1	1	22
42	Test_URL:_request_pk:22/cam_id:cam_id3/cam_address:Address3	3	22
43	Test_URL:_request_pk:22/cam_id:cam_id5/cam_address:Address5	5	22
44	Test_URL:_request_pk:23/cam_id:cam_id1/cam_address:Address1	1	23
45	Test_URL:_request_pk:23/cam_id:cam_id3/cam_address:Address3	3	23
46	Test_URL:_request_pk:23/cam_id:cam_id5/cam_address:Address5	5	23
47	Test_URL:_request_pk:24/cam_id:cam_id1/cam_address:Address1	1	24
48	Test_URL:_request_pk:24/cam_id:cam_id2/cam_address:Address2	2	24
49	Test_URL:_request_pk:24/cam_id:cam_id3/cam_address:Address3	3	24
50	Test_URL:_request_pk:25/cam_id:cam_id1/cam_address:Address1	1	25
51	Test_URL:_request_pk:25/cam_id:cam_id2/cam_address:Address2	2	25
52	Test_URL:_request_pk:25/cam_id:cam_id3/cam_address:Address3	3	25
53	Test_URL:_request_pk:26/cam_id:cam_id1/cam_address:Address1	1	26
54	Test_URL:_request_pk:26/cam_id:cam_id2/cam_address:Address2	2	26
55	Test_URL:_request_pk:26/cam_id:cam_id3/cam_address:Address3	3	26
56	Test_URL:_request_pk:27/cam_id:cam_id1/cam_address:Address1	1	27
57	Test_URL:_request_pk:27/cam_id:cam_id2/cam_address:Address2	2	27
58	Test_URL:_request_pk:27/cam_id:cam_id3/cam_address:Address3	3	27
59	Test_URL:_request_pk:28/cam_id:cam_id1/cam_address:Address1	1	28
60	Test_URL:_request_pk:29/cam_id:cam_id1/cam_address:Address1	1	29
61	Test_URL:_request_pk:30/cam_id:cam_id2/cam_address:Address2	2	30
62	Test_URL:_request_pk:31/cam_id:cam_id5/cam_address:Address5	5	31
63	Test_URL:_request_pk:32/cam_id:cam_id5/cam_address:Address5	5	32
65	Test_URL:_request_pk:33/cam_id:cam_id3/cam_address:Address3	3	33
64	Test_URL:_request_pk:33/cam_id:cam_id1/cam_address:Address1	1	33
67	Test_URL:_request_pk:34/cam_id:cam_id2/cam_address:Address2	2	34
68	Test_URL:_request_pk:34/cam_id:cam_id4/cam_address:Address4	4	34
69	\N	5	35
70	\N	5	36
71	\N	1	37
72	\N	4	38
73	\N	4	39
74	\N	2	39
75	\N	1	39
76	\N	5	40
77	\N	3	41
78	Test_URL:_request_pk:42/cam_id:cam_id5/cam_address:Address5	5	42
79	Test_URL:_request_pk:43/cam_id:cam_id3/cam_address:Address3	3	43
\.


--
-- Name: c_s_app_requestcameraurl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.c_s_app_requestcameraurl_id_seq', 79, true);


--
-- Data for Name: c_s_app_resultdeepstream; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.c_s_app_resultdeepstream (id, "timestamp", car_number, car_brand, car_color, probability, car_photo, camera_id, request_id) FROM stdin;
1	2020-01-01 13:05:00+01	12345	BMW	black	97	images/1.png	1	27
2	2020-01-01 14:00:00+01	23456	Audi	red	95	images/2.png	2	27
3	2020-01-02 09:00:00+01	34567	Toyota	white	90	images/3.png	3	27
\.


--
-- Name: c_s_app_resultdeepstream_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.c_s_app_resultdeepstream_id_seq', 3, true);


--
-- Data for Name: cache_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cache_table (cache_key, value, expires) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	group
3	auth	permission
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	c_s_app	request
8	c_s_app	camera
9	c_s_app	requestcameraurl
10	c_s_app	resultdeepstream
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-03-02 10:43:33.809515+01
2	auth	0001_initial	2020-03-02 10:43:33.864719+01
3	admin	0001_initial	2020-03-02 10:43:33.952387+01
4	admin	0002_logentry_remove_auto_add	2020-03-02 10:43:33.982098+01
5	admin	0003_logentry_add_action_flag_choices	2020-03-02 10:43:34.002468+01
6	contenttypes	0002_remove_content_type_name	2020-03-02 10:43:34.04997+01
7	auth	0002_alter_permission_name_max_length	2020-03-02 10:43:34.061754+01
8	auth	0003_alter_user_email_max_length	2020-03-02 10:43:34.082082+01
9	auth	0004_alter_user_username_opts	2020-03-02 10:43:34.100736+01
10	auth	0005_alter_user_last_login_null	2020-03-02 10:43:34.120875+01
11	auth	0006_require_contenttypes_0002	2020-03-02 10:43:34.124225+01
12	auth	0007_alter_validators_add_error_messages	2020-03-02 10:43:34.143693+01
13	auth	0008_alter_user_username_max_length	2020-03-02 10:43:34.16403+01
14	auth	0009_alter_user_last_name_max_length	2020-03-02 10:43:34.17613+01
15	auth	0010_alter_group_name_max_length	2020-03-02 10:43:34.193197+01
16	auth	0011_update_proxy_permissions	2020-03-02 10:43:34.210829+01
17	sessions	0001_initial	2020-03-02 10:43:34.222074+01
18	c_s_app	0001_initial	2020-03-02 13:59:39.023274+01
19	c_s_app	0002_auto_20200302_1859	2020-03-03 10:10:10.155971+01
20	c_s_app	0003_auto_20200303_0910	2020-03-03 10:14:46.754711+01
21	c_s_app	0004_resultdeepstream	2020-03-05 17:36:53.983808+01
22	c_s_app	0005_requestcameraurl_request_time	2020-03-11 12:09:28.842237+01
23	c_s_app	0006_auto_20200311_1110	2020-03-11 12:10:43.175962+01
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: c_s_app_camera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_camera
    ADD CONSTRAINT c_s_app_camera_pkey PRIMARY KEY (id);


--
-- Name: c_s_app_request_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_request
    ADD CONSTRAINT c_s_app_request_pkey PRIMARY KEY (id);


--
-- Name: c_s_app_requestcameraurl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_requestcameraurl
    ADD CONSTRAINT c_s_app_requestcameraurl_pkey PRIMARY KEY (id);


--
-- Name: c_s_app_resultdeepstream_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_resultdeepstream
    ADD CONSTRAINT c_s_app_resultdeepstream_pkey PRIMARY KEY (id);


--
-- Name: cache_table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cache_table
    ADD CONSTRAINT cache_table_pkey PRIMARY KEY (cache_key);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: c_s_app_requestcameraurl_camera_id_a1b1a571; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX c_s_app_requestcameraurl_camera_id_a1b1a571 ON public.c_s_app_requestcameraurl USING btree (camera_id);


--
-- Name: c_s_app_requestcameraurl_request_id_1b352968; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX c_s_app_requestcameraurl_request_id_1b352968 ON public.c_s_app_requestcameraurl USING btree (request_id);


--
-- Name: c_s_app_resultdeepstream_camera_id_29d0f817; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX c_s_app_resultdeepstream_camera_id_29d0f817 ON public.c_s_app_resultdeepstream USING btree (camera_id);


--
-- Name: c_s_app_resultdeepstream_request_id_803ad859; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX c_s_app_resultdeepstream_request_id_803ad859 ON public.c_s_app_resultdeepstream USING btree (request_id);


--
-- Name: cache_table_expires; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cache_table_expires ON public.cache_table USING btree (expires);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: c_s_app_requestcamer_camera_id_a1b1a571_fk_c_s_app_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_requestcameraurl
    ADD CONSTRAINT c_s_app_requestcamer_camera_id_a1b1a571_fk_c_s_app_c FOREIGN KEY (camera_id) REFERENCES public.c_s_app_camera(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: c_s_app_requestcamer_request_id_1b352968_fk_c_s_app_r; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_requestcameraurl
    ADD CONSTRAINT c_s_app_requestcamer_request_id_1b352968_fk_c_s_app_r FOREIGN KEY (request_id) REFERENCES public.c_s_app_request(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: c_s_app_resultdeepst_camera_id_29d0f817_fk_c_s_app_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_resultdeepstream
    ADD CONSTRAINT c_s_app_resultdeepst_camera_id_29d0f817_fk_c_s_app_c FOREIGN KEY (camera_id) REFERENCES public.c_s_app_camera(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: c_s_app_resultdeepst_request_id_803ad859_fk_c_s_app_r; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_resultdeepstream
    ADD CONSTRAINT c_s_app_resultdeepst_request_id_803ad859_fk_c_s_app_r FOREIGN KEY (request_id) REFERENCES public.c_s_app_request(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

