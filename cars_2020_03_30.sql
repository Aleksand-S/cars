--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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
    address character varying(128) NOT NULL,
    azimuth character varying(32),
    lat character varying(32),
    long character varying(32)
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
-- Name: c_s_app_color; Type: TABLE; Schema: public; Owner: user1
--

CREATE TABLE public.c_s_app_color (
    id integer NOT NULL,
    name character varying(32) NOT NULL
);


ALTER TABLE public.c_s_app_color OWNER TO user1;

--
-- Name: c_s_app_color_id_seq; Type: SEQUENCE; Schema: public; Owner: user1
--

CREATE SEQUENCE public.c_s_app_color_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.c_s_app_color_id_seq OWNER TO user1;

--
-- Name: c_s_app_color_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user1
--

ALTER SEQUENCE public.c_s_app_color_id_seq OWNED BY public.c_s_app_color.id;


--
-- Name: c_s_app_feedback; Type: TABLE; Schema: public; Owner: user1
--

CREATE TABLE public.c_s_app_feedback (
    id integer NOT NULL,
    "time" timestamp with time zone NOT NULL,
    text text NOT NULL,
    user_id integer
);


ALTER TABLE public.c_s_app_feedback OWNER TO user1;

--
-- Name: c_s_app_feedback_id_seq; Type: SEQUENCE; Schema: public; Owner: user1
--

CREATE SEQUENCE public.c_s_app_feedback_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.c_s_app_feedback_id_seq OWNER TO user1;

--
-- Name: c_s_app_feedback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user1
--

ALTER SEQUENCE public.c_s_app_feedback_id_seq OWNED BY public.c_s_app_feedback.id;


--
-- Name: c_s_app_generation; Type: TABLE; Schema: public; Owner: user1
--

CREATE TABLE public.c_s_app_generation (
    id integer NOT NULL,
    model_id integer,
    name_id integer
);


ALTER TABLE public.c_s_app_generation OWNER TO user1;

--
-- Name: c_s_app_generationlist; Type: TABLE; Schema: public; Owner: user1
--

CREATE TABLE public.c_s_app_generationlist (
    id integer NOT NULL,
    name character varying(16) NOT NULL
);


ALTER TABLE public.c_s_app_generationlist OWNER TO user1;

--
-- Name: c_s_app_generation_id_seq; Type: SEQUENCE; Schema: public; Owner: user1
--

CREATE SEQUENCE public.c_s_app_generation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.c_s_app_generation_id_seq OWNER TO user1;

--
-- Name: c_s_app_generation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user1
--

ALTER SEQUENCE public.c_s_app_generation_id_seq OWNED BY public.c_s_app_generationlist.id;


--
-- Name: c_s_app_generation_id_seq1; Type: SEQUENCE; Schema: public; Owner: user1
--

CREATE SEQUENCE public.c_s_app_generation_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.c_s_app_generation_id_seq1 OWNER TO user1;

--
-- Name: c_s_app_generation_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: user1
--

ALTER SEQUENCE public.c_s_app_generation_id_seq1 OWNED BY public.c_s_app_generation.id;


--
-- Name: c_s_app_mark; Type: TABLE; Schema: public; Owner: user1
--

CREATE TABLE public.c_s_app_mark (
    id integer NOT NULL,
    name character varying(32) NOT NULL
);


ALTER TABLE public.c_s_app_mark OWNER TO user1;

--
-- Name: c_s_app_mark_id_seq; Type: SEQUENCE; Schema: public; Owner: user1
--

CREATE SEQUENCE public.c_s_app_mark_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.c_s_app_mark_id_seq OWNER TO user1;

--
-- Name: c_s_app_mark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user1
--

ALTER SEQUENCE public.c_s_app_mark_id_seq OWNED BY public.c_s_app_mark.id;


--
-- Name: c_s_app_model; Type: TABLE; Schema: public; Owner: user1
--

CREATE TABLE public.c_s_app_model (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    mark_id integer
);


ALTER TABLE public.c_s_app_model OWNER TO user1;

--
-- Name: c_s_app_model_id_seq; Type: SEQUENCE; Schema: public; Owner: user1
--

CREATE SEQUENCE public.c_s_app_model_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.c_s_app_model_id_seq OWNER TO user1;

--
-- Name: c_s_app_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user1
--

ALTER SEQUENCE public.c_s_app_model_id_seq OWNED BY public.c_s_app_model.id;


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
    "timestamp" timestamp with time zone,
    car_number character varying(16),
    car_probability integer,
    car_photo character varying(100),
    camera_id integer,
    request_id integer,
    car_video character varying(100),
    color_probability integer,
    car_color_id integer,
    car_obj_id integer
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
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: c_s_app_camera id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_camera ALTER COLUMN id SET DEFAULT nextval('public.c_s_app_camera_id_seq'::regclass);


--
-- Name: c_s_app_color id; Type: DEFAULT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.c_s_app_color ALTER COLUMN id SET DEFAULT nextval('public.c_s_app_color_id_seq'::regclass);


--
-- Name: c_s_app_feedback id; Type: DEFAULT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.c_s_app_feedback ALTER COLUMN id SET DEFAULT nextval('public.c_s_app_feedback_id_seq'::regclass);


--
-- Name: c_s_app_generation id; Type: DEFAULT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.c_s_app_generation ALTER COLUMN id SET DEFAULT nextval('public.c_s_app_generation_id_seq1'::regclass);


--
-- Name: c_s_app_generationlist id; Type: DEFAULT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.c_s_app_generationlist ALTER COLUMN id SET DEFAULT nextval('public.c_s_app_generation_id_seq'::regclass);


--
-- Name: c_s_app_mark id; Type: DEFAULT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.c_s_app_mark ALTER COLUMN id SET DEFAULT nextval('public.c_s_app_mark_id_seq'::regclass);


--
-- Name: c_s_app_model id; Type: DEFAULT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.c_s_app_model ALTER COLUMN id SET DEFAULT nextval('public.c_s_app_model_id_seq'::regclass);


--
-- Name: c_s_app_request id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_request ALTER COLUMN id SET DEFAULT nextval('public.c_s_app_request_id_seq'::regclass);


--
-- Name: c_s_app_requestcameraurl id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_requestcameraurl ALTER COLUMN id SET DEFAULT nextval('public.c_s_app_requestcameraurl_id_seq'::regclass);


--
-- Name: c_s_app_resultdeepstream id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_resultdeepstream ALTER COLUMN id SET DEFAULT nextval('public.c_s_app_resultdeepstream_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


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
41	Can add feedback	11	add_feedback
42	Can change feedback	11	change_feedback
43	Can delete feedback	11	delete_feedback
44	Can view feedback	11	view_feedback
45	Can add color	12	add_color
46	Can change color	12	change_color
47	Can delete color	12	delete_color
48	Can view color	12	view_color
49	Can add generation	13	add_generation
50	Can change generation	13	change_generation
51	Can delete generation	13	delete_generation
52	Can view generation	13	view_generation
53	Can add mark	14	add_mark
54	Can change mark	14	change_mark
55	Can delete mark	14	delete_mark
56	Can view mark	14	view_mark
57	Can add model	15	add_model
58	Can change model	15	change_model
59	Can delete model	15	delete_model
60	Can view model	15	view_model
61	Can add generation list	13	add_generationlist
62	Can change generation list	13	change_generationlist
63	Can delete generation list	13	delete_generationlist
64	Can view generation list	13	view_generationlist
65	Can add generation	16	add_generation
66	Can change generation	16	change_generation
67	Can delete generation	16	delete_generation
68	Can view generation	16	view_generation
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$btUnrRF9DGRL$mx28SVQ8Xf0E5sXp45GRWcTWanB89qW1C+27Xz0B7TU=	2020-03-16 13:22:34.956715+01	t	admin			a.stelmaszok@gmail.com	t	t	2020-03-16 13:21:58.70182+01
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: c_s_app_camera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.c_s_app_camera (id, cam_id, name, address, azimuth, lat, long) FROM stdin;
6	57b0b9bf6efd4881957cb250c9a1a26f	10.100.0.100	БМ Київ>Обзорки_перекрестки	\N	48.458986	35.042099
7	336479e7446047fc99bddea6281173fc	10.100.0.103	БМ Київ>Обзорки_перекрестки	\N	48.458032	35.043798
8	c2e92ed0aba44bb89f8a7b155643071b	10.9.1.46	БМ Київ>Обзорки_перекрестки	\N	48.465264	35.044089
9	61d9aec8415c4870815db8b4d1999894	10.9.1.61	БМ Київ>Обзорки_перекрестки	\N	48.462547	35.049214
10	0483a6fdaeb8483c896424d8fafca720	10.9.10.13	БМ Київ>Обзорки_перекрестки	300.38	48.461877	35.042758
11	12f387244d524c4699759d5e3395d09a	10.9.13.18	БМ Київ>Обзорки_перекрестки	\N	48.460783	35.038785
12	a62bda7f4fd74acda0fd5adb37a656e8	Camera 01	БМ Київ>HCMlite>qwe	\N	48.458337	35.031398
13	99e21c9ce3dd44508cc3d50f1b274e4d	DS-2CD7A26FWD-IZS	БМ Київ>HCMlite>qwe	\N	\N	\N
14	4336a9912a8046c88e0b090ecbac53e1	IPdome 5	БМ Київ>Система розпізнавання облич	\N	\N	\N
15	ad30e5cd02c746188af2327deb215245	PEA_cam	БМ Київ>Тривожні кнопки>Тр кнопки	\N	\N	\N
16	20c70ea6fbcf44fb949066a409722c19	VPan19-2	БМ Київ>Система розпізнавання облич	\N	\N	\N
17	6b17021782644891b162500b0ce52ca1	VPan19-3	БМ Київ>Система розпізнавання облич	\N	\N	\N
18	af46f4c98d944bba8c9fce1af3fbec1e	VPan19ds	БМ Київ>Система розпізнавання облич	0.0	48.465367	35.019581
19	70da876f44a64a9ca5c61adbaab6ca1d	Viatec	БМ Київ>Система розпізнавання облич	\N	\N	\N
20	03f6186611604ea687d3b76a4051e5d3	iDS-TCM203-A1	БМ Київ>Міст_Дарницький	90.0	48.466424	35.017791
\.


--
-- Data for Name: c_s_app_color; Type: TABLE DATA; Schema: public; Owner: user1
--

COPY public.c_s_app_color (id, name) FROM stdin;
1	white
2	yellow
3	blue
4	red
5	black
6	brown
7	azure
8	ivory
9	teal
10	silver
11	purple
12	navy blue
13	green\n
14	gray
15	orange
16	maroon
17	charcoal
18	aquamarine
19	coral
20	fuchsia
21	wheat
22	lime
23	crimson
24	khaki
25	pink
26	magenta
27	olden
28	plum
29	olive
30	cyan
\.


--
-- Data for Name: c_s_app_feedback; Type: TABLE DATA; Schema: public; Owner: user1
--

COPY public.c_s_app_feedback (id, "time", text, user_id) FROM stdin;
1	2020-03-25 16:53:20.39076+01	test1	\N
2	2020-03-25 16:54:09.631017+01	qwertyuiopoiuytrewqwertyuioiuytrewqwertyuiuytrewertyuiuytrewertyuiuytrewertyu\r\nertyuiytretyuitrertyuiytrew	\N
\.


--
-- Data for Name: c_s_app_generation; Type: TABLE DATA; Schema: public; Owner: user1
--

COPY public.c_s_app_generation (id, model_id, name_id) FROM stdin;
1	2617	1
2	2617	2
3	2618	1
4	2618	2
5	2619	1
6	2620	1
7	2620	2
8	2620	3
9	2620	4
10	2621	1
11	2621	2
12	2622	1
13	2622	2
14	2622	3
15	2623	2
16	2624	1
17	2624	2
18	2624	3
19	2625	1
20	2625	2
21	2625	3
22	2626	1
23	2627	1
24	2627	2
25	2627	3
26	2627	4
27	2628	1
28	2629	1
29	2629	2
30	2630	3
31	2631	1
32	2632	1
33	2633	1
34	2634	1
35	2635	1
36	2636	1
37	2637	1
38	2638	1
39	2639	1
40	2640	1
41	2640	1
42	2641	1
43	2642	1
44	2643	1
45	2644	1
46	2645	1
47	2646	1
48	2647	1
49	2648	1
50	2649	1
51	2650	1
52	2651	1
53	2652	1
54	2653	1
55	2653	2
56	2653	3
57	2653	4
58	2654	1
59	2655	1
60	2656	1
61	2657	1
62	2658	7
63	2659	1
64	2660	1
65	2661	1
66	2662	1
67	2662	2
68	2663	4
69	2664	4
70	2665	2
71	2665	3
72	2666	1
73	2667	1
74	2668	2
75	2669	1
76	2670	1
77	2671	1
78	2672	1
79	2672	2
80	2672	3
81	2672	4
82	2673	1
83	2674	3
84	2674	4
85	2675	1
86	2675	2
87	2676	1
88	2677	1
89	2677	2
90	2677	2
91	2677	3
92	2677	3
93	2678	1
94	2678	2
95	2678	3
96	2678	4
97	2678	4
98	2678	5
99	2678	5
100	2679	1
101	2679	1
102	2679	2
103	2680	1
104	2680	2
105	2680	3
106	2680	4
107	2680	5
108	2681	1
109	2681	2
110	2682	1
111	2682	2
112	2682	3
113	2682	3
114	2683	3
115	2684	1
116	2685	1
117	2686	1
118	2686	2
119	2687	1
120	2687	1
121	2687	2
122	2688	1
123	2688	2
124	2688	2
125	2689	1
126	2690	1
127	2691	1
128	2692	1
129	2692	2
130	2692	3
131	2693	1
132	2694	1
133	2695	1
134	2696	1
135	2697	1
136	2698	1
137	2699	1
138	2700	1
139	2701	1
140	2702	1
141	2703	1
142	2703	2
143	2704	1
144	2705	1
145	2706	1
146	2707	1
147	2708	1
148	2709	1
149	2710	1
150	2711	1
151	2712	1
152	2713	1
153	2713	2
154	2713	3
155	2714	1
156	2714	1
157	2716	1
158	2716	2
159	2716	3
160	2716	4
161	2716	5
162	2716	6
163	2716	7
164	2717	1
165	2718	1
166	2718	2
167	2718	3
168	2718	4
169	2718	5
170	2718	6
171	2718	7
172	2719	1
173	2719	2
174	2719	3
175	2720	1
176	2720	2
177	2720	3
178	2720	4
179	2720	5
180	2720	6
181	2721	1
182	2721	2
183	2722	1
184	2723	1
185	2724	1
186	2725	1
187	2725	2
188	2726	1
189	2727	1
190	2727	2
191	2727	3
192	2728	1
193	2728	2
194	2729	1
195	2729	2
196	2729	3
197	2729	4
198	2730	1
199	2730	2
200	2730	3
201	2731	1
202	2732	1
203	2733	1
204	2733	2
205	2733	3
206	2734	1
207	2735	1
208	2736	1
209	2650	1
210	2737	1
211	2738	1
212	2739	1
213	2740	2
214	2740	4
215	2740	5
216	2740	6
217	2741	3
218	2741	4
219	2741	5
220	2741	6
221	2742	1
222	2742	2
223	2743	1
224	2744	1
225	2744	2
226	2744	2
227	2745	1
228	2745	2
229	2745	3
230	2746	1
231	2747	2
232	2747	3
233	2748	1
234	2749	1
235	2749	1
236	2749	2
237	2749	2
238	2749	3
239	2750	1
240	2750	3
241	2750	5
242	2750	6
243	2750	7
244	2750	8
245	2751	1
246	2752	1
247	2752	2
248	2753	1
249	2754	1
250	2755	1
251	2755	2
252	2755	3
253	2755	4
254	2756	1
255	2757	1
256	2757	2
257	2757	3
258	2757	4
259	2757	5
260	2757	6
261	2757	7
262	2757	8
263	2758	8
264	2759	1
265	2759	2
266	2759	3
267	2759	5
268	2759	6
269	2760	1
270	2761	1
271	2762	1
272	2762	2
273	2763	1
274	2764	1
275	2765	1
276	2766	1
277	2767	1
278	2768	1
279	2769	1
280	2770	1
281	2771	1
282	2772	1
283	2773	1
284	2774	1
285	2774	2
286	2774	3
287	2775	3
288	2775	4
289	2775	5
290	2775	6
291	2775	7
292	2775	8
293	2776	1
294	2777	8
295	2777	9
296	2777	10
297	2777	11
298	2777	12
299	2778	1
300	2779	1
301	2779	2
302	2779	3
303	2779	4
304	2780	1
305	2780	2
306	2781	9
307	2781	10
308	2781	10
309	2782	1
310	2782	2
311	2782	3
312	2782	4
313	2782	5
314	2783	1
315	2783	2
316	2784	1
317	2785	1
318	2786	1
319	2787	1
320	2675	1
321	2788	1
322	2789	1
323	2677	1
324	2679	1
325	2790	1
326	2791	1
327	2792	1
328	2793	1
329	2763	1
330	2794	1
331	2795	1
332	2795	1
333	2796	1
334	2797	1
335	2798	1
336	2799	1
337	2800	1
338	2801	1
339	2802	1
340	2803	1
341	2804	1
342	2805	1
343	2805	2
344	2806	1
345	2806	2
346	2807	1
347	2807	2
348	2807	2
349	2808	1
350	2809	1
351	2810	1
352	2810	2
353	2810	3
354	2810	4
355	2811	3
356	2811	4
357	2812	1
358	2812	2
359	2812	3
360	2812	4
361	2812	5
362	2812	6
363	2813	1
364	2813	2
365	2813	3
366	2813	4
367	2813	6
368	2814	1
369	2815	1
370	2815	2
371	2815	3
372	2815	4
373	2816	1
374	2817	1
375	2817	2
376	2817	3
377	2818	1
378	2819	1
379	2820	1
380	2820	2
381	2821	1
382	2822	1
383	2822	2
384	2822	3
385	2822	4
386	2822	5
387	2822	6
388	2822	7
389	2823	1
390	2823	2
391	2824	2
392	2824	3
393	2824	4
394	2824	5
395	2825	1
396	2826	1
397	2826	2
398	2826	3
399	2827	1
400	2828	2
401	2829	1
402	2829	1
403	2830	2
404	2830	3
405	2831	1
406	2832	1
407	2832	2
408	2832	3
409	2832	4
410	2832	5
411	2832	6
412	2832	8
413	2832	9
414	2832	10
415	2833	1
416	2833	2
417	2833	3
418	2834	1
419	2834	3
420	2835	1
421	2836	1
422	2836	2
423	2837	1
424	2838	1
425	2838	2
426	2838	3
427	2838	4
428	2838	5
429	2838	6
430	2838	7
431	2838	8
432	2838	9
433	2839	1
434	2839	2
435	2840	1
436	2840	2
437	2840	3
438	2840	4
439	2840	5
440	2840	6
441	2840	7
442	2841	1
443	2842	1
444	2843	3
445	2843	4
446	2843	5
447	2844	1
448	2845	1
449	2845	2
450	2845	3
451	2846	1
452	2846	2
453	2847	1
454	2847	2
455	2848	1
456	2848	2
457	2848	3
458	2849	1
459	2849	2
460	2849	3
461	2850	3
462	2850	4
463	2851	1
464	2852	6
465	2852	7
466	2852	8
467	2852	9
468	2852	10
469	2852	11
470	2853	1
471	2854	1
472	2854	2
473	2854	3
474	2854	4
475	2855	1
476	2855	2
477	2855	4
478	2856	1
479	2857	1
480	2857	2
481	2858	1
482	2858	1
483	2859	1
484	2860	1
485	2861	1
486	2862	1
487	2862	2
488	2863	1
489	2864	1
490	2864	2
491	2865	1
492	2865	2
493	2866	1
494	2867	1
495	2868	1
496	2868	2
497	2869	1
498	2870	1
499	2870	2
500	2871	1
501	2872	1
502	2873	7
503	2874	1
504	2874	2
505	2875	2
506	2875	3
507	2876	1
508	2876	2
509	2877	1
510	2878	12
511	2878	13
512	2878	14
513	2879	6
514	2880	1
515	2880	2
516	2881	1
517	2882	1
518	2882	2
519	2882	3
520	2883	1
521	2884	1
522	2884	2
523	2884	3
524	2884	4
525	2884	5
526	2885	1
527	2886	1
528	2886	1
529	2886	2
530	2886	3
531	2887	1
532	2888	1
533	2889	2
534	2889	3
535	2890	1
536	2891	1
537	2892	1
538	2892	1
539	2892	2
540	2893	1
541	2894	1
542	2894	2
543	2894	3
544	2895	1
545	2896	1
546	2897	1
547	2898	1
548	2899	1
549	2899	2
550	2899	2
551	2900	1
552	2901	1
553	2901	1
554	2902	1
555	2902	2
556	2903	1
557	2903	2
558	2904	1
559	2905	1
560	2905	2
561	2906	2
562	2907	1
563	2908	1
564	2909	1
565	2910	1
566	2911	1
567	2912	2
568	2912	3
569	2912	4
570	2913	1
571	2913	2
572	2913	3
573	2914	1
574	2915	1
575	2916	1
576	2917	3
577	2918	1
578	2919	1
579	2920	1
580	2921	1
581	2922	1
582	2923	1
583	2843	1
584	2924	1
585	2925	1
586	2926	1
587	2927	1
588	2928	1
589	2929	1
590	2930	1
591	2931	1
592	2931	2
593	2932	1
594	2932	1
595	2933	1
596	2853	1
597	2934	1
598	2935	1
599	2936	1
600	2937	3
601	2938	1
602	2939	5
603	2939	6
604	2939	7
605	2940	2
606	2941	1
607	2942	1
608	2943	1
609	2944	1
610	2944	2
611	2945	1
612	2946	1
613	2947	1
614	2948	1
615	2949	1
616	2950	1
617	2951	1
618	2952	1
619	2952	2
620	2953	1
621	2954	1
622	2954	2
623	2954	3
624	2955	2
625	2955	3
626	2955	4
627	2955	5
628	2955	6
629	2955	7
630	2955	7
631	2956	7
632	2957	2
633	2957	3
634	2958	1
635	2958	2
636	2958	3
637	2959	4
638	2960	1
639	2961	1
640	2962	1
641	2962	2
642	2962	3
643	2962	4
644	2963	1
645	2964	1
646	2964	2
647	2964	3
648	2964	4
649	2964	5
650	2874	1
651	2965	1
652	2965	1
653	2966	2
654	2877	1
655	2877	2
656	2967	1
657	2968	1
658	2968	2
659	2968	3
660	2968	4
661	2968	5
662	2969	1
663	2969	2
664	2970	1
665	2971	1
666	2972	1
667	2972	2
668	2972	3
669	2972	4
670	2972	5
671	2973	2
672	2973	4
673	2974	1
674	2975	1
675	2976	1
676	2977	1
677	2978	1
678	2979	1
679	2980	1
680	2981	1
681	2982	1
682	2983	1
683	2984	1
684	2985	1
685	2986	1
686	2961	1
687	2987	1
688	2988	1
689	2989	1
690	2990	1
691	2991	1
692	2992	1
693	2993	1
694	2994	1
695	2995	1
696	2996	1
697	2997	3
698	2997	4
699	2998	1
700	2999	1
701	3000	1
702	3001	1
703	3002	1
704	3002	2
705	3003	1
706	3004	1
707	3005	1
708	3005	2
709	3006	1
710	3006	1
711	3006	2
712	3006	2
713	3007	1
714	3007	2
715	3007	3
716	3007	4
717	3008	3
718	3009	1
719	3010	1
720	3011	1
721	3012	1
722	3013	1
723	3014	1
724	3015	2
725	3015	3
726	3016	1
727	3016	2
728	3016	2
729	3016	3
730	3017	1
731	3018	1
732	3018	1
733	3018	2
734	3019	1
735	3020	1
736	3021	1
737	2653	1
738	3022	1
739	3023	2
740	3024	1
741	3025	1
742	3026	1
743	3027	1
744	3028	1
745	3029	1
746	3030	1
747	3031	1
748	3032	1
749	3033	1
750	3033	2
751	3033	3
752	3033	4
753	3034	1
754	3034	2
755	3035	3
756	3035	4
757	3035	5
758	3036	1
759	3037	1
760	3038	2
761	3038	5
762	3039	1
763	3039	2
764	3040	2
765	3041	1
766	3041	2
767	3041	3
768	3042	1
769	3042	2
770	3042	3
771	3043	1
772	3043	2
773	3043	3
774	3043	4
775	3043	6
776	3044	1
777	3045	1
778	3045	2
779	3045	3
780	3045	4
781	2828	1
782	2828	2
783	2828	3
784	2828	4
785	2828	5
786	2828	5
787	3046	5
788	3046	6
789	3046	7
790	3046	8
791	3046	9
792	3046	10
793	3046	11
794	3046	12
795	3046	13
796	3047	1
797	3048	1
798	3048	3
799	3048	4
800	3048	6
801	3048	7
802	3048	8
803	3049	1
804	3049	2
805	3050	1
806	3050	2
807	3050	2
808	3050	3
809	3050	3
810	3050	4
811	3051	1
812	3052	1
813	3052	1
814	3052	2
815	3052	3
816	3053	1
817	3054	2
818	3054	3
819	3055	1
820	3055	2
821	3055	3
822	3056	1
823	3057	2
824	3058	1
825	3059	1
826	3059	2
827	3059	3
828	3059	4
829	3060	1
830	3060	1
831	3060	2
832	3060	3
833	3060	4
834	3060	5
835	3060	6
836	3060	7
837	3061	1
838	3061	3
839	3062	1
840	3062	2
841	3063	1
842	3064	5
843	3064	6
844	3064	7
845	3065	1
846	3065	2
847	3065	3
848	3065	4
849	3065	5
850	3065	6
851	3066	1
852	3066	2
853	3067	1
854	3068	1
855	3068	2
856	3069	1
857	3070	1
858	3070	2
859	3070	3
860	3070	4
861	3070	5
862	3070	6
863	3071	1
864	3072	2
865	3073	5
866	3073	6
867	3073	7
868	3073	9
869	3073	10
870	3073	11
871	3074	1
872	3074	2
873	3075	1
874	3076	2
875	3076	3
876	3076	3
877	3076	4
878	3077	2
879	3078	1
880	3079	1
881	3079	2
882	3079	3
883	3080	1
884	3081	1
885	3082	1
886	3083	1
887	3084	1
888	3085	1
889	3086	1
890	3087	1
891	3088	1
892	3089	1
893	3090	1
894	3090	2
895	3090	3
896	3090	4
897	3091	1
898	3092	1
899	3093	1
900	3094	1
901	3094	2
902	3095	1
903	3096	1
904	3097	1
905	3098	1
906	3099	1
907	3100	1
908	3101	1
909	3102	2
910	3103	1
911	3104	1
912	3105	1
913	3105	2
914	3106	4
915	3107	2
916	3108	1
917	3109	1
918	3109	2
919	3110	2
920	3110	3
921	3110	4
922	3111	1
923	3111	2
924	3112	1
925	3112	2
926	3068	3
927	3113	1
928	3113	2
929	3113	3
930	3114	1
931	3115	2
932	2863	4
933	3116	1
934	3117	1
935	3118	2
936	3119	1
937	3120	1
938	3121	1
939	3122	1
940	3122	2
941	3123	1
942	3124	1
943	3125	1
944	3126	1
945	3127	1
946	3128	1
947	3129	1
948	3130	3
949	3130	4
950	3131	1
951	3131	2
952	3131	3
953	3131	4
954	3131	5
955	3131	6
956	3131	7
957	3131	8
958	3131	9
959	3131	10
960	3132	2
961	2792	1
962	2633	1
963	2633	4
964	2633	5
965	2633	6
966	3133	1
967	3133	2
968	3133	3
969	3133	4
970	3133	5
971	3133	6
972	3133	7
973	3133	8
974	3133	9
975	3133	10
976	3134	1
977	3135	1
978	3135	2
979	3135	3
980	3135	4
981	3135	5
982	3136	1
983	3137	1
984	3138	1
985	3139	1
986	3140	1
987	3140	2
988	3140	3
989	3141	1
990	3142	2
991	3143	1
992	3143	2
993	3143	3
994	3144	1
995	3145	1
996	3145	2
997	3146	2
998	3147	1
999	3147	2
1000	2620	1
1001	2620	3
1002	3148	1
1003	3148	2
1004	3148	3
1005	2621	1
1006	2621	2
1007	2621	3
1008	2621	4
1009	3149	1
1010	3150	1
1011	3150	2
1012	3150	3
1013	3150	3
1014	3150	4
1015	3150	5
1016	3151	1
1017	3151	2
1018	3152	1
1019	3152	2
1020	3152	3
1021	3153	1
1022	3153	2
1023	3153	3
1024	3153	4
1025	3153	5
1026	3154	1
1027	3155	1
1028	3155	1
1029	3155	2
1030	3156	4
1031	3157	1
1032	2630	3
1033	3158	1
1034	3159	1
1035	3160	1
1036	3161	1
1037	3162	1
1038	3162	2
1039	3162	3
1040	3162	4
1041	3162	4
1042	3162	5
1043	3163	1
1044	3004	2
1045	3004	3
1046	3164	1
1047	3164	2
1048	3165	1
1049	3165	2
1050	3165	2
1051	3165	3
1052	3165	4
1053	3165	5
1054	3165	6
1055	3165	6
1056	3166	4
1057	3167	1
1058	3168	2
1059	3169	3
1060	3170	1
1061	3170	2
1062	3171	1
1063	3171	1
1064	3172	3
1065	3172	4
1066	3172	5
1067	3172	6
1068	3159	1
1069	3159	2
1070	3159	2
1071	3173	3
1072	3174	3
1073	3175	1
1074	3175	2
1075	3176	1
1076	3176	2
1077	3177	1
1078	3177	2
1079	3177	3
1080	3178	1
1081	3179	1
1082	3180	1
1083	3181	1
1084	3182	1
1085	3182	1
1086	3183	1
1087	3184	1
1088	3184	2
1089	3184	3
1090	3184	4
1091	3185	2
1092	3185	3
1093	3185	3
1094	3185	4
1095	3185	5
1096	3185	6
1097	3185	7
1098	3186	5
1099	3187	1
1100	3188	1
1101	3188	2
1102	3189	1
1103	3190	1
1104	3190	2
1105	3190	3
1106	3191	1
1107	3192	1
1108	3193	1
1109	3194	1
1110	3195	1
1111	3196	1
1112	3196	2
1113	2830	1
1114	2830	2
1115	2830	3
1116	2830	4
1117	3177	2
1118	3177	3
1119	3197	3
1120	3198	1
1121	3199	1
1122	3199	2
1123	3199	3
1124	3199	4
1125	3200	1
1126	3201	1
1127	3201	2
1128	3201	3
1129	3202	1
1130	3203	1
1131	3203	2
1132	3204	1
1133	3205	1
1134	3205	2
1135	3206	1
1136	3207	1
1137	3207	2
1138	3208	1
1139	3208	2
1140	3209	2
1141	3209	2
1142	3209	2
1143	3210	1
1144	3211	1
1145	3212	1
1146	3213	2
1147	3214	1
1148	3215	1
1149	3215	2
1150	3216	1
1151	3217	1
1152	3217	2
1153	3218	1
1154	3219	2
1155	3219	3
1156	3219	4
1157	3219	5
1158	3219	6
1159	3220	2
1160	3221	1
1161	3222	1
1162	3223	1
1163	3224	1
1164	3225	1
1165	3226	1
1166	3227	2
1167	3228	1
1168	3229	1
1169	3230	1
1170	3231	1
1171	3232	1
1172	3233	1
1173	3234	1
1174	3235	1
1175	3236	1
1176	3237	1
1177	3238	1
1178	2937	1
1179	2937	2
1180	2937	3
1181	3239	1
1182	3240	5
1183	3240	6
1184	3240	8
1185	3241	1
1186	3241	2
1187	3241	3
1188	3241	4
1189	3241	5
1190	3241	6
1191	3242	1
1192	3243	1
1193	3243	2
1194	3244	1
1195	3244	2
1196	3245	1
1197	3245	2
1198	3245	3
1199	3245	4
1200	3245	5
1201	3246	1
1202	3247	1
1203	3248	1
1204	3249	1
1205	3249	1
1206	3249	2
1207	3250	1
1208	3250	2
1209	3250	3
1210	3250	4
1211	3250	4
1212	3251	1
1213	3252	1
1214	3253	1
1215	3253	2
1216	3254	1
1217	3255	1
1218	3256	1
1219	3257	1
1220	3258	1
1221	3258	2
1222	3258	3
1223	3259	1
1224	3260	1
1225	3261	1
1226	3262	1
1227	3263	1
1228	3264	1
1229	3265	1
1230	3266	1
1231	3266	2
1232	3266	3
1233	3267	1
1234	3267	2
1235	3268	1
1236	3268	2
1237	3268	3
1238	3269	1
1239	3269	2
1240	3270	1
1241	3270	2
1242	3271	1
1243	3272	1
1244	3273	1
1245	3274	1
1246	3275	1
1247	3275	2
1248	3275	2
1249	3275	3
1250	3275	4
1251	3276	1
1252	3276	1
1253	3276	2
1254	3276	3
1255	3277	1
1256	3277	2
1257	3277	3
1258	3277	3
1259	3277	4
1260	3278	1
1261	3278	2
1262	3279	1
1263	3279	2
1264	3280	1
1265	3280	2
1266	3281	1
1267	3281	2
1268	3281	3
1269	3282	1
1270	3282	2
1271	3283	1
1272	3283	2
1273	3284	1
1274	3284	2
1275	3284	3
1276	3284	4
1277	3285	1
1278	3286	1
1279	3287	1
1280	3288	1
1281	3289	1
1282	3290	1
1283	3291	1
1284	3292	1
1285	3293	1
1286	3294	1
1287	3295	1
1288	3296	1
1289	3297	1
1290	3298	1
1291	3299	1
1292	3300	1
1293	3301	1
1294	3302	1
1295	3303	1
1296	3304	1
1297	3305	1
1298	3306	1
1299	3307	1
1300	3308	1
1301	3309	1
1302	3310	1
1303	2842	1
1304	3311	1
1305	3312	1
1306	3313	1
1307	3314	1
1308	3315	1
1309	3316	1
1310	3317	1
1311	3318	1
1312	3319	1
1313	3319	3
1314	3320	1
1315	3321	1
1316	3322	1
1317	3323	2
1318	3324	2
1319	3325	1
1320	3326	1
1321	3327	1
1322	3327	2
1323	3328	1
1324	3328	2
1325	3328	3
1326	3329	1
1327	3329	1
1328	3329	2
1329	3329	3
1330	3330	1
1331	3330	2
1332	3331	1
1333	3331	2
1334	3332	1
1335	3332	2
1336	3332	3
1337	3332	4
1338	3333	1
1339	3333	1
1340	3334	2
1341	3334	3
1342	3334	4
1343	3334	5
1344	3334	6
1345	3335	1
1346	3335	2
1347	3335	3
1348	3335	4
1349	3336	1
1350	3336	2
1351	3336	2
1352	3337	1
1353	3338	1
1354	3338	2
1355	3338	3
1356	3339	1
1357	3340	1
1358	3340	2
1359	3340	2
1360	3340	3
1361	3340	4
1362	3340	5
1363	3341	1
1364	3341	2
1365	3341	3
1366	3341	3
1367	3342	1
1368	3343	1
1369	3344	1
1370	3345	1
1371	3346	1
1372	3346	2
1373	3346	3
1374	3346	4
1375	3347	1
1376	3347	2
1377	3348	1
1378	3349	1
1379	3350	1
1380	3351	1
1381	3352	1
1382	3353	1
1383	3354	1
1384	3355	1
1385	3356	1
1386	3357	5
1387	3357	6
1388	3357	7
1389	3357	8
1390	3357	9
1391	3357	10
1392	3340	1
1393	3358	1
1394	3359	2
1395	3359	3
1396	3359	4
1397	3359	5
1398	3359	6
1399	3359	7
1400	3360	1
1401	3361	1
1402	3362	1
1403	3363	1
1404	3363	2
1405	3364	1
1406	3364	2
1407	3365	1
1408	3365	2
1409	3365	3
1410	3365	4
1411	3366	3
1412	3367	1
1413	3367	2
1414	3367	3
1415	3368	1
1416	3369	2
1417	3370	3
1418	3371	1
1419	3372	1
1420	3373	1
1421	3374	1
1422	3375	1
1423	3376	1
1424	3376	3
1425	3377	1
1426	3378	1
1427	3379	1
1428	3380	1
1429	3381	5
1430	3381	6
1431	3382	1
1432	2883	1
1433	3383	1
1434	3384	1
1435	3385	1
1436	3386	1
1437	3387	1
1438	3388	1
1439	2714	2
1440	2714	3
1441	2714	4
1442	2716	1
1443	2716	2
1444	2716	3
1445	2716	4
1446	2718	1
1447	2718	2
1448	2718	3
1449	2719	1
1450	2719	2
1451	2719	3
1452	3389	6
1453	3389	7
1454	3389	8
1455	3390	4
1456	3390	5
1457	3390	6
1458	3391	6
1459	3392	1
1460	3393	5
1461	3394	3
1462	3394	4
1463	3394	5
1464	3395	3
1465	3396	1
1466	3397	1
1467	3398	1
1468	3398	2
1469	3399	1
1470	3400	1
1471	3400	2
1472	3401	1
1473	3402	1
1474	3403	1
1475	3403	1
1476	3404	1
1477	3405	1
1478	3405	2
1479	3405	3
1480	3406	2
1481	3406	3
1482	3406	4
1483	3407	1
1484	3408	1
1485	3408	2
1486	3409	1
1487	3410	1
1488	3410	2
1489	3410	3
1490	3411	1
1491	3411	2
1492	3412	1
1493	3412	2
1494	3413	1
1495	3413	2
1496	3414	6
1497	3415	1
1498	2864	1
1499	3416	1
1500	3417	3
1501	3418	1
1502	3419	2
1503	3419	3
1504	3420	1
1505	3421	1
1506	3421	2
1507	3421	3
1508	3421	4
1509	3422	1
1510	3422	2
1511	3422	3
1512	3422	4
1513	3423	1
1514	3424	1
1515	3393	1
1516	3393	2
1517	3393	3
1518	3425	1
1519	3425	2
1520	3425	3
1521	3425	4
1522	3426	1
1523	2617	2
1524	2617	3
1525	3427	1
1526	3427	2
1527	3428	1
1528	3429	1
1529	3429	2
1530	3430	1
1531	3430	2
1532	3430	2
1533	3431	1
1534	3431	2
1535	3431	3
1536	3431	4
1537	3431	5
1538	2830	1
1539	2830	2
1540	3432	1
1541	3432	2
1542	3433	1
1543	3434	1
1544	3435	1
1545	3436	1
1546	3436	2
1547	3437	1
1548	3437	1
1549	3438	1
1550	2650	1
1551	3439	1
1552	3440	1
1553	3440	2
1554	3440	3
1555	3441	1
1556	3442	1
1557	3442	1
1558	3442	2
1559	3442	3
1560	3443	2
1561	3443	3
1562	3443	4
1563	3443	5
1564	3443	6
1565	3444	1
1566	3101	3
1567	3101	4
1568	3101	5
1569	3101	6
1570	3445	1
1571	3445	2
1572	3446	1
1573	3447	1
1574	3447	2
1575	3447	3
1576	3448	1
1577	3449	1
1578	3450	1
1579	3450	2
1580	3450	3
1581	3451	1
1582	3452	1
1583	3453	2
1584	3453	3
1585	3037	1
1586	3037	3
1587	3037	4
1588	3037	6
1589	3037	7
1590	3037	8
1591	3454	1
1592	3454	2
1593	3454	3
1594	3454	4
1595	3455	1
1596	3456	1
1597	3456	2
1598	3457	1
1599	3458	2
1600	3458	3
1601	3459	7
1602	3460	1
1603	3460	2
1604	3460	3
1605	3461	1
1606	3461	2
1607	3461	3
1608	3461	4
1609	3461	5
1610	3462	2
1611	3463	1
1612	3463	2
1613	3463	3
1614	3464	1
1615	3464	2
1616	2719	1
1617	3465	1
1618	3466	1
1619	3466	2
1620	3467	1
1621	3467	2
1622	3467	3
1623	3468	1
1624	3468	2
1625	3469	1
1626	3470	1
1627	3470	2
1628	3470	3
1629	3471	3
1630	3471	4
1631	3472	1
1632	3473	3
1633	2956	2
1634	2956	2
1635	2956	5
1636	3474	4
1637	3475	1
1638	3475	2
1639	3476	1
1640	3476	2
1641	3476	3
1642	3476	4
1643	3477	1
1644	3478	1
1645	3479	6
1646	3479	7
1647	3479	8
1648	3479	9
1649	3480	1
1650	3481	1
1651	3482	1
1652	3483	3
1653	3483	4
1654	3483	5
1655	3483	5
1656	3484	3
1657	3485	6
1658	3485	7
1659	3485	9
1660	3485	10
1661	3486	2
1662	3487	5
1663	3487	6
1664	3488	1
1665	3488	2
1666	3488	3
1667	3489	1
1668	3489	2
1669	3489	2
1670	3489	3
1671	3489	4
1672	3490	1
1673	3490	2
1674	3490	3
1675	3490	4
1676	3491	1
1677	3492	1
1678	3492	2
1679	3492	3
1680	3493	1
1681	3494	1
1682	3494	2
1683	3494	2
1684	3495	1
1685	3496	1
1686	3497	1
1687	3498	1
1688	3499	1
1689	3500	1
1690	3501	1
1691	3501	2
1692	3502	1
1693	3502	2
1694	3503	1
1695	3504	1
1696	3505	1
1697	3505	2
1698	3506	2
1699	3507	1
1700	3507	2
1701	3507	3
1702	3507	4
1703	3507	5
1704	3508	1
1705	3509	11
1706	3509	12
1707	3509	14
1708	3510	4
1709	3511	3
1710	3512	1
1711	3512	2
1712	3513	1
1713	3514	1
1714	3515	1
1715	3515	1
1716	3515	2
1717	3516	1
1718	3517	1
1719	3517	2
1720	3518	1
1721	3519	2
1722	3519	3
1723	3519	4
1724	3519	5
1725	3519	6
1726	3519	7
1727	3519	8
1728	3520	1
1729	3520	2
1730	3520	3
1731	3520	4
1732	3520	5
1733	3521	1
1734	3521	2
1735	3521	3
1736	3522	1
1737	3522	2
1738	3522	3
1739	3523	1
1740	3523	2
1741	3524	1
1742	3525	1
1743	3526	1
1744	3527	1
1745	3527	2
1746	3527	3
1747	3527	4
1748	3528	4
1749	3528	5
1750	3528	6
1751	3529	2
1752	3530	1
1753	3531	2
1754	3532	1
1755	3532	2
1756	3532	2
1757	3532	3
1758	3533	3
1759	3534	1
1760	3534	1
1761	3534	2
1762	3534	2
1763	3535	1
1764	3535	2
1765	3535	3
1766	3535	4
1767	3536	1
1768	3536	2
1769	3537	1
1770	3537	2
1771	3537	3
1772	3537	4
1773	3537	5
1774	3537	6
1775	3537	7
1776	3538	4
1777	3539	5
1778	3539	6
1779	3539	7
1780	3539	8
1781	3540	1
1782	3540	2
1783	3540	3
1784	3540	3
1785	3541	1
1786	3541	2
1787	3541	3
1788	3542	1
1789	3542	2
1790	3543	1
1791	3543	2
1792	3543	3
1793	3544	1
1794	3545	1
1795	3546	1
1796	3547	1
1797	3547	2
1798	3547	3
1799	3548	1
1800	3548	2
1801	3549	1
1802	3550	1
1803	3551	1
1804	3551	2
1805	3552	1
1806	3552	2
1807	3552	3
1808	3553	3
1809	3553	4
1810	3553	5
1811	3553	6
1812	3554	6
1813	3554	7
1814	3554	8
1815	3554	9
1816	3554	10
1817	3555	1
1818	3556	9
1819	3556	10
1820	3556	11
1821	3556	12
1822	3557	2
1823	3558	1
1824	3558	2
1825	3559	2
1826	3559	3
1827	3559	4
1828	3560	1
1829	3561	1
1830	3561	2
1831	3562	1
1832	3563	1
1833	3564	3
1834	3565	1
1835	3565	2
1836	3565	3
1837	3565	4
1838	3565	5
1839	3566	3
1840	3566	4
1841	3566	5
1842	3567	2
1843	3567	3
1844	3567	4
1845	3567	5
1846	3567	6
1847	3568	1
1848	3569	2
1849	3570	1
1850	2650	1
1851	3571	1
1852	3571	1
1853	3571	2
1854	3572	5
1855	3573	1
1856	3574	1
1857	3574	2
1858	3575	1
1859	3575	1
1860	3459	2
1861	3576	1
1862	3557	1
1863	3557	2
1864	3577	1
1865	3578	1
1866	3579	2
1867	3580	1
1868	3580	2
1869	3580	3
1870	3580	3
1871	3581	1
1872	3581	2
1873	3581	3
1874	3582	1
1875	3582	2
1876	3582	3
1877	3582	3
1878	3583	1
1879	3584	2
1880	3585	1
1881	3586	1
1882	3587	1
1883	3588	1
1884	3588	1
1885	3589	1
1886	2979	1
1887	2979	2
1888	3590	1
1889	3590	1
1890	3591	1
1891	3592	1
1892	3593	1
1893	3594	1
1894	3594	2
1895	3595	1
1896	3596	1
1897	3597	1
1898	3598	1
1899	3599	1
1900	3599	2
1901	3600	1
1902	3600	2
1903	3601	1
1904	3602	1
1905	3603	1
1906	3604	1
1907	3605	1
1908	3606	1
1909	3607	1
1910	3607	2
1911	3608	1
1912	3609	1
1913	3610	1
1914	3610	2
1915	3611	1
1916	3612	1
1917	3612	2
1918	3612	2
1919	3613	1
1920	3613	2
1921	3613	3
1922	3614	1
1923	3615	1
1924	3615	1
1925	3615	2
1926	3615	2
1927	3615	3
1928	3616	1
1929	3617	1
1930	3618	1
1931	3619	1
1932	3620	3
1933	3621	1
1934	3622	1
1935	2877	1
1936	2877	2
1937	3623	1
1938	3624	1
1939	3625	1
1940	3625	2
1941	3625	4
1942	3626	3
1943	3627	1
1944	3628	1
1945	3629	3
1946	3629	4
1947	3630	1
1948	3631	1
1949	3631	2
1950	3631	3
1951	3632	1
1952	3633	1
1953	3634	1
1954	3635	1
1955	3636	5
1956	3636	6
1957	3636	7
1958	3636	8
1959	3636	9
1960	3636	10
1961	3637	3
1962	3637	4
1963	3637	5
1964	3638	1
1965	3639	2
1966	3639	3
1967	3639	4
1968	3640	1
1969	2766	1
1970	3641	1
1971	3642	1
1972	3643	5
1973	3644	1
1974	3644	3
1975	3644	4
1976	3644	5
1977	3645	2
1978	3645	3
1979	3645	4
1980	3645	5
1981	3645	6
1982	3645	7
1983	3646	1
1984	3481	2
1985	3481	5
1986	3647	3
1987	3647	4
1988	3647	5
1989	3647	6
1990	3648	1
1991	3648	2
1992	3649	5
1993	3650	1
1994	3651	1
1995	3652	1
1996	3653	1
1997	3654	1
1998	3655	2
1999	3655	3
2000	3656	1
2001	3656	2
2002	3657	1
2003	3658	1
2004	3659	1
2005	3659	2
2006	3660	2
2007	3661	1
2008	3661	2
2009	3662	1
2010	3663	1
2011	3664	1
2012	3665	1
2013	3666	1
2014	3667	1
2015	3668	1
2016	3668	2
2017	3668	3
2018	3669	1
2019	3669	2
2020	3670	1
2021	3670	2
2022	3670	3
2023	3671	2
2024	3672	1
2025	3673	1
2026	3673	2
2027	3674	2
2028	3674	3
2029	3674	4
2030	3675	2
2031	3675	3
2032	3675	4
2033	3676	3
2034	3676	4
2035	3677	1
2036	3678	1
2037	3679	1
2038	3680	1
2039	3681	1
2040	3080	1
2041	3682	1
2042	3683	1
2043	3684	1
2044	3685	2
2045	3685	3
2046	3685	4
2047	3685	5
2048	2921	1
2049	3686	1
2050	3686	1
2051	3687	3
2052	3687	4
2053	3687	5
2054	3688	1
2055	3689	1
2056	3690	1
2057	3690	2
2058	3691	1
2059	3692	1
2060	3692	2
2061	3693	1
2062	3693	2
2063	3693	3
2064	3694	1
2065	2966	4
2066	3695	1
2067	3695	2
2068	3695	2
2069	3695	3
2070	3695	4
2071	3696	1
2072	3696	2
2073	3696	3
2074	3696	4
2075	3697	1
2076	3698	1
2077	3699	1
2078	3700	1
2079	3700	2
2080	3701	1
2081	3701	1
2082	3701	2
2083	3701	3
2084	3701	4
2085	3702	1
2086	3702	2
2087	3702	3
2088	3702	4
2089	3703	1
2090	3704	1
2091	3704	2
2092	3704	3
2093	3705	1
2094	3705	2
2095	3705	3
2096	3706	1
2097	3707	1
2098	3708	1
2099	3709	1
2100	3710	1
2101	3711	1
2102	3712	1
2103	3713	1
2104	3713	2
2105	3714	1
2106	3714	6
2107	3715	1
2108	3716	1
2109	2935	1
2110	2638	1
2111	2864	3
2112	3717	2
2113	3718	1
2114	3719	1
2115	3720	1
2116	3720	2
2117	3721	1
2118	3722	1
2119	3722	2
2120	3723	1
2121	3723	2
2122	3724	1
2123	3725	1
2124	3725	2
2125	3725	2
2126	3726	1
2127	3726	1
2128	3726	2
2129	3726	2
2130	3727	1
2131	3614	1
2132	3614	2
2133	3614	3
2134	3728	1
2135	3483	1
2136	3484	1
2137	3340	1
2138	3729	1
2139	3730	1
2140	3731	1
2141	3732	1
2142	3347	1
2143	3347	2
2144	3347	3
2145	3733	1
2146	3101	1
2147	3101	2
2148	3101	3
2149	3734	1
2150	3734	2
2151	3734	3
2152	3735	1
2153	3735	2
2154	3443	1
2155	3736	1
2156	3737	1
2157	2883	1
2158	2883	2
2159	3738	1
2160	3739	1
2161	3739	2
2162	3740	1
2163	3741	1
2164	3741	2
2165	3742	1
2166	3743	1
2167	3744	1
2168	3744	1
2169	3745	1
2170	2870	1
2171	2870	2
2172	3746	1
2173	3747	1
2174	3747	2
2175	3747	3
2176	3747	4
2177	3748	1
2178	3748	2
2179	3748	3
2180	3749	1
2181	3750	1
2182	3751	1
2183	3751	2
2184	3751	3
2185	3751	4
2186	3752	1
2187	3753	1
2188	3753	2
2189	3753	3
2190	3753	3
2191	3754	1
2192	3755	1
2193	3756	1
2194	3757	1
2195	3758	1
2196	3759	1
2197	3759	2
2198	3759	2
2199	3759	3
2200	3759	3
2201	3760	1
2202	3761	1
2203	3762	1
2204	3763	1
2205	3763	2
2206	3763	3
2207	3764	1
2208	3764	1
2209	3765	1
2210	3765	2
2211	3766	1
2212	3766	2
2213	3766	3
2214	3767	1
2215	2713	1
2216	2714	2
2217	2716	3
2218	3768	1
2219	3769	1
2220	3769	1
2221	3770	1
2222	3770	2
2223	3770	3
2224	3770	3
2225	3770	4
2226	3771	1
2227	3772	1
2228	3773	1
2229	3773	1
2230	3773	2
2231	3774	1
2232	3775	1
2233	3775	1
2234	3776	1
2235	3777	1
2236	3778	1
2237	3778	2
2238	3778	3
2239	3778	4
2240	3778	5
2241	3779	3
2242	3780	1
2243	3780	2
2244	3780	3
2245	3780	4
2246	3780	5
2247	3781	2
2248	3781	3
2249	3782	1
2250	3782	2
2251	3782	3
2252	3782	4
2253	3782	5
2254	3782	6
2255	3783	1
2256	3784	1
2257	3784	2
2258	3784	3
2259	3784	4
2260	3784	5
2261	3785	1
2262	3786	1
2263	3786	2
2264	3787	2
2265	3787	3
2266	3787	4
2267	3788	1
2268	3788	2
2269	3789	1
2270	3790	5
2271	3790	7
2272	3791	1
2273	3791	2
2274	3792	1
2275	3793	1
2276	3794	1
2277	3795	1
2278	3796	1
2279	3797	2
2280	3797	3
2281	3798	1
2282	3798	2
2283	3798	3
2284	3799	2
2285	3799	3
2286	3799	4
2287	3800	1
2288	3801	1
2289	3802	1
2290	3803	1
2291	3803	2
2292	3803	3
2293	3804	1
2294	3805	1
2295	3806	1
2296	3806	2
2297	3806	3
2298	3806	4
2299	3807	1
2300	3807	2
2301	3808	1
2302	3809	1
2303	3809	2
2304	3809	3
2305	3809	4
2306	3810	1
2307	3811	1
2308	3812	1
2309	3812	2
2310	3813	1
2311	3111	1
2312	3814	1
2313	3815	1
2314	3255	1
2315	3816	1
2316	3817	1
2317	3818	1
2318	3819	1
2319	3443	1
2320	3820	1
2321	3820	2
2322	3820	3
2323	3820	4
2324	3820	5
2325	3820	5
2326	3821	1
2327	3822	2
2328	3823	1
2329	3823	1
2330	3824	1
2331	3824	2
2332	3825	1
2333	3825	3
2334	3825	4
2335	3825	5
2336	3826	1
2337	3826	2
2338	3826	3
2339	3826	3
2340	3827	1
2341	3827	2
2342	3828	1
2343	3829	3
2344	3829	4
2345	3829	5
2346	3829	6
2347	3829	7
2348	3829	8
2349	3830	1
2350	3830	5
2351	3830	6
2352	3830	7
2353	3831	1
2354	3831	2
2355	3831	3
2356	3831	4
2357	3831	5
2358	3831	6
2359	3831	7
2360	3832	4
2361	3833	4
2362	3833	5
2363	3833	6
2364	3833	7
2365	3833	8
2366	3833	9
2367	3833	10
2368	3833	11
2369	3833	12
2370	3834	2
2371	3834	3
2372	3834	4
2373	3835	6
2374	3835	8
2375	3835	12
2376	3835	13
2377	3835	14
2378	3836	1
2379	3837	1
2380	3838	1
2381	3839	1
2382	3840	1
2383	3841	1
2384	3842	2
2385	3842	4
2386	3842	5
2387	3843	1
2388	3843	2
2389	3843	2
2390	3843	3
2391	3843	3
2392	3844	2
2393	3844	5
2394	3844	7
2395	3844	8
2396	3845	2
2397	3846	4
2398	3846	5
2399	3846	6
2400	3846	7
2401	3846	7
2402	3847	2
2403	3847	3
2404	3847	4
2405	3847	4
2406	3847	4
2407	3848	1
2408	3182	1
2409	3182	2
2410	3849	1
2411	3849	2
2412	3849	3
2413	3850	1
2414	3850	2
2415	3255	2
2416	3851	1
2417	3851	2
2418	3852	1
2419	3852	2
2420	3852	3
2421	3852	4
2422	3853	1
2423	3854	1
2424	3855	1
2425	3855	2
2426	3855	3
2427	3855	4
2428	3855	4
2429	3855	5
2430	3856	1
2431	3856	2
2432	3856	2
2433	3857	1
2434	3857	2
2435	3857	3
2436	3858	1
2437	3858	2
2438	3859	2
2439	3860	2
2440	3860	3
2441	3860	4
2442	3860	5
2443	3861	1
2444	3862	1
2445	3862	2
2446	3862	3
2447	3863	2
2448	3863	3
2449	3863	4
2450	3863	5
2451	3864	1
2452	3864	2
2453	3864	3
2454	3865	2
2455	3866	1
2456	3867	1
2457	3867	1
2458	3868	2
2459	3869	1
2460	3869	2
2461	3869	3
2462	3870	1
2463	3871	1
2464	3872	4
2465	3872	5
2466	3873	1
2467	3874	1
2468	3875	1
2469	3254	1
2470	3876	1
2471	3877	1
2472	3878	1
2473	3879	1
2474	3880	1
2475	3881	1
2476	3882	1
2477	3720	1
2478	3883	1
2479	3884	1
2480	3884	2
2481	3885	1
2482	3886	1
2483	3887	1
2484	3888	1
2485	3888	1
2486	3888	2
2487	3889	1
2488	3889	2
2489	3889	2
2490	3890	1
2491	3890	2
2492	3891	1
2493	3891	2
2494	3891	3
2495	3892	1
2496	3893	1
2497	3893	2
2498	3894	1
2499	3895	1
2500	3895	2
2501	3895	2
2502	3896	1
2503	3897	1
2504	3897	2
2505	3898	1
2506	3898	2
2507	3898	3
2508	3899	1
2509	3900	1
2510	3901	1
2511	3901	2
2512	3902	1
2513	3902	2
2514	3903	1
2515	3904	1
2516	3905	1
2517	3906	1
2518	3906	3
2519	3907	1
2520	3907	2
2521	3907	2
2522	3907	3
2523	3908	1
2524	3908	3
2525	3909	2
2526	3909	3
2527	3909	3
2528	3909	4
2529	3910	1
2530	3910	1
2531	3911	1
2532	3912	1
2533	3912	2
2534	3913	1
2535	3914	1
2536	3915	1
2537	3916	2
2538	3917	1
2539	3917	2
2540	3917	3
2541	3917	4
2542	3917	5
2543	3917	6
2544	3917	7
2545	3918	1
2546	3919	1
2547	3920	1
2548	3921	2
2549	3922	1
2550	3923	2
2551	3923	3
2552	3923	4
2553	3923	5
2554	3923	6
2555	3923	7
2556	3924	1
2557	3925	1
2558	3925	2
2559	3926	2
2560	3927	1
2561	3928	1
2562	3929	2
2563	3929	3
2564	3929	4
2565	3929	5
2566	3929	5
2567	3929	6
2568	3929	7
2569	3929	8
2570	3930	1
2571	3930	1
2572	3931	2
2573	3931	3
2574	3931	3
2575	3931	4
2576	3931	4
2577	3931	5
2578	3931	6
2579	3932	1
2580	3933	1
2581	3933	2
2582	3933	3
2583	3933	4
2584	3933	5
2585	3933	5
2586	3934	2
2587	3934	3
2588	3935	1
2589	3935	1
2590	3935	2
2591	3936	1
2592	3937	1
2593	3938	1
2594	3939	1
2595	3939	2
2596	3940	1
2597	3940	2
2598	3940	3
2599	3941	1
2600	3941	1
2601	3941	1
2602	3941	2
2603	3942	2
2604	3942	3
2605	3942	4
2606	3942	5
2607	3942	5
2608	3942	6
2609	3943	1
2610	3944	1
2611	3944	2
2612	3945	1
2613	3946	1
2614	3947	1
2615	3948	1
2616	3948	2
\.


--
-- Data for Name: c_s_app_generationlist; Type: TABLE DATA; Schema: public; Owner: user1
--

COPY public.c_s_app_generationlist (id, name) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
11	11
12	12
13	13
14	14
15	15
\.


--
-- Data for Name: c_s_app_mark; Type: TABLE DATA; Schema: public; Owner: user1
--

COPY public.c_s_app_mark (id, name) FROM stdin;
1	acura
2	aixam
3	alfa romeo
4	alpine
5	am
6	amc
7	aston martin
8	audi
9	auto
10	autobianchi
11	baojun
12	bentley
13	besturn
14	bicycle
15	bike
16	blakely
17	bmw
18	bogdan
19	bradley
20	brilliance
21	buick
22	byd
23	cadillac
24	chery
25	chevrolet
26	chrysler
27	citroen
28	dacia
29	dadi
30	daewoo
31	daf
32	daihatsu
33	datsun
34	dodge
35	dongfeng
36	etalon
37	fav
38	ferrari
39	fiat
40	ford
41	gaz
42	gazon
43	geely
44	gmc
45	great wall
46	holden
47	honda
48	hummer
49	hyundai
50	ikco
51	infiniti
52	isuzu
53	iveco
54	izh
55	jac
56	jaguar
57	jeep
58	kamaz
59	kia
60	koenigsegg
61	kraz
62	lada
63	lamborghini
64	lancia
65	land rover
66	lexus
67	lifan
68	ligier
69	lincoln
70	lotus
71	luaz
72	man
73	maserati
74	maybach
75	maz
76	mazda
77	mercedes
78	mercury
79	mg
80	mini
81	mitsubishi
82	moscvitch
83	mosvitch
84	neoplan
85	nissan
86	oldsmobile
87	opel
88	paz
89	peugeot
90	plymouth
91	polaris
92	polonez
93	pontiac
94	porsche
95	ram
96	ravon
97	renault
98	roewe
99	rolls royce
100	rover
101	saab
102	saturn
103	scania
104	scion
105	seat
106	skoda
107	smart
108	solaris
109	ssang yong
110	subaru
111	suzuki
112	tata
113	tavriya
114	tesla
115	toyota
116	triumph
117	uaz
118	van hool
119	volvo
120	vw
121	wartburg
122	zaz
\.


--
-- Data for Name: c_s_app_model; Type: TABLE DATA; Schema: public; Owner: user1
--

COPY public.c_s_app_model (id, name, mark_id) FROM stdin;
2617	cl	1
2618	el	1
2619	ilx	1
2620	integra	1
2621	legend	1
2622	mdx	1
2623	nsx	1
2624	rdx	1
2625	rl	1
2626	slx	1
2627	tl	1
2628	tlx	1
2629	tsx	1
2630	vigor	1
2631	zdx	1
2632	a721	2
2633	city	2
2634	crossline	2
2635	crossover	2
2636	mega	2
2637	scouty	2
2638	75	3
2639	146	3
2640	147	3
2641	156	3
2642	159	3
2643	164	3
2644	166	3
2645	4c	3
2646	alfetta	3
2647	brera	3
2648	giulia	3
2649	giulietta	3
2650	gt	3
2651	gtv	3
2652	mito	3
2653	spider	3
2654	stelvio	3
2655	a110	4
2656	hummer h1	5
2657	jeep dj5	5
2658	ambassador	6
2659	amx	6
2660	eagle	6
2661	hornet	6
2662	javelin	6
2663	rambler ambassador	6
2664	rambler american	6
2665	rambler classic	6
2666	db11	7
2667	db9	7
2668	dbs	7
2669	rapide	7
2670	vanquish	7
2671	vantage	7
2672	80	8
2673	90	8
2674	100	8
2675	a1	8
2676	a2	8
2677	a3	8
2678	a4	8
2679	a5	8
2680	a6	8
2681	a7	8
2682	a8	8
2683	allroad	8
2684	e tron	8
2685	q2	8
2686	q3	8
2687	q5	8
2688	q7	8
2689	q8	8
2690	quattro	8
2691	r8	8
2692	tt	8
2693	crane	9
2694	bianchina	10
2695	510	11
2696	560	11
2697	630	11
2698	730	11
2699	arnage	12
2700	bentayga	12
2701	brooklands	12
2702	continental flying spur	12
2703	continental gt	12
2704	mulsanne	12
2705	turbo r	12
2706	b30	13
2707	bicycle	14
2708	cruiser	15
2709	scooter	15
2710	sport	15
2711	touring	15
2712	bearcat	16
2713	1	17
2714	2	17
2715	02	17
2716	3	17
2717	4	17
2718	5	17
2719	6	17
2720	7	17
2721	8	17
2722	2 mpv	17
2723	i3	17
2724	i8	17
2725	x1	17
2726	x2	17
2727	x3	17
2728	x4	17
2729	x5	17
2730	x6	17
2731	x7	17
2732	z3	17
2733	z4	17
2734	a091	18
2735	a092	18
2736	t90110	18
2737	bs4	20
2738	apollo	21
2739	centurion	21
2740	century	21
2741	electra	21
2742	enclave	21
2743	encore	21
2744	excelle	21
2745	gl8	21
2746	gran sport	21
2747	grand national	21
2748	invicta	21
2749	lacrosse	21
2750	le sabre	21
2751	lucerne	21
2752	park avenue	21
2753	rainier	21
2754	reatta	21
2755	regal	21
2756	rendezvous	21
2757	riviera	21
2758	roadmaster	21
2759	skylark	21
2760	terraza	21
2761	verano	21
2762	wildcat	21
2763	e5	22
2764	f0	22
2765	f3	22
2766	g5	22
2767	tang	22
2768	allante	23
2769	ats	23
2770	brougham	23
2771	calais	23
2772	cimarron	23
2773	ct6	23
2774	cts	23
2775	de ville	23
2776	dts	23
2777	eldorado	23
2778	elr	23
2779	escalade	23
2780	fleetwood	23
2781	fleetwood 75	23
2782	seville	23
2783	srx	23
2784	sts	23
2785	xlr	23
2786	xt5	23
2787	xts	23
2788	a13	24
2789	a15	24
2790	arrizo 3	24
2791	arrizo 7	24
2792	beat	24
2793	e3	24
2794	karry	24
2795	qq	24
2796	qq6	24
2797	tiggo	24
2798	tiggo 2	24
2799	tiggo 3	24
2800	tiggo 3xe	24
2801	tiggo 5	24
2802	tiggo 5x	24
2803	tiggo 7	24
2804	tiggo 8	24
2805	astro	25
2806	avalanche	25
2807	aveo	25
2808	beretta	25
2809	bolt	25
2810	c k	25
2811	c k truck	25
2812	camaro	25
2813	caprice	25
2814	captiva	25
2815	cavalier	25
2816	celebrity	25
2817	chevelle	25
2818	chevette	25
2819	cobalt	25
2820	colorado	25
2821	corsica	25
2822	corvette	25
2823	cruze	25
2824	el camino	25
2825	epica	25
2826	equinox	25
2827	evanda	25
2828	explorer	25
2829	express	25
2830	g	25
2831	hhr	25
2832	impala	25
2833	k5 blazer	25
2834	kodiak	25
2835	lacetti	25
2836	lumina	25
2837	lumina apv	25
2838	malibu	25
2839	metro	25
2840	montecarlo	25
2841	monza	25
2842	niva	25
2843	nova	25
2844	orlando	25
2845	prizm	25
2846	s10	25
2847	s10 blazer	25
2848	sail	25
2849	silverado	25
2850	spark	25
2851	ssr	25
2852	suburban	25
2853	tacuma	25
2854	tahoe	25
2855	tracker	25
2856	trailblazer	25
2857	traverse	25
2858	trax	25
2859	uplander	25
2860	vega	25
2861	venture	25
2862	volt	25
2863	yukon	25
2864	200	26
2865	300	26
2866	300m	26
2867	cirrus	26
2868	concorde	26
2869	conquest	26
2870	cordoba	26
2871	crossfire	26
2872	fifth avenue	26
2873	imperial	26
2874	intrepid	26
2875	lebaron	26
2876	lhs	26
2877	neon	26
2878	new yorker	26
2879	newport	26
2880	pacifica	26
2881	pt cruiser	26
2882	sebring	26
2883	tc	26
2884	town & country	26
2885	ax	27
2886	berlingo	27
2887	bx	27
2888	c crosser	27
2889	c elysee	27
2890	c quatre	27
2891	c triomphe	27
2892	c1	27
2893	c2	27
2894	c3	27
2895	c3 aircross	27
2896	c3 picasso	27
2897	c3 pluriel	27
2898	c3 xr	27
2899	c4	27
2900	c4 aicross	27
2901	c4 cactus	27
2902	c4 picasso	27
2903	c5	27
2904	c5 aircross	27
2905	c6	27
2906	c8	27
2907	ds3	27
2908	ds4	27
2909	ds5	27
2910	ds7	27
2911	evasion	27
2912	jumper	27
2913	jumpy	27
2914	mehari	27
2915	nemo	27
2916	saxo	27
2917	space tourer	27
2918	xantia	27
2919	xsara	27
2920	xsara picasso	27
2921	dokker	28
2922	lodgy	28
2923	logan	28
2924	shuttle	29
2925	smoothing	29
2926	espero	30
2927	gentra	30
2928	lanos	30
2929	lanos pickup	30
2930	leganza	30
2931	matiz	30
2932	nexia	30
2933	nubira	30
2934	tico	30
2935	45	31
2936	cf	31
2937	xf	31
2938	applause	32
2939	cuore	32
2940	feroza	32
2941	materia	32
2942	rocky	32
2943	sirion	32
2944	terios	32
2945	yrv	32
2946	240z	33
2947	260z	33
2948	280z	33
2949	300z	33
2950	b210	33
2951	aspen	34
2952	avenger	34
2953	caliber	34
2954	challenger	34
2955	charger	34
2956	colt	34
2957	d100	34
2958	dakota	34
2959	dart	34
2960	dart pf	34
2961	daytona	34
2962	durango	34
2963	dynasty	34
2964	grand caravan	34
2965	journey	34
2966	magnum	34
2967	nitro	34
2968	95	34
2969	ramcharger	34
2970	shadow	34
2971	spirit	34
2972	viper	34
2973	honda cr v	35
2974	k02	35
2975	a079.52	36
2976	a08129	36
2977	v2	37
2978	v5	37
2979	208	38
2980	360	38
2981	456	38
2982	458	38
2983	488	38
2984	599	38
2985	812	38
2986	california	38
2987	dino	38
2988	f430	38
2989	gtc4lusso	38
2990	mondial	38
2991	portofino	38
2992	testarosa	38
2993	125	39
2994	126	39
2995	131	39
2996	132	39
2997	500	39
2998	500l	39
2999	500x	39
3000	albea	39
3001	brava	39
3002	bravo	39
3003	cinquecento	39
3004	coupe	39
3005	croma	39
3006	doblo	39
3007	ducato	39
3008	fiorino	39
3009	fullback	39
3010	idea	39
3011	linea	39
3012	marea	39
3013	multipla	39
3014	palio	39
3015	panda	39
3016	punto	39
3017	qubo	39
3018	scudo	39
3019	sedici	39
3020	seicento	39
3021	siena	39
3022	stilo	39
3023	talento	39
3024	tipo	39
3025	tipo new	39
3026	ulysse	39
3027	uno	39
3028	viaggio	39
3029	x1 9	39
3030	aerostar	40
3031	aspire	40
3032	b max	40
3033	bronco	40
3034	c max	40
3035	club wagon	40
3036	contour	40
3037	cougar	40
3038	courier	40
3039	crown victoria	40
3040	ecosport	40
3041	edge	40
3042	escape	40
3043	escort	40
3044	excursion	40
3045	expedition	40
3046	f series	40
3047	festiva	40
3048	fiesta	40
3049	flex	40
3050	focus	40
3051	fusion	40
3052	galaxy	40
3053	granada	40
3054	grand torino	40
3055	ka	40
3056	kuga	40
3057	ltd	40
3058	maverick	40
3059	mondeo	40
3060	mustang	40
3061	pinto	40
3062	probe	40
3063	puma crossover	40
3064	ranchero	40
3065	ranger	40
3066	s max	40
3067	scorpio	40
3068	sierra	40
3069	super duty	40
3070	taurus	40
3071	taurus x	40
3072	tempo	40
3073	thunderbird	40
3074	tourneo connect	40
3075	tourneo custom	40
3076	transit	40
3077	transit connect	40
3078	transit custom	40
3079	windstar	40
3080	21	41
3081	24	41
3082	51	41
3083	53	41
3084	69	41
3085	3110	41
3086	3309	41
3087	31105	41
3088	3310 valdai	41
3089	chaika 13	41
3090	gazelle	41
3091	m20	41
3092	next	42
3093	ck	43
3094	emgrand	43
3095	emgrand ec8	43
3096	emgrand gs	43
3097	englon sc6	43
3098	fc	43
3099	fleagle	43
3100	mk	43
3101	sl	43
3102	yuanjing	43
3103	yuanjing suv	43
3104	yuanjing x6	43
3105	acadia	44
3106	c series	44
3107	caballero	44
3108	canyon	44
3109	envoy	44
3110	k series	44
3111	safari	44
3112	savana	44
3113	sonoma	44
3114	terrain	44
3115	topkick	44
3116	deer	45
3117	h8	45
3118	haval h1	45
3119	haval h2	45
3120	haval h2s	45
3121	haval h3	45
3122	haval h6	45
3123	haval h9	45
3124	haval m4	45
3125	safe	45
3126	voleex c30	45
3127	voleex c50	45
3128	wingle 5	45
3129	wingle 6	45
3130	commodore	46
3131	accord	47
3132	avancier	47
3133	civic	47
3134	concerto	47
3135	cr v	47
3136	cr z	47
3137	cr-z	47
3138	crider	47
3139	crosstour	47
3140	crx	47
3141	element	47
3142	elysion	47
3143	fit	47
3144	fr v	47
3145	hr v	47
3146	hr-v	47
3147	insight	47
3148	jazz	47
3149	logo	47
3150	odyssey	47
3151	passport	47
3152	pilot	47
3153	prelude	47
3154	ridgeline	47
3155	s2000	47
3156	stepwgn	47
3157	stream	47
3158	xrv	47
3159	h1	48
3160	h2	48
3161	h3	48
3162	accent	49
3163	atos	49
3164	creta	49
3165	elantra	49
3166	elantra yuedong	49
3167	entourage	49
3168	equus	49
3169	excel	49
3170	genesis	49
3171	getz	49
3172	grandeur	49
3173	h100	49
3174	hd120	49
3175	i10	49
3176	i20	49
3177	i30	49
3178	i40	49
3179	ioniq	49
3180	ix20	49
3181	kona	49
3182	matrix	49
3183	monica	49
3184	santa fe	49
3185	sonata	49
3186	sonata ling xiang	49
3187	terracan	49
3188	tiburon	49
3189	trajet	49
3190	tucson	49
3191	universe	49
3192	veloster	49
3193	veracruz	49
3194	samand lx	50
3195	ex25	51
3196	fx	51
3197	i35	51
3198	j30	51
3199	m	51
3200	q30	51
3201	q45	51
3202	q50	51
3203	q60	51
3204	q70	51
3205	qx	51
3206	qx30	51
3207	qx50	51
3208	qx60	51
3209	qx80	51
3210	ascender	52
3211	ataman	52
3212	axiom	52
3213	d max	52
3214	hombre pickup	52
3215	mu series	52
3216	rodeo	52
3217	trooper	52
3218	vehicross	52
3219	daily	53
3220	stralis	53
3221	2125	54
3222	2126	54
3223	2717	54
3224	27175	54
3225	j4	55
3226	j5	55
3227	refine m5	55
3228	refine s2	55
3229	s3	55
3230	t8	55
3231	e pace	56
3232	f pace	56
3233	i pace	56
3234	s type	56
3235	s-type	56
3236	x type	56
3237	x-type	56
3238	xe	56
3239	xf type	56
3240	xj	56
3241	xj series	56
3242	xjs	56
3243	xk	56
3244	xkr	56
3245	cherokee	57
3246	cj7	57
3247	comanche	57
3248	commander	57
3249	compass	57
3250	grand cherokee	57
3251	grand wagoneer	57
3252	j8	57
3253	liberty	57
3254	patriot	57
3255	pickup	57
3256	renegade	57
3257	scrambler	57
3258	wrangler	57
3259	wrangler tj	57
3260	4308	58
3261	5320	58
3262	5460	58
3263	55111	58
3264	amanti	59
3265	cadenza	59
3266	carens	59
3267	carnival	59
3268	ceed	59
3269	cerato	59
3270	forte	59
3271	koup	59
3272	kx3	59
3273	niro	59
3274	opirus	59
3275	optima	59
3276	picanto	59
3277	rio	59
3278	rondo	59
3279	sedona	59
3280	sephia	59
3281	sorento	59
3282	soul	59
3283	spectra	59
3284	sportage	59
3285	stinger	59
3286	stonic	59
3287	venga	59
3288	agera	60
3289	6510	61
3290	65055	61
3291	2101	62
3292	2102	62
3293	2103	62
3294	2104	62
3295	2105	62
3296	2106	62
3297	2107	62
3298	2108	62
3299	2109	62
3300	2110	62
3301	2111	62
3302	2112	62
3303	2113	62
3304	2114	62
3305	2115	62
3306	2171	62
3307	21099	62
3308	granta	62
3309	kalina	62
3310	largus	62
3311	oka	62
3312	priora	62
3313	vesta	62
3314	xray	62
3315	aventador	63
3316	gallardo	63
3317	huracan	63
3318	urus	63
3319	delta	64
3320	kappa	64
3321	lybra	64
3322	musa	64
3323	phedra	64
3324	thema	64
3325	thesis	64
3326	y10	64
3327	ypsilon	64
3328	defender	65
3329	discovery	65
3330	evoque	65
3331	freelander	65
3332	range rover	65
3333	ct	66
3334	es	66
3335	gs	66
3336	gx	66
3337	hs250h	66
3338	is	66
3339	lc	66
3340	ls	66
3341	lx	66
3342	nx	66
3343	nx200t	66
3344	rc	66
3345	rc350	66
3346	rx	66
3347	sc	66
3348	ux	66
3349	breez	67
3350	solano	67
3351	x60	67
3352	xuanlang	67
3353	j50	68
3354	x too	68
3355	aviator	69
3356	blackwood	69
3357	continental	69
3358	mark lt	69
3359	mark series	69
3360	mkc	69
3361	mks	69
3362	mkt	69
3363	mkx	69
3364	mkz	69
3365	navigator	69
3366	town car	69
3367	towncar	69
3368	elan	70
3369	elise	70
3370	esprit	70
3371	evora	70
3372	969	71
3373	m90	72
3374	tgx	72
3375	biturbo	73
3376	ghibli	73
3377	gran turismo	73
3378	gransport	73
3379	granturismo	73
3380	levante	73
3381	quattroporte	73
3382	spyder	73
3383	57	74
3384	62	74
3385	5336	75
3386	5549	75
3387	206069	75
3388	551633	75
3389	323	76
3390	626	76
3391	929	76
3392	323f	76
3393	b	76
3394	b series	76
3395	bongo	76
3396	cx 3	76
3397	cx 30	76
3398	cx 5	76
3399	cx 7	76
3400	cx 9	76
3401	cx5	76
3402	cx7	76
3403	cx9	76
3404	lantis	76
3405	mpv	76
3406	mx 5	76
3407	mx3	76
3408	mx6	76
3409	navajo	76
3410	rx7	76
3411	rx8	76
3412	speed3	76
3413	tribute	76
3414	xedos	76
3415	190	77
3416	250	77
3417	190 series	77
3418	220d	77
3419	240d	77
3420	250 sl	77
3421	300d	77
3422	a	77
3423	actros	77
3424	axor 3236	77
3425	c	77
3426	citan	77
3427	cla	77
3428	cla250	77
3429	clk	77
3430	cls	77
3431	e	77
3432	gl	77
3433	gla	77
3434	glb	77
3435	glc	77
3436	gle	77
3437	glk	77
3438	gls	77
3439	mb100	77
3440	ml	77
3441	o309	77
3442	r	77
3443	s	77
3444	s coupe	77
3445	slk	77
3446	slr	77
3447	sprinter	77
3448	t1	77
3449	vaneo	77
3450	vito	77
3451	w123	77
3452	x	77
3453	capri	78
3454	grandmarquis	78
3455	marauder revival	78
3456	mariner	78
3457	milan	78
3458	montego	78
3459	monterey	78
3460	mountaineer	78
3461	sable	78
3462	topaz	78
3463	tracer	78
3464	villager	78
3465	zr	79
3466	clubman	80
3467	cooper	80
3468	countryman	80
3469	paceman	80
3470	3000gt	81
3471	asx	81
3472	carisma	81
3473	chariot	81
3474	delica	81
3475	diamante	81
3476	eclipse	81
3477	eclipse cross	81
3478	endeavor	81
3479	galant	81
3480	grandis	81
3481	gto	81
3482	i miev	81
3483	l200	81
3484	l300	81
3485	lancer	81
3486	mighty max	81
3487	mirage	81
3488	montero	81
3489	outlander	81
3490	pajero	81
3491	pajero pinin	81
3492	pajero sport	81
3493	raider	81
3494	space star	81
3495	starion	81
3496	412	82
3497	2141	82
3498	megaliner	84
3499	starliner	84
3500	720	85
3501	240sx	85
3502	300zx	85
3503	350z	85
3504	370z	85
3505	almera	85
3506	almera classic	85
3507	altima	85
3508	armada	85
3509	bluebird	85
3510	cima	85
3511	cube	85
3512	frontier	85
3513	gt r	85
3514	gtr	85
3515	juke	85
3516	latio	85
3517	leaf	85
3518	livina	85
3519	maxima	85
3520	micra	85
3521	murano	85
3522	navara	85
3523	note	85
3524	np300	85
3525	nv200	85
3526	nv400	85
3527	pathfinder	85
3528	patrol	85
3529	pino	85
3530	pixo	85
3531	presage	85
3532	primera	85
3533	pulsar	85
3534	qashqai	85
3535	quest	85
3536	rogue	85
3537	sentra	85
3538	stanza	85
3539	sunny	85
3540	sylphy	85
3541	teana	85
3542	terrano	85
3543	tiida	85
3544	tino	85
3545	titan	85
3546	vanette	85
3547	x trail	85
3548	xterra	85
3549	achieva	86
3550	alero	86
3551	aurora	86
3552	bravada	86
3553	cutlass	86
3554	eightyeight	86
3555	intrigue	86
3556	ninetyeight	86
3557	omega	86
3558	silhouette	86
3559	toronado	86
3560	adam	87
3561	agila	87
3562	ampera	87
3563	antara	87
3564	ascona	87
3565	astra	87
3566	combo	87
3567	corsa	87
3568	crossland	87
3569	frontera	87
3570	grandland x	87
3571	insignia	87
3572	kadett	87
3573	karl	87
3574	meriva	87
3575	mokka	87
3576	movano	87
3577	signum	87
3578	sintra	87
3579	tigra	87
3580	vectra	87
3581	vivaro	87
3582	zafira	87
3583	3205	88
3584	106	89
3585	107	89
3586	108	89
3587	205	89
3588	206	89
3589	207	89
3590	301	89
3591	304	89
3592	306	89
3593	307	89
3594	308	89
3595	309	89
3596	405	89
3597	406	89
3598	407	89
3599	408	89
3600	508	89
3601	605	89
3602	607	89
3603	806	89
3604	807	89
3605	1007	89
3606	2008	89
3607	3008	89
3608	4007	89
3609	4008	89
3610	5008	89
3611	bipper	89
3612	boxer	89
3613	expert	89
3614	ion	89
3615	partner	89
3616	rcz	89
3617	rifter	89
3618	traveller	89
3619	acclaim	90
3620	barracuda	90
3621	breeze	90
3622	horizon	90
3623	prowler	90
3624	reliant	90
3625	roadrunner	90
3626	satellite	90
3627	sundance	90
3628	trailduster	90
3629	valiant	90
3630	volare	90
3631	voyager	90
3632	slingshot	91
3633	1.5	92
3634	caro	92
3635	aztek	93
3636	bonneville	93
3637	catalina	93
3638	fiero	93
3639	firebird	93
3640	g39	93
3641	g6	93
3642	g8	93
3643	gran prix	93
3644	grandam	93
3645	grandprix	93
3646	grandville	93
3647	lemans	93
3648	montana	93
3649	parisienne	93
3650	pursuit	93
3651	solstice	93
3652	sunbird	93
3653	sunfire	93
3654	torrent	93
3655	transam	93
3656	vibe	93
3657	356	94
3658	718	94
3659	911	94
3660	912	94
3661	914	94
3662	944	94
3663	991	94
3664	992	94
3665	993	94
3666	996	94
3667	997	94
3668	boxster	94
3669	boxter	94
3670	cayenne	94
3671	cayman	94
3672	macan	94
3673	panamera	94
3674	1500	95
3675	2500	95
3676	3500	95
3677	r2	96
3678	r4	96
3679	11	97
3680	18	97
3681	19	97
3682	25	97
3683	avantime	97
3684	captur	97
3685	clio	97
3686	duster	97
3687	espace	97
3688	fluence	97
3689	kadjar	97
3690	kangoo	97
3691	kerax	97
3692	koleos	97
3693	laguna	97
3694	latitude	97
3695	master	97
3696	megane	97
3697	modus	97
3698	premium	97
3699	safrane	97
3700	sandero	97
3701	scenic	97
3702	symbol	97
3703	talisman	97
3704	trafic	97
3705	twingo	97
3706	twizy	97
3707	vel satis	97
3708	zoe	97
3709	350	98
3710	550	98
3711	750	98
3712	rx5	98
3713	corniche	99
3714	phantom	99
3715	silvershadow	99
3716	wraith	99
3717	400	100
3718	600	100
3719	800	100
3720	900	101
3721	9000	101
3722	9-3	101
3723	9-5	101
3724	9-7	101
3725	9 3	101
3726	9 5	101
3727	aura	102
3728	l100	102
3729	lw200	102
3730	lw300	102
3731	outlook	102
3732	relay	102
3733	sky	102
3734	sw2	102
3735	vue	102
3736	frs	104
3737	iq	104
3738	xa	104
3739	xb	104
3740	xd	104
3741	alhambra	105
3742	altea	105
3743	arona	105
3744	arosa	105
3745	ateca	105
3746	exeo	105
3747	ibiza	105
3748	leon	105
3749	mii	105
3750	tarraco	105
3751	toledo	105
3752	citigo	106
3753	fabia	106
3754	favorit	106
3755	felicia	106
3756	kamiq	106
3757	karoq	106
3758	kodiaq	106
3759	octavia	106
3760	rapid	106
3761	roomster	106
3762	scala	106
3763	superb	106
3764	yeti	106
3765	forfour	107
3766	fortwo	107
3767	roadster	107
3768	urbinos	108
3769	actyon	109
3770	korando	109
3771	kyron	109
3772	musso	109
3773	rexton	109
3774	rodius	109
3775	tivoli	109
3776	baja	110
3777	brz	110
3778	forester	110
3779	gl10	110
3780	impreza	110
3781	justy	110
3782	legacy	110
3783	levorg	110
3784	outback	110
3785	svx	110
3786	tribeca	110
3787	wrx	110
3788	xv	110
3789	aerio	111
3790	alto	111
3791	baleno	111
3792	celerio	111
3793	equator	111
3794	esteem	111
3795	esteem wagon	111
3796	forenza	111
3797	grand vitara	111
3798	ignis	111
3799	jimny	111
3800	kizashi	111
3801	liana	111
3802	reno	111
3803	samurai	111
3804	sidekick	111
3805	splash	111
3806	swift	111
3807	sx4	111
3808	verona	111
3809	vitara	111
3810	wagon r	111
3811	x90	111
3812	xl7	111
3813	indica	112
3814	1102	113
3815	1105	113
3816	slavuta	113
3817	model 3	114
3818	model s	114
3819	model x	114
3820	4runner	115
3821	aqua	115
3822	aristo	115
3823	aurion	115
3824	auris	115
3825	avalon	115
3826	avensis	115
3827	aygo	115
3828	c hr	115
3829	camry	115
3830	carina	115
3831	celica	115
3832	chaser	115
3833	corolla	115
3834	cressida	115
3835	crown	115
3836	echo	115
3837	estima	115
3838	fj cruiser	115
3839	fj40	115
3840	fortuner	115
3841	gt86	115
3842	hiace	115
3843	highlander	115
3844	hilux	115
3845	ipsum	115
3846	land cruiser	115
3847	land cruiser prado	115
3848	landcruiser	115
3849	mr2	115
3850	paseo	115
3851	previa	115
3852	prius	115
3853	prius c	115
3854	proace	115
3855	rav 4	115
3856	sequoia	115
3857	sienna	115
3858	solara	115
3859	starlet	115
3860	supra	115
3861	t100	115
3862	tacoma	115
3863	tercel	115
3864	tundra	115
3865	urban cruiser	115
3866	venza	115
3867	verso	115
3868	verso s	115
3869	yaris	115
3870	yaris verso	115
3871	gt6	116
3872	spitfire	116
3873	452	117
3874	469	117
3875	hunter	117
3876	t9	118
3877	260	119
3878	440	119
3879	460	119
3880	740	119
3881	760	119
3882	850	119
3883	940	119
3884	960	119
3885	140 series	119
3886	200 series	119
3887	b12	119
3888	c30	119
3889	c70	119
3890	s40	119
3891	s60	119
3892	s70	119
3893	s80	119
3894	s90	119
3895	v40	119
3896	v50	119
3897	v60	119
3898	v70	119
3899	v90	119
3900	xc40	119
3901	xc60	119
3902	xc90	119
3903	amarok	120
3904	arteon	120
3905	atlas	120
3906	beetle	120
3907	bora	120
3908	cabriolet	120
3909	caddy	120
3910	cc	120
3911	corrado	120
3912	crafter	120
3913	eos	120
3914	eurovan	120
3915	fox	120
3916	gol	120
3917	golf	120
3918	golf plus	120
3919	golf r32	120
3920	golf sv	120
3921	gran lavida	120
3922	iltis	120
3923	jetta	120
3924	lamando	120
3925	lavida	120
3926	lt	120
3927	lupo	120
3928	new beetle	120
3929	passat	120
3930	phaeton	120
3931	polo	120
3932	routan	120
3933	santana	120
3934	scirocco	120
3935	sharan	120
3936	squareback	120
3937	t cross	120
3938	t roc	120
3939	tiguan	120
3940	touareg	120
3941	touran	120
3942	transporter	120
3943	up	120
3944	vento	120
3945	353	121
3946	forza	122
3947	i van	122
3948	zaporozhets	122
\.


--
-- Data for Name: c_s_app_request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.c_s_app_request (id, start, finish, request_time) FROM stdin;
3	2006-11-01 15:30:00+01	2006-11-02 15:31:00+01	2020-03-11 12:10:43.16513+01
4	2006-11-01 15:30:00+01	2006-11-02 15:31:00+01	2020-03-11 12:10:43.16513+01
47	2020-03-16 01:00:00+01	2020-03-18 00:59:00+01	2020-03-20 08:49:15.21664+01
48	2020-03-16 01:00:00+01	2020-03-17 00:59:00+01	2020-03-20 08:52:02.192108+01
49	2020-03-14 01:00:00+01	2020-03-17 00:59:00+01	2020-03-20 08:53:44.834651+01
50	2020-03-14 01:00:00+01	2020-03-17 00:59:00+01	2020-03-20 09:00:46.298967+01
51	2020-03-17 11:00:00+01	2020-03-17 12:00:00+01	2020-03-20 09:22:47.0584+01
52	2020-03-17 15:00:00+01	2020-03-17 16:00:00+01	2020-03-20 10:38:55.947953+01
53	2020-03-18 01:00:00+01	2020-03-19 00:59:00+01	2020-03-20 10:39:25.358227+01
54	2020-03-18 01:00:00+01	2020-03-19 00:59:00+01	2020-03-20 10:39:53.223422+01
55	2020-03-16 01:00:00+01	2020-03-17 00:59:00+01	2020-03-20 10:41:04.325849+01
56	2020-03-16 11:00:00+01	2020-03-16 11:01:00+01	2020-03-20 10:41:30.572022+01
57	2020-03-16 11:00:00+01	2020-03-16 11:01:00+01	2020-03-20 10:42:10.426909+01
58	2020-03-16 11:00:00+01	2020-03-16 11:01:00+01	2020-03-20 10:43:41.420672+01
59	2020-03-17 11:00:00+01	2020-03-18 11:00:00+01	2020-03-20 10:44:14.905719+01
60	2020-03-17 11:00:00+01	2020-03-17 11:15:00+01	2020-03-20 14:20:25.903436+01
61	2020-03-16 12:00:00+01	2020-03-16 13:00:00+01	2020-03-20 14:21:20.453447+01
62	2020-03-16 12:00:00+01	2020-03-16 12:15:00+01	2020-03-20 14:22:38.293546+01
63	2020-03-16 11:00:00+01	2020-03-16 11:15:00+01	2020-03-20 14:25:20.858353+01
64	2020-03-17 01:00:00+01	2020-03-18 00:59:00+01	2020-03-20 14:27:06.96516+01
65	2020-03-16 01:00:00+01	2020-03-17 00:59:00+01	2020-03-21 10:07:20.164612+01
66	2020-03-16 01:00:00+01	2020-03-17 00:59:00+01	2020-03-21 10:09:24.05606+01
67	2020-03-16 11:00:00+01	2020-03-16 12:00:00+01	2020-03-25 17:04:28.971423+01
68	2020-03-17 01:00:00+01	2020-03-18 00:59:00+01	2020-03-25 17:05:13.890058+01
69	2020-03-20 14:00:00+01	2020-03-20 15:00:00+01	2020-03-25 17:12:40.101171+01
\.


--
-- Data for Name: c_s_app_requestcameraurl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.c_s_app_requestcameraurl (id, url, camera_id, request_id) FROM stdin;
85	\N	6	47
86	\N	6	48
87	\N	6	49
88	rtsp://10.32.2.31:554/openUrl/CiWXlja?beginTime=20200314T020000&endTime=20200317T015900&playBackMode=1	6	50
89	rtsp://10.32.2.31:554/openUrl/bRwu4Mw?beginTime=20200317T120000&endTime=20200317T130000&playBackMode=1	7	51
90	\N	8	52
91	\N	8	53
92	\N	7	54
93	\N	11	55
94	\N	11	56
95	\N	11	57
96	\N	6	58
97	rtsp://10.32.2.31:554/openUrl/0NMpZsI?beginTime=20200317T120000&endTime=20200318T120000&playBackMode=1	6	59
98	\N	6	60
99	\N	7	60
100	\N	10	60
101	\N	11	60
102	\N	8	60
103	\N	9	60
104	\N	6	61
105	\N	7	61
106	\N	10	61
107	\N	11	61
108	\N	8	61
109	\N	9	61
110	\N	6	62
111	\N	7	62
112	\N	10	62
113	\N	11	62
114	\N	8	62
115	\N	9	62
116	\N	6	63
120	\N	11	64
117	rtsp://10.32.2.31:554/openUrl/Wd5qBLG?beginTime=20200317T020000&endTime=20200318T015900&playBackMode=1	6	64
118	rtsp://10.32.2.31:554/openUrl/WdafMYM?beginTime=20200317T020000&endTime=20200318T015900&playBackMode=1	7	64
121	rtsp://10.32.2.31:554/openUrl/Wdzeuqs?beginTime=20200317T020000&endTime=20200318T015900&playBackMode=1	8	64
122	rtsp://10.32.2.31:554/openUrl/WdKiQuY?beginTime=20200317T020000&endTime=20200318T015900&playBackMode=1	9	64
119	rtsp://10.32.2.31:554/openUrl/WdNqqVG?beginTime=20200317T020000&endTime=20200318T015900&playBackMode=1	10	64
123	\N	6	65
124	rtsp://10.32.2.31:554/openUrl/qAlzBC0?beginTime=20200316T020000&endTime=20200317T015900&playBackMode=1	6	66
125	\N	6	67
126	\N	7	67
127	\N	6	68
131	\N	11	69
128	rtsp://10.32.2.31:554/openUrl/i1CeUwg?beginTime=20200320T150000&endTime=20200320T160000&playBackMode=1	6	69
129	rtsp://10.32.2.31:554/openUrl/i1R03hC?beginTime=20200320T150000&endTime=20200320T160000&playBackMode=1	7	69
130	rtsp://10.32.2.31:554/openUrl/i2lWksE?beginTime=20200320T150000&endTime=20200320T160000&playBackMode=1	10	69
132	rtsp://10.32.2.31:554/openUrl/i2czzaw?beginTime=20200320T150000&endTime=20200320T160000&playBackMode=1	8	69
\.


--
-- Data for Name: c_s_app_resultdeepstream; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.c_s_app_resultdeepstream (id, "timestamp", car_number, car_probability, car_photo, camera_id, request_id, car_video, color_probability, car_color_id, car_obj_id) FROM stdin;
277	2020-03-17 11:00:02+01	CB6108BT	86	images/4.png	7	51	videos/0_03.mp4	52	2	100
278	2020-03-17 11:00:02+01	BA7779BE	87	images/4.png	7	51	videos/0_03.mp4	53	3	200
280	2020-03-17 11:00:03+01	AA1834HX	89	images/4.png	7	51	videos/0_03.mp4	55	5	400
281	2020-03-17 11:00:03+01	AA8369CH	90	images/4.png	7	51	videos/0_03.mp4	56	6	500
282	2020-03-17 11:00:03+01	AI8628EB	91	images/4.png	7	51	videos/0_03.mp4	57	10	600
283	2020-03-17 11:00:03+01	AI0578PC	92	images/4.png	7	51	videos/0_03.mp4	58	11	700
284	2020-03-17 11:00:04+01	AA4864OO	93	images/4.png	7	51	videos/0_03.mp4	59	13	800
285	2020-03-17 11:00:06+01	AA5762EM	94	images/4.png	7	51	videos/0_03.mp4	60	14	900
286	2020-03-17 11:00:06+01	MGM 27752	95	images/4.png	7	51	videos/0_03.mp4	61	15	1000
287	2020-03-17 11:00:16+01	AI0732HM	96	images/4.png	7	51	videos/0_03.mp4	62	1	1100
288	2020-03-17 11:00:16+01	??0321KB	97	images/4.png	7	51	videos/0_03.mp4	63	2	1200
289	2020-03-17 11:00:17+01	AA7271OM	98	images/4.png	7	51	videos/0_03.mp4	64	3	1300
290	2020-03-17 11:00:17+01	AT7323ET	85	images/4.png	7	51	videos/0_03.mp4	65	4	1400
291	2020-03-17 11:00:18+01	DAV10	86	images/4.png	7	51	videos/0_03.mp4	66	5	1500
292	2020-03-17 11:00:18+01	CD 0886	87	images/4.png	7	51	videos/0_03.mp4	67	6	1600
293	2020-03-17 11:00:18+01	AI3747CO	88	images/4.png	7	51	videos/0_03.mp4	68	10	1700
294	2020-03-17 11:00:20+01	AA1234TX	89	images/4.png	7	51	videos/0_03.mp4	69	11	1800
295	2020-03-17 11:00:20+01	AA5498XB	90	images/4.png	7	51	videos/0_03.mp4	70	13	1900
296	2020-03-17 11:00:20+01	AI8650HE	91	images/4.png	7	51	videos/0_03.mp4	71	14	2000
297	2020-03-17 11:00:22+01	AA7434IT	92	images/4.png	7	51	videos/0_03.mp4	72	15	2100
298	2020-03-17 11:00:25+01	AE8250BM	93	images/4.png	7	51	videos/0_03.mp4	73	1	2200
299	2020-03-17 11:00:25+01	BA17?5AI	94	images/4.png	7	51	videos/0_03.mp4	74	2	2300
300	2020-03-17 11:00:25+01	BT5360AK	95	images/4.png	7	51	videos/0_03.mp4	75	3	2400
301	2020-03-17 11:00:27+01	AA4439PK	96	images/4.png	7	51	videos/0_03.mp4	76	4	2500
302	2020-03-17 11:00:28+01	BX8746CB	97	images/4.png	7	51	videos/0_03.mp4	77	5	2600
303	2020-03-17 11:00:30+01	BE2509AI	98	images/4.png	7	51	videos/0_03.mp4	78	6	3
304	2020-03-17 11:00:32+01	AI2200BK	85	images/4.png	7	51	videos/0_03.mp4	79	10	103
305	2020-03-17 11:00:32+01	AI3953HI	86	images/4.png	7	51	videos/0_03.mp4	80	11	203
306	2020-03-17 11:00:35+01	AI0756HK	87	images/4.png	7	51	videos/0_03.mp4	81	13	303
307	2020-03-17 11:00:35+01	AI2280A?	88	images/4.png	7	51	videos/0_03.mp4	82	14	403
308	2020-03-17 11:00:43+01	A?????CB	89	images/4.png	7	51	videos/0_03.mp4	83	15	503
309	2020-03-17 11:00:43+01	AA4958TM	90	images/4.png	7	51	videos/0_03.mp4	84	1	603
311	2020-03-17 11:00:47+01	AA3307AA	92	images/4.png	7	51	videos/0_03.mp4	86	3	803
312	2020-03-17 11:00:51+01	AI7497BO	93	images/4.png	7	51	videos/0_03.mp4	87	4	903
313	2020-03-17 11:00:53+01	AA0507HE	94	images/4.png	7	51	videos/0_03.mp4	88	5	1003
314	2020-03-17 11:00:53+01	AA8910HC	95	images/4.png	7	51	videos/0_03.mp4	89	6	1103
315	2020-03-17 11:00:55+01	AI1763CI	96	images/4.png	7	51	videos/0_03.mp4	90	10	1203
316	2020-03-17 11:00:55+01	AA1027PO	97	images/4.png	7	51	videos/0_03.mp4	91	11	1303
317	2020-03-17 11:00:55+01	AI2404BI	98	images/4.png	7	51	videos/0_03.mp4	92	13	1403
318	2020-03-17 11:00:56+01	AH5?86EA	85	images/4.png	7	51	videos/0_03.mp4	93	14	1503
319	2020-03-17 11:00:58+01	BB9990AP	86	images/4.png	7	51	videos/0_03.mp4	94	15	1603
320	2020-03-17 11:00:59+01	????????	87	images/4.png	7	51	videos/0_03.mp4	95	1	10
321	2020-03-17 11:01:00+01	BI1623EB	88	images/4.png	7	51	videos/0_03.mp4	96	2	110
322	2020-03-17 11:01:00+01	AA4619OI	89	images/4.png	7	51	videos/0_03.mp4	97	3	210
323	2020-03-17 11:01:03+01	AA9369EO	90	images/4.png	7	51	videos/0_03.mp4	62	4	310
324	2020-03-17 11:01:06+01	AI5745EB	91	images/4.png	7	51	videos/0_03.mp4	63	5	410
325	2020-03-17 11:01:07+01	AI8561EC	92	images/4.png	7	51	videos/0_03.mp4	64	6	510
326	2020-03-17 11:01:07+01	AI??41EB	93	images/4.png	7	51	videos/0_03.mp4	65	10	610
327	2020-03-17 11:01:11+01	AA??82MH	94	images/4.png	7	51	videos/0_03.mp4	66	11	710
328	2020-03-17 11:01:11+01	BA2977CA	95	images/4.png	7	51	videos/0_03.mp4	67	13	810
329	2020-03-17 11:01:11+01	EH0861EE	96	images/4.png	7	51	videos/0_03.mp4	68	14	910
330	2020-03-17 11:01:11+01	AX0022EP	97	images/4.png	7	51	videos/0_03.mp4	69	15	1010
331	2020-03-17 11:01:13+01	AI9066IK	98	images/4.png	7	51	videos/0_03.mp4	70	1	1110
332	2020-03-17 11:01:15+01	AI5448BH	85	images/4.png	7	51	videos/0_03.mp4	71	2	1210
333	2020-03-17 11:01:15+01	LAT 972	86	images/4.png	7	51	videos/0_03.mp4	72	3	1310
334	2020-03-17 11:01:17+01	BB?5??CM	87	images/4.png	7	51	videos/0_03.mp4	73	4	1410
335	2020-03-17 11:01:19+01	CB5540CA	88	images/4.png	7	51	videos/0_03.mp4	74	5	1510
336	2020-03-17 11:01:20+01	AI9753HC	89	images/4.png	7	51	videos/0_03.mp4	75	6	1610
337	2020-03-17 11:01:20+01	AE7735KT	90	images/4.png	7	51	videos/0_03.mp4	76	10	30
338	2020-03-17 11:01:21+01	BK1756CA	91	images/4.png	7	51	videos/0_03.mp4	77	11	130
339	2020-03-17 11:01:24+01	AA7413TO	92	images/4.png	7	51	videos/0_03.mp4	78	13	230
340	2020-03-17 11:01:24+01	AI4747CH	93	images/4.png	7	51	videos/0_03.mp4	79	14	330
344	2020-03-17 11:01:33+01	AA5740PT	97	images/4.png	7	51	videos/0_03.mp4	83	3	730
345	2020-03-17 11:01:35+01	AA0770PA	98	images/4.png	7	51	videos/0_03.mp4	84	4	830
346	2020-03-17 11:01:38+01	AI3482??	85	images/4.png	7	51	videos/0_03.mp4	85	5	930
347	2020-03-17 11:01:43+01	GER 04037	86	images/4.png	7	51	videos/0_03.mp4	86	6	1030
348	2020-03-17 11:01:43+01	AI7221CE	87	images/4.png	7	51	videos/0_03.mp4	87	10	1130
349	2020-03-17 11:01:45+01	AI6641IB	88	images/4.png	7	51	videos/0_03.mp4	88	11	1230
350	2020-03-17 11:01:47+01	AA5999EH	89	images/4.png	7	51	videos/0_03.mp4	89	13	1330
351	2020-03-17 11:01:49+01	AI8334HT	90	images/4.png	7	51	videos/0_03.mp4	62	14	1430
352	2020-03-17 11:01:51+01	AA1547CI	91	images/4.png	7	51	videos/0_03.mp4	63	15	1530
353	2020-03-17 11:01:51+01	BA8278BA	92	images/4.png	7	51	videos/0_03.mp4	64	1	50
354	2020-03-17 11:01:51+01	AA0359CH	93	images/4.png	7	51	videos/0_03.mp4	65	2	150
355	2020-03-17 11:01:54+01	AA1234IX	94	images/4.png	7	51	videos/0_03.mp4	66	3	250
356	2020-03-17 11:01:54+01	AI5??6IH	95	images/4.png	7	51	videos/0_03.mp4	67	4	350
357	2020-03-17 11:01:55+01	CA4184BE	96	images/4.png	7	51	videos/0_03.mp4	68	5	450
358	2020-03-17 11:01:55+01	AA3304MP	97	images/4.png	7	51	videos/0_03.mp4	69	6	550
359	2020-03-17 11:01:58+01	AA7482MT	98	images/4.png	7	51	videos/0_03.mp4	70	10	650
360	2020-03-17 11:02:00+01	AE6505EX	85	images/4.png	7	51	videos/0_03.mp4	71	11	750
361	2020-03-17 11:02:01+01	AI??4?ET	86	images/4.png	7	51	videos/0_03.mp4	72	13	850
362	2020-03-17 11:02:04+01	AA8526TA	87	images/4.png	7	51	videos/0_03.mp4	73	14	950
363	2020-03-17 11:02:06+01	AI0010CK	88	images/4.png	7	51	videos/0_03.mp4	74	15	1050
407	2020-03-17 11:03:14+01	AH8778BO	90	images/4.png	7	51	videos/0_03.mp4	79	15	630
406	2020-03-17 11:03:14+01	AA1141IX	89	images/4.png	7	51	videos/0_03.mp4	89	14	530
405	2020-03-17 11:03:14+01	AA9600PO	88	images/4.png	7	51	videos/0_03.mp4	88	13	430
404	2020-03-17 11:03:10+01	AI3722EM	87	images/4.png	7	51	videos/0_03.mp4	87	11	730
403	2020-03-17 11:03:10+01	AX4271HM	86	images/4.png	7	51	videos/0_03.mp4	86	10	630
402	2020-03-17 11:03:08+01	AA2735XH	85	images/4.png	7	51	videos/0_03.mp4	85	6	530
401	2020-03-17 11:03:08+01	AA9595TP	98	images/4.png	7	51	videos/0_03.mp4	84	5	430
400	2020-03-17 11:03:04+01	AI9135CB	97	images/4.png	7	51	videos/0_03.mp4	83	4	1580
399	2020-03-17 11:03:00+01	BH7475IT	96	images/4.png	7	51	videos/0_03.mp4	82	3	1530
398	2020-03-17 11:03:00+01	CB8448BH	95	images/4.png	7	51	videos/0_03.mp4	81	2	1480
396	2020-03-17 11:02:59+01	AT9198HO	93	images/4.png	7	51	videos/0_03.mp4	79	15	1380
395	2020-03-17 11:02:59+01	AI7557CO	92	images/4.png	7	51	videos/0_03.mp4	78	14	1330
394	2020-03-17 11:02:59+01	EGZ 795	91	images/4.png	7	51	videos/0_03.mp4	77	13	1280
393	2020-03-17 11:02:59+01	AI????CO	90	images/4.png	7	51	videos/0_03.mp4	76	11	1230
392	2020-03-17 11:02:56+01	AA7009TX	89	images/4.png	7	51	videos/0_03.mp4	75	10	1180
391	2020-03-17 11:02:56+01	AH2214AE	88	images/4.png	7	51	videos/0_03.mp4	74	6	1130
390	2020-03-17 11:02:55+01	AI0888IC	87	images/4.png	7	51	videos/0_03.mp4	73	5	1080
389	2020-03-17 11:02:53+01	AA1547XM	86	images/4.png	7	51	videos/0_03.mp4	72	4	1030
388	2020-03-17 11:02:53+01	AE2448KX	85	images/4.png	7	51	videos/0_03.mp4	71	3	980
387	2020-03-17 11:02:50+01	AA6823KK	98	images/4.png	7	51	videos/0_03.mp4	70	2	930
386	2020-03-17 11:02:50+01	AA????OI	97	images/4.png	7	51	videos/0_03.mp4	69	1	880
385	2020-03-17 11:02:48+01	BB3004EA	96	images/4.png	7	51	videos/0_03.mp4	68	15	830
384	2020-03-17 11:02:46+01	AA7224BI	95	images/4.png	7	51	videos/0_03.mp4	67	14	780
383	2020-03-17 11:02:45+01	AA9756XX	94	images/4.png	7	51	videos/0_03.mp4	66	13	730
382	2020-03-17 11:02:44+01	AI8880BO	93	images/4.png	7	51	videos/0_03.mp4	65	11	680
381	2020-03-17 11:02:42+01	AI9979BB	92	images/4.png	7	51	videos/0_03.mp4	64	10	630
378	2020-03-17 11:02:34+01	AA3885XB	89	images/4.png	7	51	videos/0_03.mp4	89	4	480
377	2020-03-17 11:02:34+01	AA4257BT	88	images/4.png	7	51	videos/0_03.mp4	88	3	430
376	2020-03-17 11:02:34+01	AA3524XA	87	images/4.png	7	51	videos/0_03.mp4	87	2	380
375	2020-03-17 11:02:31+01	AI5573IT	86	images/4.png	7	51	videos/0_03.mp4	86	1	330
374	2020-03-17 11:02:31+01	AI3997ET	85	images/4.png	7	51	videos/0_03.mp4	85	15	280
373	2020-03-17 11:02:31+01	AA7017IK	98	images/4.png	7	51	videos/0_03.mp4	84	14	230
380	2020-03-17 11:02:42+01	AH1557IX	91	images/4.png	7	51	videos/0_03.mp4	63	6	580
379	2020-03-17 11:02:34+01	AA9??0TA	90	images/4.png	7	51	videos/0_03.mp4	62	5	530
372	2020-03-17 11:02:28+01	AE2737AB	97	images/4.png	7	51	videos/0_03.mp4	83	13	180
371	2020-03-17 11:02:28+01	AA7083XH	96	images/4.png	7	51	videos/0_03.mp4	82	11	130
370	2020-03-17 11:02:21+01	AA1413KI	95	images/4.png	7	51	videos/0_03.mp4	81	10	80
369	2020-03-17 11:02:13+01	312-37KC	94	images/4.png	7	51	videos/0_03.mp4	80	6	30
368	2020-03-17 11:02:13+01	AA3915XH	93	images/4.png	7	51	videos/0_03.mp4	79	5	1550
367	2020-03-17 11:02:10+01	AI2?1??	92	images/4.png	7	51	videos/0_03.mp4	78	4	1450
365	2020-03-17 11:02:08+01	AX7000KI	90	images/4.png	7	51	videos/0_03.mp4	76	2	1250
364	2020-03-17 11:02:08+01	AA4331XX	89	images/4.png	7	51	videos/0_03.mp4	75	1	1150
276	2020-03-17 11:00:00+01	AA1071IE	85	images/4.png	7	51	videos/0_03.mp4	51	1	1
279	2020-03-17 11:00:02+01	AB3?11CT	88	images/4.png	7	51	videos/0_03.mp4	54	4	300
310	2020-03-17 11:00:43+01	KOL PC?4	91	images/4.png	7	51	videos/0_03.mp4	85	2	703
341	2020-03-17 11:01:25+01	AP6952CI	94	images/4.png	7	51	videos/0_03.mp4	80	15	430
342	2020-03-17 11:01:31+01	AI7770CB	95	images/4.png	7	51	videos/0_03.mp4	81	1	530
343	2020-03-17 11:01:33+01	AA5032EI	96	images/4.png	7	51	videos/0_03.mp4	82	2	630
411	2020-03-17 11:03:18+01	AA9267??	94	images/4.png	7	51	videos/0_03.mp4	83	4	1030
410	2020-03-17 11:03:17+01	AA0027RF	93	images/4.png	7	51	videos/0_03.mp4	82	3	930
409	2020-03-17 11:03:16+01	AA9279XE	92	images/4.png	7	51	videos/0_03.mp4	81	2	830
408	2020-03-17 11:03:16+01	AI3971EA	91	images/4.png	7	51	videos/0_03.mp4	80	1	730
397	2020-03-17 11:03:00+01	AI????BH	94	images/4.png	7	51	videos/0_03.mp4	80	1	1430
366	2020-03-17 11:02:08+01	AA9306MB	91	images/4.png	7	51	videos/0_03.mp4	77	3	1350
\.


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
11	c_s_app	feedback
12	c_s_app	color
14	c_s_app	mark
15	c_s_app	model
13	c_s_app	generationlist
16	c_s_app	generation
\.


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
24	c_s_app	0002_resultdeepstream_car_video	2020-03-13 13:47:33.439446+01
25	c_s_app	0003_auto_20200319_1718	2020-03-19 18:19:08.666446+01
26	c_s_app	0004_auto_20200325_1056	2020-03-25 11:58:24.362845+01
27	c_s_app	0005_feedback	2020-03-25 15:59:18.126969+01
28	c_s_app	0006_color	2020-03-27 10:56:16.750436+01
29	c_s_app	0007_auto_20200327_1237	2020-03-27 13:37:49.55458+01
30	c_s_app	0008_auto_20200327_1339	2020-03-27 14:39:36.066329+01
31	c_s_app	0009_generation	2020-03-27 14:54:42.925693+01
32	c_s_app	0010_mark	2020-03-27 16:27:44.839356+01
33	c_s_app	0011_model	2020-03-27 17:30:10.408113+01
34	c_s_app	0011_auto_20200327_1700	2020-03-27 18:00:59.266216+01
35	c_s_app	0012_model	2020-03-27 18:03:08.33473+01
36	c_s_app	0013_generation	2020-03-27 18:38:35.156309+01
37	c_s_app	0014_auto_20200327_1739	2020-03-27 18:40:19.325841+01
38	c_s_app	0015_auto_20200327_1740	2020-03-27 18:40:19.35409+01
39	c_s_app	0016_auto_20200329_1010	2020-03-29 12:10:33.828911+02
40	c_s_app	0017_auto_20200329_1016	2020-03-29 12:16:37.269793+02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 68, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: c_s_app_camera_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.c_s_app_camera_id_seq', 20, true);


--
-- Name: c_s_app_color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.c_s_app_color_id_seq', 30, true);


--
-- Name: c_s_app_feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.c_s_app_feedback_id_seq', 2, true);


--
-- Name: c_s_app_generation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.c_s_app_generation_id_seq', 15, true);


--
-- Name: c_s_app_generation_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.c_s_app_generation_id_seq1', 2616, true);


--
-- Name: c_s_app_mark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.c_s_app_mark_id_seq', 122, true);


--
-- Name: c_s_app_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.c_s_app_model_id_seq', 3948, true);


--
-- Name: c_s_app_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.c_s_app_request_id_seq', 69, true);


--
-- Name: c_s_app_requestcameraurl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.c_s_app_requestcameraurl_id_seq', 132, true);


--
-- Name: c_s_app_resultdeepstream_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.c_s_app_resultdeepstream_id_seq', 411, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 40, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: c_s_app_camera c_s_app_camera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_camera
    ADD CONSTRAINT c_s_app_camera_pkey PRIMARY KEY (id);


--
-- Name: c_s_app_color c_s_app_color_pkey; Type: CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.c_s_app_color
    ADD CONSTRAINT c_s_app_color_pkey PRIMARY KEY (id);


--
-- Name: c_s_app_feedback c_s_app_feedback_pkey; Type: CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.c_s_app_feedback
    ADD CONSTRAINT c_s_app_feedback_pkey PRIMARY KEY (id);


--
-- Name: c_s_app_generationlist c_s_app_generation_pkey; Type: CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.c_s_app_generationlist
    ADD CONSTRAINT c_s_app_generation_pkey PRIMARY KEY (id);


--
-- Name: c_s_app_generation c_s_app_generation_pkey1; Type: CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.c_s_app_generation
    ADD CONSTRAINT c_s_app_generation_pkey1 PRIMARY KEY (id);


--
-- Name: c_s_app_mark c_s_app_mark_pkey; Type: CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.c_s_app_mark
    ADD CONSTRAINT c_s_app_mark_pkey PRIMARY KEY (id);


--
-- Name: c_s_app_model c_s_app_model_pkey; Type: CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.c_s_app_model
    ADD CONSTRAINT c_s_app_model_pkey PRIMARY KEY (id);


--
-- Name: c_s_app_request c_s_app_request_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_request
    ADD CONSTRAINT c_s_app_request_pkey PRIMARY KEY (id);


--
-- Name: c_s_app_requestcameraurl c_s_app_requestcameraurl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_requestcameraurl
    ADD CONSTRAINT c_s_app_requestcameraurl_pkey PRIMARY KEY (id);


--
-- Name: c_s_app_resultdeepstream c_s_app_resultdeepstream_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_resultdeepstream
    ADD CONSTRAINT c_s_app_resultdeepstream_pkey PRIMARY KEY (id);


--
-- Name: cache_table cache_table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cache_table
    ADD CONSTRAINT cache_table_pkey PRIMARY KEY (cache_key);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
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
-- Name: c_s_app_feedback_user_id_e14c762c; Type: INDEX; Schema: public; Owner: user1
--

CREATE INDEX c_s_app_feedback_user_id_e14c762c ON public.c_s_app_feedback USING btree (user_id);


--
-- Name: c_s_app_generation_model_id_709fbfcc; Type: INDEX; Schema: public; Owner: user1
--

CREATE INDEX c_s_app_generation_model_id_709fbfcc ON public.c_s_app_generation USING btree (model_id);


--
-- Name: c_s_app_generation_name_id_cff468df; Type: INDEX; Schema: public; Owner: user1
--

CREATE INDEX c_s_app_generation_name_id_cff468df ON public.c_s_app_generation USING btree (name_id);


--
-- Name: c_s_app_model_mark_id_a0ee2cf3; Type: INDEX; Schema: public; Owner: user1
--

CREATE INDEX c_s_app_model_mark_id_a0ee2cf3 ON public.c_s_app_model USING btree (mark_id);


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
-- Name: c_s_app_resultdeepstream_car_color_id_1d999ed7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX c_s_app_resultdeepstream_car_color_id_1d999ed7 ON public.c_s_app_resultdeepstream USING btree (car_color_id);


--
-- Name: c_s_app_resultdeepstream_car_obj_id_22fd9f8f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX c_s_app_resultdeepstream_car_obj_id_22fd9f8f ON public.c_s_app_resultdeepstream USING btree (car_obj_id);


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
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: c_s_app_feedback c_s_app_feedback_user_id_e14c762c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.c_s_app_feedback
    ADD CONSTRAINT c_s_app_feedback_user_id_e14c762c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: c_s_app_generation c_s_app_generation_model_id_709fbfcc_fk_c_s_app_model_id; Type: FK CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.c_s_app_generation
    ADD CONSTRAINT c_s_app_generation_model_id_709fbfcc_fk_c_s_app_model_id FOREIGN KEY (model_id) REFERENCES public.c_s_app_model(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: c_s_app_generation c_s_app_generation_name_id_cff468df_fk_c_s_app_g; Type: FK CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.c_s_app_generation
    ADD CONSTRAINT c_s_app_generation_name_id_cff468df_fk_c_s_app_g FOREIGN KEY (name_id) REFERENCES public.c_s_app_generationlist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: c_s_app_model c_s_app_model_mark_id_a0ee2cf3_fk_c_s_app_mark_id; Type: FK CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.c_s_app_model
    ADD CONSTRAINT c_s_app_model_mark_id_a0ee2cf3_fk_c_s_app_mark_id FOREIGN KEY (mark_id) REFERENCES public.c_s_app_mark(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: c_s_app_requestcameraurl c_s_app_requestcamer_camera_id_a1b1a571_fk_c_s_app_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_requestcameraurl
    ADD CONSTRAINT c_s_app_requestcamer_camera_id_a1b1a571_fk_c_s_app_c FOREIGN KEY (camera_id) REFERENCES public.c_s_app_camera(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: c_s_app_requestcameraurl c_s_app_requestcamer_request_id_1b352968_fk_c_s_app_r; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_requestcameraurl
    ADD CONSTRAINT c_s_app_requestcamer_request_id_1b352968_fk_c_s_app_r FOREIGN KEY (request_id) REFERENCES public.c_s_app_request(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: c_s_app_resultdeepstream c_s_app_resultdeepst_camera_id_29d0f817_fk_c_s_app_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_resultdeepstream
    ADD CONSTRAINT c_s_app_resultdeepst_camera_id_29d0f817_fk_c_s_app_c FOREIGN KEY (camera_id) REFERENCES public.c_s_app_camera(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: c_s_app_resultdeepstream c_s_app_resultdeepst_car_color_id_1d999ed7_fk_c_s_app_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_resultdeepstream
    ADD CONSTRAINT c_s_app_resultdeepst_car_color_id_1d999ed7_fk_c_s_app_c FOREIGN KEY (car_color_id) REFERENCES public.c_s_app_color(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: c_s_app_resultdeepstream c_s_app_resultdeepst_car_obj_id_22fd9f8f_fk_c_s_app_g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_resultdeepstream
    ADD CONSTRAINT c_s_app_resultdeepst_car_obj_id_22fd9f8f_fk_c_s_app_g FOREIGN KEY (car_obj_id) REFERENCES public.c_s_app_generation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: c_s_app_resultdeepstream c_s_app_resultdeepst_request_id_803ad859_fk_c_s_app_r; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.c_s_app_resultdeepstream
    ADD CONSTRAINT c_s_app_resultdeepst_request_id_803ad859_fk_c_s_app_r FOREIGN KEY (request_id) REFERENCES public.c_s_app_request(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

