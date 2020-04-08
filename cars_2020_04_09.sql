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
    name_id integer,
    path character varying(100)
);


ALTER TABLE public.c_s_app_generation OWNER TO user1;

--
-- Name: c_s_app_generationlist; Type: TABLE; Schema: public; Owner: user1
--

CREATE TABLE public.c_s_app_generationlist (
    id integer NOT NULL,
    name character varying(16)
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
    name character varying(32),
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

COPY public.c_s_app_generation (id, model_id, name_id, path) FROM stdin;
5121	5343	1	AMC_AMX_1_gen
5122	5344	7	AMC_Ambassador_7_gen
5123	5345	1	AMC_Eagle_1_gen
5124	5346	1	AMC_Hornet_1_gen
5125	5347	1	AMC_Javelin_1_gen
5126	5347	2	AMC_Javelin_2_gen
5127	5348	4	AMC_Rambler_Ambassador_4_gen
5128	5349	36	AMC_Rambler_American
5129	5350	2	AMC_Rambler_Classic_2_gen
5130	5350	3	AMC_Rambler_Classic_3_gen
5131	5351	1	Acura_CL_1_gen
5132	5351	2	Acura_CL_2_gen
5133	5352	1	Acura_EL_1_gen
5134	5352	2	Acura_EL_2_gen
5135	5353	1	Acura_ILX_1_gen
5136	5354	1	Acura_Integra_1_gen
5137	5354	2	Acura_Integra_2_gen
5138	5354	3	Acura_Integra_3_gen
5139	5354	4	Acura_Integra_4_gen
5140	5355	1	Acura_Legend_1_gen
5141	5355	2	Acura_Legend_2_gen
5142	5356	1	Acura_MDX_1_gen
5143	5356	2	Acura_MDX_2_gen
5144	5356	3	Acura_MDX_3_gen
5145	5357	2	Acura_NSX_2_gen
5146	5358	1	Acura_RDX_1_gen
5147	5358	2	Acura_RDX_2_gen
5148	5358	3	Acura_RDX_3_gen
5149	5359	1	Acura_RL_1_gen
5150	5359	2	Acura_RL_2_gen
5151	5359	3	Acura_RL_3_gen
5152	5360	1	Acura_SLX_1_gen
5153	5361	1	Acura_TLX_1_gen
5154	5362	1	Acura_TL_1_gen
5155	5362	2	Acura_TL_2_gen
5156	5362	3	Acura_TL_3_gen
5157	5362	4	Acura_TL_4_gen
5158	5363	1	Acura_TSX_1_gen
5159	5363	2	Acura_TSX_2_gen
5160	5364	3	Acura_Vigor_3_gen
5161	5365	1	Acura_ZDX_1_gen
5162	5366	1	Aixam_A721_1_gen
5163	5367	1	Aixam_City_1_gen
5164	5368	1	Aixam_Crossline_1_gen
5165	5369	1	Aixam_Crossover_1_gen
5166	5370	1	Aixam_Mega_1_gen
5167	5371	1	Aixam_Scouty_1_gen
5168	5372	1	Alfa_Romeo_146_1_gen
5169	5373	1	Alfa_Romeo_147_1_gen
5170	5373	19	Alfa_Romeo_147_1_gen_FL
5171	5374	1	Alfa_Romeo_156_1_gen
5172	5375	1	Alfa_Romeo_159_1_gen
5173	5376	1	Alfa_Romeo_164_1_gen
5174	5377	1	Alfa_Romeo_166_1_gen
5175	5378	1	Alfa_Romeo_4C_1_gen
5176	5379	1	Alfa_Romeo_75_1_gen
5177	5380	1	Alfa_Romeo_Alfetta_1_gen
5178	5381	1	Alfa_Romeo_Brera_1_gen
5179	5382	1	Alfa_Romeo_GTV_1_gen
5180	5383	1	Alfa_Romeo_GT_1_gen
5181	5384	1	Alfa_Romeo_Giulia_1_gen
5182	5385	1	Alfa_Romeo_Giulietta_1_gen
5183	5386	1	Alfa_Romeo_Mito_1_gen
5184	5387	1	Alfa_Romeo_Spider_1_gen
5185	5387	2	Alfa_Romeo_Spider_2_gen
5186	5387	3	Alfa_Romeo_Spider_3_gen
5187	5387	4	Alfa_Romeo_Spider_4_gen
5188	5388	1	Alfa_Romeo_Stelvio_1_gen
5189	5389	1	Alpine_A110_1_gen
5190	5390	1	Aston_Martin_DB11_1_gen
5191	5391	1	Aston_Martin_DB9_1_gen
5192	5392	2	Aston_Martin_DBS_2_gen
5193	5393	1	Aston_Martin_Rapide_1_gen
5194	5394	2	Aston_Martin_Vanquish_2_gen
5195	5395	1	Aston_Martin_Vantage_1_gen
5196	5396	3	Audi_100_3_gen
5197	5396	4	Audi_100_4_gen
5198	5397	1	Audi_80_1_gen
5199	5397	2	Audi_80_2_gen
5200	5397	3	Audi_80_3_gen
5201	5397	4	Audi_80_4_gen
5202	5398	1	Audi_90_1_gen
5203	5399	1	Audi_A1_1_gen
5204	5399	2	Audi_A1_2_gen
5205	5400	1	Audi_A2_1_gen
5206	5401	1	Audi_A3_1_gen
5207	5401	2	Audi_A3_2_gen
5208	5401	23	Audi_A3_2_gen_FL
5209	5401	3	Audi_A3_3_gen
5210	5401	24	Audi_A3_3_gen_FL
5211	5402	1	Audi_A4_1_gen
5212	5402	2	Audi_A4_2_gen
5213	5402	3	Audi_A4_3_gen
5214	5402	4	Audi_A4_4_gen
5215	5402	27	Audi_A4_4_gen_FL
5216	5402	5	Audi_A4_5_gen
5217	5402	31	Audi_A4_5_gen_FL
5218	5403	1	Audi_A5_1_gen
5219	5403	19	Audi_A5_1_gen_FL
5220	5403	2	Audi_A5_2_gen
5221	5404	1	Audi_A6_1_gen
5222	5404	2	Audi_A6_2_gen
5223	5404	3	Audi_A6_3_gen
5224	5404	4	Audi_A6_4_gen
5225	5404	5	Audi_A6_5_gen
5226	5405	1	Audi_A7_1_gen
5227	5405	2	Audi_A7_2_gen
5228	5406	1	Audi_A8_1_gen
5229	5406	2	Audi_A8_2_gen
5230	5406	3	Audi_A8_3_gen
5231	5406	24	Audi_A8_3_gen_FL
5232	5407	1	Audi_E_Tron_1_gen
5233	5408	1	Audi_Q2_1_gen
5234	5409	1	Audi_Q3_1_gen
5235	5409	2	Audi_Q3_2_gen
5236	5410	1	Audi_Q5_1_gen
5237	5410	19	Audi_Q5_1_gen_FL
5239	5411	1	Audi_Q7_1_gen
5240	5411	2	Audi_Q7_2_gen
5241	5411	23	Audi_Q7_2_gen_FL
5242	5412	1	Audi_Q8_1_gen
5243	5413	1	Audi_Quattro_1_gen
5244	5414	1	Audi_R8_1_gen
5245	5415	1	Audi_TT_1_gen
5246	5415	2	Audi_TT_2_gen
5247	5415	3	Audi_TT_3_gen
5248	5416	1	Auto_Crane_1_gen
5249	5417	1	Autobianchi_Bianchina_1_gen
5250	5418	1	Autobianchi_Y101_gen
5238	5410	2	Audi_Q5_2_gen
5252	5420	1	BMW_1_1_gen
5253	5420	2	BMW_1_2_gen
5254	5420	3	BMW_1_3_gen
5251	5419	1	BMW_2_1_gen
5255	5421	1	BMW_2_MPV_1_gen
5256	5422	1	BMW_3_1_gen
5257	5422	2	BMW_3_2_gen
5258	5422	3	BMW_3_3_gen
5259	5422	4	BMW_3_4_gen
5260	5422	5	BMW_3_5_gen
5261	5422	6	BMW_3_6_gen
5262	5422	7	BMW_3_7_gen
5263	5423	1	BMW_4_1_gen
5264	5424	1	BMW_5_1_gen
5265	5424	2	BMW_5_2_gen
5266	5424	3	BMW_5_3_gen
5267	5424	4	BMW_5_4_gen
5268	5424	5	BMW_5_5_gen
5269	5424	6	BMW_5_6_gen
5270	5424	7	BMW_5_7_gen
5271	5425	1	BMW_6_1_gen
5272	5425	2	BMW_6_2_gen
5273	5425	3	BMW_6_3_gen
5274	5426	1	BMW_7_1_gen
5275	5426	2	BMW_7_2_gen
5276	5426	3	BMW_7_3_gen
5277	5426	4	BMW_7_4_gen
5278	5426	5	BMW_7_5_gen
5279	5426	6	BMW_7_6_gen
5280	5427	1	BMW_8_1_gen
5281	5427	2	BMW_8_2_gen
5282	5428	1	BMW_I3_1_gen
5283	5429	1	BMW_I8_1_gen
5284	5430	1	BMW_X1_1_gen
5285	5430	2	BMW_X1_2_gen
5286	5431	1	BMW_X2_1_gen
5287	5432	1	BMW_X3_1_gen
5288	5432	2	BMW_X3_2_gen
5289	5432	3	BMW_X3_3_gen
5290	5433	1	BMW_X4_1_gen
5291	5433	2	BMW_X4_2_gen
5292	5434	1	BMW_X5_1_gen
5293	5434	2	BMW_X5_2_gen
5294	5434	3	BMW_X5_3_gen
5295	5434	4	BMW_X5_4_gen
5296	5435	1	BMW_X6_1_gen
5297	5435	2	BMW_X6_2_gen
5298	5435	3	BMW_X6_3_gen
5299	5436	1	BMW_X7_1_gen
5300	5437	1	BMW_Z3_1_gen
5301	5438	1	BMW_Z4_1_gen
5302	5438	2	BMW_Z4_2_gen
5303	5438	3	BMW_Z4_3_gen
5304	5439	1	Baojun_510_1_gen
5305	5440	1	Baojun_560_1_gen
5306	5441	1	Baojun_630_1_gen
5307	5442	1	Baojun_730_1_gen
5308	5443	1	Bentley_Arnage_1_gen
5309	5444	1	Bentley_Bentayga_1_gen
5310	5445	1	Bentley_Brooklands_1_gen
5311	5446	1	Bentley_Continental_Flying_Spur_1_gen
5312	5447	1	Bentley_Continental_GT_1_gen
5313	5447	2	Bentley_Continental_GT_2_gen
5314	5448	1	Bentley_Mulsanne_1_gen
5315	5449	1	Bentley_Turbo_R_1_gen
5316	5450	1	Besturn_B30_1_gen
5317	5451	36	Bicycle
5318	5452	36	Bike_Cruiser_type
5319	5453	36	Bike_Scooter_type
5320	5454	36	Bike_Sport_type
5321	5455	36	Bike_Touring_type
5322	5456	1	Blakely_Bearcat_1_gen
5323	5457	1	Bogdan_A_091_1_gen
5324	5458	1	Bogdan_A_O92_1_gen
5325	5459	1	Bogdan_T90110_1_gen
5326	5460	1	Bradley_GT_1_gen
5327	5461	1	Brilliance_BS4_1_gen
5328	5462	1	Buick_Apollo_1_gen
5329	5463	1	Buick_Centurion_1_gen
5330	5464	2	Buick_Century_2_gen
5331	5464	4	Buick_Century_4_gen
5332	5464	5	Buick_Century_5_gen
5333	5464	6	Buick_Century_6_gen
5334	5465	3	Buick_Electra_3_gen
5335	5465	4	Buick_Electra_4_gen
5336	5465	5	Buick_Electra_5_gen
5337	5465	6	Buick_Electra_6_gen
5338	5466	1	Buick_Enclave_1_gen
5339	5466	2	Buick_Enclave_2_gen
5340	5467	1	Buick_Encore_1_gen
5341	5468	19	Buick_Excelle_1_gen_FL
5342	5468	2	Buick_Excelle_2_gen
5343	5468	23	Buick_Excelle_2_gen_FL
5344	5469	1	Buick_GL8_1_gen
5345	5469	2	Buick_GL8_2_gen
5346	5469	3	Buick_GL8_3_gen
5347	5470	1	Buick_Gran_Sport_1_gen
5348	5471	2	Buick_Grand_National_2_gen
5349	5471	3	Buick_Grand_National_3_gen
5350	5472	1	Buick_Invicta_1_gen
5351	5473	1	Buick_Lacrosse_1_gen
5352	5473	16	Buick_Lacrosse_1_gen_CN
5353	5473	2	Buick_Lacrosse_2_gen
5354	5473	23	Buick_Lacrosse_2_gen_FL
5355	5473	3	Buick_Lacrosse_3_gen
5356	5474	1	Buick_Le_Sabre_1_gen
5357	5474	3	Buick_Le_Sabre_3_gen
5358	5474	5	Buick_Le_Sabre_5_gen
5359	5474	6	Buick_Le_Sabre_6_gen
5360	5474	7	Buick_Le_Sabre_7_gen
5361	5474	8	Buick_Le_Sabre_8_gen
5362	5475	1	Buick_Lucerne_1_gen
5363	5476	1	Buick_Park_Avenue_1_gen
5364	5476	2	Buick_Park_Avenue_2_gen
5365	5477	1	Buick_Rainier_1_gen
5366	5478	1	Buick_Reatta_1_gen
5367	5479	1	Buick_Regal_1_gen
5368	5479	2	Buick_Regal_2_gen
5369	5479	3	Buick_Regal_3_gen
5370	5479	4	Buick_Regal_4_gen
5371	5480	1	Buick_Rendezvous_1_gen
5372	5481	1	Buick_Riviera_1_gen
5373	5481	2	Buick_Riviera_2_gen
5374	5481	3	Buick_Riviera_3_gen
5375	5481	4	Buick_Riviera_4_gen
5376	5481	5	Buick_Riviera_5_gen
5377	5481	6	Buick_Riviera_6_gen
5378	5481	7	Buick_Riviera_7_gen
5379	5481	8	Buick_Riviera_8_gen
5380	5482	8	Buick_Roadmaster_8_gen
5381	5483	1	Buick_Skylark_1_gen
5382	5483	2	Buick_Skylark_2_gen
5383	5483	3	Buick_Skylark_3_gen
5384	5483	5	Buick_Skylark_5_gen
5385	5483	6	Buick_Skylark_6_gen
5386	5484	1	Buick_Terraza_1_gen
5387	5485	1	Buick_Verano_1_gen
5388	5486	1	Buick_Wildcat_1_gen
5389	5486	2	Buick_Wildcat_2_gen
5390	5487	1	Byd_E5_1_gen
5391	5488	1	Byd_F0_1_gen
5392	5489	1	Byd_F3_1_gen
5393	5490	1	Byd_G5_1_gen
5394	5491	1	Byd_Tang_1_gen
5395	5492	1	Cadillac_ATS_1_gen
5396	5493	1	Cadillac_Allante_1_gen
5397	5494	1	Cadillac_Brougham_1_gen
5398	5495	1	Cadillac_CT6_1_gen
5399	5496	1	Cadillac_CTS_1_gen
5400	5496	2	Cadillac_CTS_2_gen
5401	5496	3	Cadillac_CTS_3_gen
5402	5497	1	Cadillac_Calais_1_gen
5403	5498	1	Cadillac_Cimarron_1_gen
5404	5499	1	Cadillac_DTS_1_gen
5405	5500	3	Cadillac_De_Ville_3_gen
5406	5500	4	Cadillac_De_Ville_4_gen
5407	5500	5	Cadillac_De_Ville_5_gen
5408	5500	6	Cadillac_De_Ville_6_gen
5409	5500	7	Cadillac_De_Ville_7_gen
5410	5500	8	Cadillac_De_Ville_8_gen
5411	5501	10	Cadillac_Eldorado_10_gen
5412	5501	11	Cadillac_Eldorado_11_gen
5413	5501	12	Cadillac_Eldorado_12_gen
5414	5501	8	Cadillac_Eldorado_8_gen
5415	5501	9	Cadillac_Eldorado_9_gen
5416	5502	1	Cadillac_Elr_1_gen
5417	5503	1	Cadillac_Escalade_1_gen
5418	5503	2	Cadillac_Escalade_2_gen
5419	5503	3	Cadillac_Escalade_3_gen
5420	5503	4	Cadillac_Escalade_4_gen
5421	5504	1	Cadillac_Fleetwood_1_gen
5422	5504	2	Cadillac_Fleetwood_2_gen
5423	5505	10	Cadillac_Fleetwood_75_10_gen
5424	5505	21	Cadillac_Fleetwood_75_10_gen_FL
5425	5505	9	Cadillac_Fleetwood_75_9_gen
5426	5506	1	Cadillac_SRX_1_gen
5427	5506	2	Cadillac_SRX_2_gen
5428	5507	1	Cadillac_STS_1_gen
5429	5508	1	Cadillac_Seville_1_gen
5430	5508	2	Cadillac_Seville_2_gen
5431	5508	3	Cadillac_Seville_3_gen
5432	5508	4	Cadillac_Seville_4_gen
5433	5508	5	Cadillac_Seville_5_gen
5434	5509	1	Cadillac_XLR_1_gen
5435	5510	1	Cadillac_XT5_1_gen
5436	5511	1	Cadillac_XTS_1_gen
5437	5512	1	Chery_A13_1_gen
5438	5513	1	Chery_A15_1_gen
5439	5514	1	Chery_A1_1_gen
5440	5515	1	Chery_A3_1_gen
5441	5516	1	Chery_A5_1_gen
5442	5517	1	Chery_Arrizo_3_1_gen
5443	5518	1	Chery_Arrizo_7_1_gen
5444	5519	1	Chery_Beat_1_gen
5445	5520	1	Chery_E3_1_gen
5446	5521	1	Chery_E5_1_gen
5447	5522	1	Chery_Karry_1_gen
5448	5523	1	Chery_Qq6_1_gen
5449	5524	1	Chery_Qq_1_gen
5450	5524	19	Chery_Qq_1_gen_FL
5451	5525	1	Chery_Tiggo_1_gen
5452	5526	1	Chery_Tiggo_2_1_gen
5453	5527	1	Chery_Tiggo_3_1_gen
5454	5528	1	Chery_Tiggo_3xe_1_gen
5455	5529	1	Chery_Tiggo_5_1_gen
5456	5530	1	Chery_Tiggo_5x_1_gen
5457	5531	1	Chery_Tiggo_7_1_gen
5458	5532	1	Chery_Tiggo_8_1_gen
5459	5533	1	Chevrolet_Astro_1_gen
5460	5533	2	Chevrolet_Astro_2_gen
5461	5534	1	Chevrolet_Avalanche_1_gen
5462	5534	2	Chevrolet_Avalanche_2_gen
5463	5535	1	Chevrolet_Aveo_1_gen
5464	5535	2	Chevrolet_Aveo_2_gen
5465	5535	23	Chevrolet_Aveo_2_gen_FL
5466	5536	1	Chevrolet_Beretta_1_gen
5467	5537	1	Chevrolet_Bolt_1_gen
5468	5538	1	Chevrolet_C_K_1_gen
5469	5538	2	Chevrolet_C_K_2_gen
5470	5538	3	Chevrolet_C_K_3_gen
5471	5538	4	Chevrolet_C_K_4_gen
5472	5538	28	Chevrolet_C_K_4_gen_truck
5473	5539	1	Chevrolet_Camaro_1_gen
5474	5539	2	Chevrolet_Camaro_2_gen
5475	5539	3	Chevrolet_Camaro_3_gen
5476	5539	4	Chevrolet_Camaro_4_gen
5477	5539	5	Chevrolet_Camaro_5_gen
5478	5539	6	Chevrolet_Camaro_6_gen
5479	5540	1	Chevrolet_Caprice_1_gen
5480	5540	2	Chevrolet_Caprice_2_gen
5481	5540	3	Chevrolet_Caprice_3_gen
5482	5540	4	Chevrolet_Caprice_4_gen
5483	5540	6	Chevrolet_Caprice_6_gen
5484	5541	1	Chevrolet_Captiva_1_gen
5485	5542	1	Chevrolet_Cavalier_1_gen
5486	5542	2	Chevrolet_Cavalier_2_gen
5487	5542	3	Chevrolet_Cavalier_3_gen
5488	5542	4	Chevrolet_Cavalier_4_gen
5489	5543	1	Chevrolet_Celebrity_1_gen
5490	5544	1	Chevrolet_Chevelle_1_gen
5491	5544	2	Chevrolet_Chevelle_2_gen
5492	5544	3	Chevrolet_Chevelle_3_gen
5493	5545	1	Chevrolet_Chevette_1_gen
5494	5546	1	Chevrolet_Cobalt_1_gen
5495	5547	1	Chevrolet_Colorado_1_gen
5496	5547	2	Chevrolet_Colorado_2_gen
5497	5548	1	Chevrolet_Corsica_1_gen
5498	5549	1	Chevrolet_Corvette_1_gen
5499	5549	2	Chevrolet_Corvette_2_gen
5500	5549	3	Chevrolet_Corvette_3_gen
5501	5549	4	Chevrolet_Corvette_4_gen
5502	5549	5	Chevrolet_Corvette_5_gen
5503	5549	6	Chevrolet_Corvette_6_gen
5504	5549	7	Chevrolet_Corvette_7_gen
5505	5550	1	Chevrolet_Cruze_1_gen
5506	5550	2	Chevrolet_Cruze_2_gen
5507	5551	2	Chevrolet_El_Camino_2_gen
5508	5551	3	Chevrolet_El_Camino_3_gen
5509	5551	4	Chevrolet_El_Camino_4_gen
5510	5551	5	Chevrolet_El_Camino_5_gen
5511	5552	1	Chevrolet_Epica_1_gen
5512	5553	1	Chevrolet_Equinox_1_gen
5513	5553	2	Chevrolet_Equinox_2_gen
5514	5553	3	Chevrolet_Equinox_3_gen
5515	5554	1	Chevrolet_Evanda_1_gen
5516	5555	2	Chevrolet_Explorer_2_gen
5517	5556	1	Chevrolet_Express_1_gen
5518	5556	19	Chevrolet_Express_1_gen_FL
5519	5557	2	Chevrolet_G_2_gen
5520	5557	3	Chevrolet_G_3_gen
5521	5557	24	Chevrolet_G_3_gen_FL
5522	5558	1	Chevrolet_HHR_1_gen
5523	5559	10	Chevrolet_Impala_10_gen
5524	5559	1	Chevrolet_Impala_1_gen
5525	5559	2	Chevrolet_Impala_2_gen
5526	5559	3	Chevrolet_Impala_3_gen
5527	5559	4	Chevrolet_Impala_4_gen
5528	5559	5	Chevrolet_Impala_5_gen
5529	5559	6	Chevrolet_Impala_6_gen
5530	5559	8	Chevrolet_Impala_8_gen
5531	5559	9	Chevrolet_Impala_9_gen
5532	5560	1	Chevrolet_K5_Blazer_1_gen
5533	5560	2	Chevrolet_K5_Blazer_2_gen
5534	5560	3	Chevrolet_K5_Blazer_3_gen
5535	5561	1	Chevrolet_Kodiak_1_gen
5536	5561	3	Chevrolet_Kodiak_3_gen
5537	5562	1	Chevrolet_Lacetti_1_gen
5538	5563	1	Chevrolet_Lumina_1_gen
5539	5563	2	Chevrolet_Lumina_2_gen
5540	5564	1	Chevrolet_Lumina_APV_1_gen
5541	5565	1	Chevrolet_Malibu_1_gen
5542	5565	2	Chevrolet_Malibu_2_gen
5543	5565	3	Chevrolet_Malibu_3_gen
5544	5565	4	Chevrolet_Malibu_4_gen
5545	5565	5	Chevrolet_Malibu_5_gen
5546	5565	6	Chevrolet_Malibu_6_gen
5547	5565	7	Chevrolet_Malibu_7_gen
5548	5565	8	Chevrolet_Malibu_8_gen
5549	5565	9	Chevrolet_Malibu_9_gen
5550	5566	1	Chevrolet_Metro_1_gen
5551	5566	2	Chevrolet_Metro_2_gen
5552	5567	1	Chevrolet_Montecarlo_1_gen
5553	5567	2	Chevrolet_Montecarlo_2_gen
5554	5567	3	Chevrolet_Montecarlo_3_gen
5555	5567	4	Chevrolet_Montecarlo_4_gen
5556	5567	5	Chevrolet_Montecarlo_5_gen
5557	5567	6	Chevrolet_Montecarlo_6_gen
5558	5567	7	Chevrolet_Montecarlo_7_gen
5559	5568	1	Chevrolet_Monza_1_gen
5560	5569	1	Chevrolet_Niva_1_gen
5561	5570	3	Chevrolet_Nova_3_gen
5562	5570	4	Chevrolet_Nova_4_gen
5563	5570	5	Chevrolet_Nova_5_gen
5564	5571	1	Chevrolet_Orlando_1_gen
5565	5572	1	Chevrolet_Prizm_1_gen
5566	5572	2	Chevrolet_Prizm_2_gen
5567	5572	3	Chevrolet_Prizm_3_gen
5568	5573	1	Chevrolet_S10_1_gen
5569	5573	2	Chevrolet_S10_2_gen
5570	5574	1	Chevrolet_S10_Blazer_1_gen
5571	5574	2	Chevrolet_S10_Blazer_2_gen
5572	5575	1	Chevrolet_SSR_1_gen
5573	5576	1	Chevrolet_Sail_1_gen
5574	5576	2	Chevrolet_Sail_2_gen
5575	5576	3	Chevrolet_Sail_3_gen
5576	5577	1	Chevrolet_Silverado_1_gen
5577	5577	2	Chevrolet_Silverado_2_gen
5578	5577	3	Chevrolet_Silverado_3_gen
5579	5578	3	Chevrolet_Spark_3_gen
5580	5578	4	Chevrolet_Spark_4_gen
5581	5579	10	Chevrolet_Suburban_10_gen
5582	5579	11	Chevrolet_Suburban_11_gen
5583	5579	6	Chevrolet_Suburban_6_gen
5584	5579	7	Chevrolet_Suburban_7_gen
5585	5579	8	Chevrolet_Suburban_8_gen
5586	5579	9	Chevrolet_Suburban_9_gen
5587	5580	1	Chevrolet_Tahoe_1_gen
5588	5580	2	Chevrolet_Tahoe_2_gen
5589	5580	3	Chevrolet_Tahoe_3_gen
5590	5580	4	Chevrolet_Tahoe_4_gen
5591	5581	1	Chevrolet_Tracker_1_gen
5592	5581	2	Chevrolet_Tracker_2_gen
5593	5581	4	Chevrolet_Tracker_4_gen
5594	5582	1	Chevrolet_TrailBlazer_1_gen
5595	5583	1	Chevrolet_Traverse_1_gen
5596	5583	2	Chevrolet_Traverse_2_gen
5597	5584	1	Chevrolet_Trax_1_gen
5598	5585	1	Chevrolet_Uplander_1_gen
5599	5586	1	Chevrolet_Vega_1_gen
5600	5587	1	Chevrolet_Venture_1_gen
5601	5588	1	Chevrolet_Volt_1_gen
5602	5588	2	Chevrolet_Volt_2_gen
5603	5589	1	Chevrolet_Yukon_1_gen
5604	5590	1	Chrysler_200_1_gen
5605	5590	2	Chrysler_200_2_gen
5606	5591	1	Chrysler_300M_1_gen
5607	5592	1	Chrysler_300_1_gen
5608	5592	2	Chrysler_300_2_gen
5609	5593	1	Chrysler_Cirrus_1_gen
5610	5594	1	Chrysler_Concorde_1_gen
5611	5594	2	Chrysler_Concorde_2_gen
5612	5595	1	Chrysler_Conquest_1_gen
5613	5596	1	Chrysler_Cordoba_1_gen
5614	5596	2	Chrysler_Cordoba_2_gen
5615	5597	1	Chrysler_Crossfire_1_gen
5616	5598	1	Chrysler_Fifth_Avenue_1_gen
5617	5599	7	Chrysler_Imperial_7_gen
5618	5600	1	Chrysler_Intrepid_1_gen
5619	5600	2	Chrysler_Intrepid_2_gen
5620	5601	1	Chrysler_LHS_1_gen
5621	5601	2	Chrysler_LHS_2_gen
5622	5602	2	Chrysler_LeBaron_2_gen
5623	5602	3	Chrysler_LeBaron_3_gen'
5624	5603	12	Chrysler_New_Yorker_12_gen
5625	5603	13	Chrysler_New_Yorker_13_gen
5626	5603	14	Chrysler_New_Yorker_14_gen
5627	5604	6	Chrysler_Newport_6_gen
5628	5605	1	Chrysler_PT_Cruiser_1_gen
5629	5606	1	Chrysler_Pacifica_1_gen
5630	5606	2	Chrysler_Pacifica_2_gen
5631	5607	1	Chrysler_Sebring_1_gen
5632	5607	2	Chrysler_Sebring_2_gen
5633	5607	3	Chrysler_Sebring_3_gen
5634	5608	1	Chrysler_TC_1_gen
5635	5609	1	Chrysler_Town_&_Country_1_gen
5636	5609	2	Chrysler_Town_&_Country_2_gen
5637	5609	3	Chrysler_Town_&_Country_3_gen
5638	5609	4	Chrysler_Town_&_Country_4_gen
5639	5609	5	Chrysler_Town_&_Country_5_gen
5640	5610	1	Citroen_AX_1_gen
5641	5611	1	Citroen_BX_1_gen
5642	5612	1	Citroen_Berlingo_1_gen
5643	5612	19	Citroen_Berlingo_1_gen_FL
5644	5612	2	Citroen_Berlingo_2_gen
5645	5612	3	Citroen_Berlingo_3_gen
5646	5613	1	Citroen_C1_1_gen
5647	5613	2	Citroen_C1_2_gen
5648	5614	1	Citroen_C2_1_gen
5649	5615	1	Citroen_C3_1_gen
5650	5615	2	Citroen_C3_2_gen
5651	5615	3	Citroen_C3_3_gen
5652	5616	1	Citroen_C3_Aircross_1_gen
5653	5617	1	Citroen_C3_Picasso_1_gen
5654	5618	1	Citroen_C3_Pluriel_1_gen
5655	5619	1	Citroen_C3_XR_1_gen
5656	5620	1	Citroen_C4_1_gen
5657	5620	2	Citroen_C4_2_gen
5658	5620	23	Citroen_C4_2_gen_FL
5659	5621	1	Citroen_C4_Aicross_1_gen
5660	5622	1	Citroen_C4_Cactus_1_gen
5661	5622	19	Citroen_C4_Cactus_1_gen_FL
5662	5623	1	Citroen_C4_Picasso_1_gen
5663	5623	2	Citroen_C4_Picasso_2_gen
5664	5624	1	Citroen_C5_1_gen
5665	5624	2	Citroen_C5_2_gen
5666	5625	1	Citroen_C5_Aircross_1_gen
5667	5626	1	Citroen_C6_1_gen
5668	5626	2	Citroen_C6_2_gen
5669	5627	2	Citroen_C8_2_gen
5670	5628	1	Citroen_C_Crosser_1_gen
5671	5629	2	Citroen_C_Elysee_2_gen
5672	5629	3	Citroen_C_Elysee_3_gen
5673	5630	1	Citroen_C_Quatre_1_gen
5674	5631	1	Citroen_C_Triomphe_1_gen
5675	5632	1	Citroen_DS3_1_gen
5676	5633	1	Citroen_DS4_1_gen
5677	5634	1	Citroen_DS5_1_gen
5678	5635	1	Citroen_DS7_1_gen
5679	5636	1	Citroen_Evasion_1_gen
5680	5637	2	Citroen_Jumper_2_gen
5681	5637	3	Citroen_Jumper_3_gen
5682	5637	4	Citroen_Jumper_4_gen
5683	5638	1	Citroen_Jumpy_1_gen
5684	5638	2	Citroen_Jumpy_2_gen
5685	5638	3	Citroen_Jumpy_3_gen
5686	5639	1	Citroen_Mehari_1_gen
5687	5640	1	Citroen_Nemo_1_gen
5688	5641	1	Citroen_Saxo_1_gen
5689	5642	3	Citroen_Space_Tourer_3_gen
5690	5643	1	Citroen_Xantia_1_gen
5691	5644	1	Citroen_Xsara_1_gen
5692	5645	1	Citroen_Xsara_Picasso_1_gen
5693	5646	1	Dacia_Dokker_1_gen
5694	5647	1	Dacia_Lodgy_1_gen
5695	5648	1	Dacia_Logan_1_gen
5696	5649	1	Dacia_Nova_1_gen
5697	5650	1	Dadi_Shuttle_1_gen
5698	5651	1	Dadi_Smoothing_1_gen
5699	5652	1	Daewoo_Espero_1_gen
5700	5653	1	Daewoo_Gentra_1_gen
5701	5654	1	Daewoo_Lanos_1_gen
5702	5655	1	Daewoo_Lanos_Pickup_1_gen
5703	5656	1	Daewoo_Leganza_1_gen
5704	5657	1	Daewoo_Matiz_1_gen
5705	5657	2	Daewoo_Matiz_2_gen
5706	5658	1	Daewoo_Nexia_1_gen
5707	5658	19	Daewoo_Nexia_1_gen_FL
5708	5659	1	Daewoo_Nubira_1_gen
5709	5660	1	Daewoo_Tacuma_1_gen
5710	5661	1	Daewoo_Tico_1_gen
5711	5662	1	Daf_45_1_gen
5712	5663	1	Daf_Cf_1_gen
5713	5664	3	Daf_Xf_3_gen
5714	5665	1	Daihatsu_Applause_1_gen
5715	5666	5	Daihatsu_Cuore_5_gen
5716	5666	6	Daihatsu_Cuore_6_gen
5717	5666	7	Daihatsu_Cuore_7_gen
5718	5667	2	Daihatsu_Feroza_2_gen
5719	5668	1	Daihatsu_Materia_1_gen
5720	5669	1	Daihatsu_Rocky_1_gen
5721	5670	19	Daihatsu_Sirion_1_gen_FL
5722	5671	1	Daihatsu_Terios_1_gen
5723	5671	2	Daihatsu_Terios_2_gen
5724	5672	1	Daihatsu_YRV_1_gen
5725	5673	1	Datsun_B210_1_gen
5726	5674	1	Datsun_z_1_gen
5727	5675	1	Dodge_Aspen_1_gen
5728	5676	1	Dodge_Avenger_1_gen
5729	5676	2	Dodge_Avenger_2_gen
5730	5677	1	Dodge_Caliber_1_gen
5731	5678	1	Dodge_Challenger_1_gen
5732	5678	2	Dodge_Challenger_2_gen
5733	5678	3	Dodge_Challenger_3_gen
5734	5679	2	Dodge_Charger_2_gen
5735	5679	3	Dodge_Charger_3_gen
5736	5679	4	Dodge_Charger_4_gen
5737	5679	5	Dodge_Charger_5_gen
5738	5679	6	Dodge_Charger_6_gen
5739	5679	7	Dodge_Charger_7_gen
5740	5679	35	Dodge_Charger_7_gen_FL
5741	5680	7	Dodge_Colt_7_gen
5742	5681	2	Dodge_D100_2_gen
5743	5681	3	Dodge_D100_3_gen
5744	5682	1	Dodge_Dakota_1_gen
5745	5682	2	Dodge_Dakota_2_gen
5746	5682	3	Dodge_Dakota_3_gen
5747	5683	4	Dodge_Dart_4_gen
5748	5684	1	Dodge_Dart_PF_1_gen
5749	5685	1	Dodge_Daytona_1_gen
5750	5686	1	Dodge_Durango_1_gen
5751	5686	2	Dodge_Durango_2_gen
5752	5686	3	Dodge_Durango_3_gen
5753	5686	4	Dodge_Durango_4_gen
5754	5687	1	Dodge_Dynasty_1_gen
5755	5688	1	Dodge_Grand_Caravan_1_gen
5756	5688	2	Dodge_Grand_Caravan_2_gen
5757	5688	3	Dodge_Grand_Caravan_3_gen
5758	5688	4	Dodge_Grand_Caravan_4_gen
5759	5688	5	Dodge_Grand_Caravan_5_gen
5760	5689	1	Dodge_Intrepid_1_gen
5761	5690	1	Dodge_Journey_1_gen
5762	5690	19	Dodge_Journey_1_gen_FL
5763	5691	2	Dodge_Magnum_2_gen
5764	5692	1	Dodge_Neon_1_gen
5765	5692	2	Dodge_Neon_2_gen
5766	5693	1	Dodge_Nitro_1_gen
5767	5694	1	Dodge_Ram_1_gen
5768	5694	2	Dodge_Ram_2_gen
5769	5694	3	Dodge_Ram_3_gen
5770	5694	4	Dodge_Ram_4_gen
5771	5694	5	Dodge_Ram_5_gen
5772	5695	1	Dodge_Ramcharger_1_gen
5773	5695	2	Dodge_Ramcharger_2_gen
5774	5696	1	Dodge_Shadow_1_gen
5775	5697	1	Dodge_Spirit_1_gen
5776	5698	1	Dodge_Viper_1_gen
5777	5698	2	Dodge_Viper_2_gen
5778	5698	3	Dodge_Viper_3_gen
5779	5698	4	Dodge_Viper_4_gen
5780	5698	5	Dodge_Viper_5_gen
5781	5699	1	Dongfeng_Fengdu_MX6_1_gen
5782	5700	1	Dongfeng_Fengshen_AX7_1_gen
5783	5701	1	Dongfeng_Fengxing_Jingyi_1_gen
5784	5702	1	Dongfeng_K02_1_gen
5785	5703	1	Etalon_A079.52_1_gen
5786	5704	1	Etalon_A08129_1_gen
5787	5705	1	Faw_V2_1_gen
5788	5706	1	Faw_V5_1_gen
5789	5707	1	Ferrari_208_1_gen
5790	5708	1	Ferrari_360_1_gen
5791	5709	1	Ferrari_456_1_gen
5792	5710	1	Ferrari_458_1_gen
5793	5711	1	Ferrari_488_1_gen
5794	5712	1	Ferrari_599_1_gen
5795	5713	1	Ferrari_812_1_gen
5796	5714	1	Ferrari_California_1_gen
5797	5715	1	Ferrari_Daytona_1_gen
5798	5716	1	Ferrari_Dino_1_gen
5799	5717	1	Ferrari_F430_1_gen
5800	5718	1	Ferrari_GTC4Lusso_1_gen
5801	5719	1	Ferrari_Mondial_1_gen
5802	5720	1	Ferrari_Portofino_1_gen
5803	5721	1	Ferrari_Testarosa_1_gen
5804	5722	1	Ferrari_Testarossa_1_gen
5805	5723	1	Fiat_125_1_gen
5806	5724	1	Fiat_126_1_gen
5807	5725	1	Fiat_131_1_gen
5808	5726	1	Fiat_132_1_gen
5809	5727	1	Fiat_500L_1_gen
5810	5728	1	Fiat_500X_1_gen
5811	5729	3	Fiat_500_3_gen
5812	5729	4	Fiat_500_4_gen
5813	5730	1	Fiat_Albea_1_gen
5814	5731	1	Fiat_Brava_1_gen
5815	5732	1	Fiat_Bravo_1_gen
5816	5732	2	Fiat_Bravo_2_gen
5817	5733	1	Fiat_Cinquecento_1_gen
5818	5734	1	Fiat_Coupe_1_gen
5819	5735	1	Fiat_Croma_1_gen
5820	5735	2	Fiat_Croma_2_gen
5821	5736	1	Fiat_Doblo_1_gen
5822	5736	19	Fiat_Doblo_1_gen_FL
5823	5736	2	Fiat_Doblo_2_gen
5824	5736	23	Fiat_Doblo_2_gen_FL
5825	5737	1	Fiat_Ducato_1_gen
5826	5737	2	Fiat_Ducato_2_gen
5827	5737	3	Fiat_Ducato_3_gen
5828	5737	4	Fiat_Ducato_4_gen
5829	5738	3	Fiat_Fiorino_3_gen
5830	5739	1	Fiat_Fullback_1_gen
5831	5740	1	Fiat_Idea_1_gen
5832	5741	1	Fiat_Linea_1_gen
5833	5742	1	Fiat_Marea_1_gen
5834	5743	1	Fiat_Multipla_1_gen
5835	5744	1	Fiat_Palio_1_gen
5836	5745	2	Fiat_Panda_2_gen
5837	5745	3	Fiat_Panda_3_gen
5838	5746	1	Fiat_Punto_1_gen
5839	5746	2	Fiat_Punto_2_gen
5840	5746	23	Fiat_Punto_2_gen_FL
5841	5746	3	Fiat_Punto_3_gen
5842	5747	1	Fiat_Qubo_1_gen
5843	5748	1	Fiat_Scudo_1_gen
5844	5748	19	Fiat_Scudo_1_gen_FL
5845	5748	2	Fiat_Scudo_2_gen
5846	5749	1	Fiat_Sedici_1_gen
5847	5750	1	Fiat_Seicento_1_gen
5848	5751	1	Fiat_Siena_1_gen
5849	5752	1	Fiat_Spider_1_gen
5850	5753	1	Fiat_Stilo_1_gen
5851	5754	2	Fiat_Talento_2_gen
5852	5755	1	Fiat_Tipo_1_gen
5853	5756	1	Fiat_Tipo_new_1_gen
5854	5757	1	Fiat_Ulysse_1_gen
5855	5758	1	Fiat_Uno_1_gen
5856	5759	1	Fiat_Viaggio_1_gen
5857	5760	1	Fiat_X1_9_1_gen
5858	5761	1	Ford_Aerostar_1_gen
5859	5762	1	Ford_Aspire_1_gen
5860	5763	1	Ford_B_Max_1_gen
5861	5764	1	Ford_Bronco_1_gen
5862	5764	2	Ford_Bronco_2_gen
5863	5764	3	Ford_Bronco_3_gen
5864	5764	4	Ford_Bronco_4_gen
5865	5765	1	Ford_C_Max_1_gen
5866	5765	2	Ford_C_Max_2_gen
5867	5766	3	Ford_Club_Wagon_3_gen
5868	5766	4	Ford_Club_Wagon_4_gen
5869	5766	5	Ford_Club_Wagon_5_gen
5870	5767	1	Ford_Contour_1_gen
5871	5768	1	Ford_Cougar_1_gen
5872	5769	2	Ford_Courier_2_gen
5873	5769	5	Ford_Courier_5_gen
5874	5770	1	Ford_Crown_Victoria_1_gen
5875	5770	2	Ford_Crown_Victoria_2_gen
5876	5771	2	Ford_Ecosport_2_gen
5877	5772	1	Ford_Edge_1_gen
5878	5772	2	Ford_Edge_2_gen
5879	5772	3	Ford_Edge_3_gen
5880	5773	1	Ford_Escape_1_gen
5881	5773	2	Ford_Escape_2_gen
5882	5773	3	Ford_Escape_3_gen
5883	5774	1	Ford_Escort_1_gen
5884	5774	2	Ford_Escort_2_gen
5885	5774	3	Ford_Escort_3_gen
5886	5774	26	Ford_Escort_4_gen_EU
5887	5774	33	Ford_Escort_6_gen_EU
5888	5775	1	Ford_Excursion_1_gen
5889	5776	1	Ford_Expedition_1_gen
5890	5776	2	Ford_Expedition_2_gen
5891	5776	3	Ford_Expedition_3_gen
5892	5776	4	Ford_Expedition_4_gen
5893	5777	1	Ford_Explorer_1_gen
5894	5777	2	Ford_Explorer_2_gen
5895	5777	3	Ford_Explorer_3_gen
5896	5777	4	Ford_Explorer_4_gen
5897	5777	5	Ford_Explorer_5_gen
5898	5777	31	Ford_Explorer_5_gen_FL
5899	5778	10	Ford_F_Series_10_gen
5900	5778	11	Ford_F_Series_11_gen
5901	5778	12	Ford_F_Series_12_gen
5902	5778	13	Ford_F_Series_13_gen
5903	5778	5	Ford_F_Series_5_gen
5904	5778	6	Ford_F_Series_6_gen
5905	5778	7	Ford_F_Series_7_gen
5906	5778	8	Ford_F_Series_8_gen
5907	5778	9	Ford_F_Series_9_gen
5908	5779	1	Ford_Festiva_1_gen
5909	5780	1	Ford_Fiesta_1_gen
5910	5780	2	Ford_Fiesta_2_gen
5911	5780	3	Ford_Fiesta_3_gen
5912	5780	4	Ford_Fiesta_4_gen
5913	5780	5	Ford_Fiesta_5_gen
5914	5780	6	Ford_Fiesta_6_gen
5915	5780	7	Ford_Fiesta_7_gen
5916	5781	1	Ford_Flex_1_gen
5917	5781	2	Ford_Flex_2_gen
5918	5782	1	Ford_Focus_1_gen
5919	5782	2	Ford_Focus_2_gen
5920	5782	23	Ford_Focus_2_gen_FL
5921	5782	3	Ford_Focus_3_gen
5922	5782	24	Ford_Focus_3_gen_FL
5923	5782	4	Ford_Focus_4_gen
5924	5783	18	Ford_Fusion_1_gen_EU
5925	5784	1	Ford_Galaxy_1_gen
5926	5784	19	Ford_Galaxy_1_gen_FL
5927	5784	2	Ford_Galaxy_2_gen
5928	5784	3	Ford_Galaxy_3_gen
5929	5785	1	Ford_Granada_1_gen
5930	5786	2	Ford_Grand_Torino_2_gen
5931	5786	3	Ford_Grand_Torino_3_gen
5932	5787	1	Ford_Ka_1_gen
5933	5787	2	Ford_Ka_2_gen
5934	5787	3	Ford_Ka_3_gen
5935	5788	1	Ford_Kuga_1_gen
5936	5789	2	Ford_LTD_2_gen
5937	5790	1	Ford_Maverick_1_gen
5938	5791	1	Ford_Mondeo_1_gen
5939	5791	2	Ford_Mondeo_2_gen
5940	5791	3	Ford_Mondeo_3_gen
5941	5791	4	Ford_Mondeo_4_gen
5942	5792	1	Ford_Mustang_1_gen
5943	5792	19	Ford_Mustang_1_gen_FL
5944	5792	2	Ford_Mustang_2_gen
5945	5792	3	Ford_Mustang_3_gen
5946	5792	4	Ford_Mustang_4_gen
5947	5792	5	Ford_Mustang_5_gen
5948	5792	6	Ford_Mustang_6_gen
5949	5792	7	Ford_Mustang_7_gen
5950	5793	1	Ford_Pinto_1_gen
5951	5793	3	Ford_Pinto_3_gen
5952	5794	1	Ford_Probe_1_gen
5953	5794	2	Ford_Probe_2_gen
5954	5795	17	Ford_Puma_1_gen_Crossover
5955	5796	5	Ford_Ranchero_5_gen
5956	5796	6	Ford_Ranchero_6_gen
5957	5796	7	Ford_Ranchero_7_gen
5958	5797	1	Ford_Ranger_1_gen
5959	5797	19	Ford_Ranger_1_gen_FL
5960	5797	2	Ford_Ranger_2_gen
5961	5797	4	Ford_Ranger_4_gen
5962	5798	3	Ford_Ranger_Int_3_gen
5963	5799	1	Ford_S_Max_1_gen
5964	5799	2	Ford_S_Max_2_gen
5965	5800	1	Ford_Scorpio_1_gen
5966	5801	1	Ford_Sierra_1_gen
5967	5801	2	Ford_Sierra_2_gen
5968	5802	1	Ford_Super_Duty_1_gen
5969	5803	1	Ford_Taurus_1_gen
5970	5803	2	Ford_Taurus_2_gen
5971	5803	3	Ford_Taurus_3_gen
5972	5803	4	Ford_Taurus_4_gen
5973	5803	5	Ford_Taurus_5_gen
5974	5803	6	Ford_Taurus_6_gen
5975	5804	1	Ford_Taurus_x_1_gen
5976	5805	2	Ford_Tempo_2_gen
5977	5806	10	Ford_Thunderbird_10_gen
5978	5806	11	Ford_Thunderbird_11_gen
5979	5806	5	Ford_Thunderbird_5_gen
5980	5806	6	Ford_Thunderbird_6_gen
5981	5806	7	Ford_Thunderbird_7_gen
5982	5806	9	Ford_Thunderbird_9_gen
5983	5807	1	Ford_Tourneo_Connect_1_gen
5984	5807	2	Ford_Tourneo_Connect_2_gen
5985	5808	1	Ford_Tourneo_Custom_1_gen
5986	5809	2	Ford_Transit_2_gen
5987	5809	3	Ford_Transit_3_gen
5988	5809	24	Ford_Transit_3_gen_FL
5989	5809	4	Ford_Transit_4_gen
5990	5810	2	Ford_Transit_Connect_2_gen
5991	5811	1	Ford_Transit_Custom_1_gen
5992	5812	1	Ford_Windstar_1_gen
5993	5812	2	Ford_Windstar_2_gen
5994	5812	3	Ford_Windstar_3_gen
5995	5813	1	GMC_Acadia_1_gen
5996	5813	2	GMC_Acadia_2_gen
5997	5814	4	GMC_C_Series_4_gen
5998	5815	2	GMC_Caballero_2_gen
5999	5816	1	GMC_Canyon_1_gen
6000	5817	1	GMC_Envoy_1_gen
6001	5817	2	GMC_Envoy_2_gen
6002	5818	2	GMC_K_Series_2_gen
6003	5818	3	GMC_K_Series_3_gen
6004	5818	4	GMC_K_Series_4_gen
6005	5819	1	GMC_Safari_1_gen
6006	5819	2	GMC_Safari_2_gen
6007	5820	1	GMC_Savana_1_gen
6008	5820	2	GMC_Savana_2_gen
6009	5821	3	GMC_Sierra_3_gen
6010	5822	1	GMC_Sonoma_1_gen
6011	5822	2	GMC_Sonoma_2_gen
6012	5822	3	GMC_Sonoma_3_gen
6013	5823	1	GMC_Terrain_1_gen
6014	5824	2	GMC_Topkick_2_gen
6015	5825	4	GMC_Yukon_4_gen
6016	5826	1	Gaz_21_1_gen
6017	5827	1	Gaz_24_1_gen
6018	5828	1	Gaz_31105_1_gen
6019	5829	1	Gaz_3110_1_gen
6020	5830	1	Gaz_3309_1_gen
6021	5831	1	Gaz_51_1_gen
6022	5832	1	Gaz_53_1_gen
6023	5833	1	Gaz_69_1_gen
6024	5834	1	Gaz_Chaika_13_1_gen
6025	5835	1	Gaz_Gazelle_1_gen
6026	5835	2	Gaz_Gazelle_2_gen
6027	5835	3	Gaz_Gazelle_3_gen
6028	5835	4	Gaz_Gazelle_4_gen
6029	5836	1	Gaz_M20_1_gen
6030	5837	1	Gazon_Next_1_gen
6031	5838	1	Geely_CK_1_gen
6032	5839	1	Geely_Emgrand_1_gen
6033	5839	2	Geely_Emgrand_2_gen
6034	5840	1	Geely_Emgrand_EC8_1_gen
6035	5841	1	Geely_Emgrand_GS_1_gen
6036	5842	1	Geely_Emgrand_X7_1_gen
6037	5843	1	Geely_Englon_SC6_1_gen
6038	5844	1	Geely_FC_1_gen
6039	5845	1	Geely_FLEagle_1_gen
6040	5846	1	Geely_MK_1_gen
6041	5847	1	Geely_SL_1_gen
6042	5848	23	Geely_Yuanjing_2_gen_FL
6043	5849	1	Geely_Yuanjing_SUV_1_gen
6044	5850	1	Geely_Yuanjing_X6_1_gen
6045	5851	1	Great_Wall_Deer_1_gen
6046	5852	1	Great_Wall_H8_1_gen
6047	5853	2	Great_Wall_Haval_H1_2_gen
6048	5854	1	Great_Wall_Haval_H2S_1_gen
6049	5855	1	Great_Wall_Haval_H2_1_gen
6050	5856	1	Great_Wall_Haval_H3_1_gen
6051	5857	1	Great_Wall_Haval_H6_1_gen
6052	5857	2	Great_Wall_Haval_H6_2_gen
6053	5858	1	Great_Wall_Haval_H9_1_gen
6054	5859	1	Great_Wall_Haval_M4_1_gen
6055	5860	1	Great_Wall_Safe_1_gen
6056	5861	1	Great_Wall_Voleex_C30_1_gen
6057	5862	1	Great_Wall_Voleex_C50_1_gen
6058	5863	1	Great_Wall_Wingle_5_1_gen
6059	5864	1	Great_Wall_Wingle_6_1_gen
6060	5865	3	Holden_Commodore_3_gen
6061	5865	4	Holden_Commodore_4_gen
6062	5866	10	Honda_Accord_10_gen
6063	5866	1	Honda_Accord_1_gen
6064	5866	2	Honda_Accord_2_gen
6065	5866	3	Honda_Accord_3_gen
6066	5866	4	Honda_Accord_4_gen
6067	5866	5	Honda_Accord_5_gen
6068	5866	6	Honda_Accord_6_gen
6069	5866	7	Honda_Accord_7_gen
6070	5866	8	Honda_Accord_8_gen
6071	5866	9	Honda_Accord_9_gen
6072	5867	2	Honda_Avancier_2_gen
6073	5868	1	Honda_Beat_1_gen
6074	5869	1	Honda_CR_V_1_gen
6075	5869	2	Honda_CR_V_2_gen
6076	5869	3	Honda_CR_V_3_gen
6077	5869	4	Honda_CR_V_4_gen
6078	5869	5	Honda_CR_V_5_gen
6079	5870	1	Honda_CR_Z_1_gen
6080	5871	1	Honda_City_1_gen
6081	5871	4	Honda_City_4_gen
6082	5871	5	Honda_City_5_gen
6083	5871	6	Honda_City_6_gen
6084	5872	10	Honda_Civic_10_gen
6085	5872	1	Honda_Civic_1_gen
6086	5872	2	Honda_Civic_2_gen
6087	5872	3	Honda_Civic_3_gen
6088	5872	4	Honda_Civic_4_gen
6089	5872	5	Honda_Civic_5_gen
6090	5872	6	Honda_Civic_6_gen
6091	5872	7	Honda_Civic_7_gen
6092	5872	8	Honda_Civic_8_gen
6093	5872	9	Honda_Civic_9_gen
6094	5873	1	Honda_Concerto_1_gen
6095	5874	1	Honda_Crider_1_gen
6096	5875	1	Honda_Crosstour_1_gen
6097	5876	1	Honda_Crx_1_gen
6098	5876	2	Honda_Crx_2_gen
6099	5877	1	Honda_Element_1_gen
6100	5878	2	Honda_Elysion_2_gen
6101	5879	1	Honda_FR_V_1_gen
6102	5880	1	Honda_HR_V_1_gen
6103	5880	2	Honda_HR_V_2_gen
6104	5881	1	Honda_Insight_1_gen
6105	5881	2	Honda_Insight_2_gen
6106	5882	1	Honda_Integra_1_gen
6107	5882	3	Honda_Integra_3_gen
6108	5883	1	Honda_Jazz_1_gen
6109	5883	2	Honda_Jazz_2_gen
6110	5883	3	Honda_Jazz_3_gen
6111	5884	1	Honda_Legend_1_gen
6112	5884	2	Honda_Legend_2_gen
6113	5884	3	Honda_Legend_3_gen
6114	5884	4	Honda_Legend_4_gen
6115	5885	1	Honda_Logo_1_gen
6116	5886	1	Honda_Odyssey_1_gen
6117	5886	2	Honda_Odyssey_2_gen
6118	5886	3	Honda_Odyssey_3_gen
6119	5886	24	Honda_Odyssey_3_gen_FL
6120	5886	4	Honda_Odyssey_4_gen
6121	5886	5	Honda_Odyssey_5_gen
6122	5887	1	Honda_Passport_1_gen
6123	5887	2	Honda_Passport_2_gen
6124	5888	1	Honda_Pilot_1_gen
6125	5888	2	Honda_Pilot_2_gen
6126	5888	3	Honda_Pilot_3_gen
6127	5889	1	Honda_Prelude_1_gen
6128	5889	2	Honda_Prelude_2_gen
6129	5889	3	Honda_Prelude_3_gen
6130	5889	4	Honda_Prelude_4_gen
6131	5889	5	Honda_Prelude_5_gen
6132	5890	1	Honda_Ridgeline_1_gen
6133	5891	1	Honda_S2000_1_gen
6134	5891	2	Honda_S2000_2_gen
6135	5892	4	Honda_Stepwgn_4_gen
6136	5893	1	Honda_Stream_1_gen
6137	5894	3	Honda_Vigor_3_gen
6138	5895	1	Honda_XRV_1_gen
6139	5896	1	Hummer_H1_1_gen
6140	5897	1	Hummer_H2_1_gen
6141	5898	1	Hummer_H3_1_gen
6142	5899	1	Hyundai_Accent_1_gen
6143	5899	2	Hyundai_Accent_2_gen
6144	5899	3	Hyundai_Accent_3_gen
6145	5899	4	Hyundai_Accent_4_gen
6146	5899	5	Hyundai_Accent_5_gen
6147	5900	1	Hyundai_Atos_1_gen
6148	5901	1	Hyundai_Coupe_1_gen
6149	5901	2	Hyundai_Coupe_2_gen
6150	5901	3	Hyundai_Coupe_3_gen
6151	5902	1	Hyundai_Creta_1_gen
6152	5902	2	Hyundai_Creta_2_gen
6153	5903	1	Hyundai_Elantra_1_gen
6154	5903	2	Hyundai_Elantra_2_gen
6155	5903	23	Hyundai_Elantra_2_gen_FL
6156	5903	3	Hyundai_Elantra_3_gen
6157	5903	4	Hyundai_Elantra_4_gen
6158	5903	29	Hyundai_Elantra_4_gen_ Yuedong
6159	5903	5	Hyundai_Elantra_5_gen
6160	5903	6	Hyundai_Elantra_6_gen
6161	5903	34	Hyundai_Elantra_6_gen_FL
6162	5904	1	Hyundai_Entourage_1_gen
6163	5905	2	Hyundai_Equus_2_gen
6164	5906	1	Hyundai_Genesis_1_gen
6165	5906	2	Hyundai_Genesis_2_gen
6166	5907	1	Hyundai_Getz_1_gen
6167	5907	19	Hyundai_Getz_1_gen_FL
6168	5908	3	Hyundai_Grandeur_3_gen
6169	5908	4	Hyundai_Grandeur_4_gen
6170	5908	5	Hyundai_Grandeur_5_gen
6171	5908	6	Hyundai_Grandeur_6_gen
6172	5909	3	Hyundai_H100_3_gen
6173	5910	1	Hyundai_H1_1_gen
6174	5910	2	Hyundai_H1_2_gen
6175	5910	23	Hyundai_H1_2_gen_FL
6176	5911	3	Hyundai_HD120_3_gen
6177	5912	1	Hyundai_I10_1_gen
6178	5912	2	Hyundai_I10_2_gen
6179	5913	1	Hyundai_I20_1_gen
6180	5913	2	Hyundai_I20_2_gen
6181	5914	1	Hyundai_I30_1_gen
6182	5914	2	Hyundai_I30_2_gen
6183	5914	3	Hyundai_I30_3_gen
6184	5915	1	Hyundai_I40_1_gen
6185	5916	1	Hyundai_Ioniq_1_gen
6186	5917	1	Hyundai_Ix20_1_gen
6187	5918	1	Hyundai_Kona_1_gen
6188	5919	1	Hyundai_Matrix_1_gen
6189	5919	19	Hyundai_Matrix_1_gen_FL
6190	5920	1	Hyundai_Monica_1_gen
6191	5921	1	Hyundai_Santa_Fe_1_gen
6192	5921	2	Hyundai_Santa_Fe_2_gen
6193	5921	3	Hyundai_Santa_Fe_3_gen
6194	5921	4	Hyundai_Santa_Fe_4_gen
6195	5922	3	Hyundai_Sonata_3_gen
6196	5922	24	Hyundai_Sonata_3_gen_FL
6197	5922	4	Hyundai_Sonata_4_gen
6198	5922	5	Hyundai_Sonata_5_gen
6199	5922	32	Hyundai_Sonata_5_gen_Ling_Xiang
6200	5922	6	Hyundai_Sonata_6_gen
6201	5922	7	Hyundai_Sonata_7_gen
6202	5923	1	Hyundai_Terracan_1_gen
6203	5924	1	Hyundai_Trajet_1_gen
6204	5925	1	Hyundai_Tucson_1_gen
6205	5925	2	Hyundai_Tucson_2_gen
6206	5925	3	Hyundai_Tucson_3_gen
6207	5926	1	Hyundai_Universe_1_gen
6208	5927	1	Hyundai_Veloster_1_gen
6209	5928	1	Hyundai_Veracruz_1_gen
6210	5929	1	Ikco_Samand_LX_1_gen
6211	5930	1	Infiniti_EX25_1_gen
6212	5931	1	Infiniti_FX_1_gen
6213	5931	2	Infiniti_FX_2_gen
6214	5932	2	Infiniti_G_2_gen
6215	5932	3	Infiniti_G_3_gen
6216	5932	4	Infiniti_G_4_gen
6217	5933	2	Infiniti_I30_2_gen
6218	5933	3	Infiniti_I30_3_gen
6219	5934	3	Infiniti_I35_3_gen
6220	5935	1	Infiniti_J30_1_gen
6221	5936	1	Infiniti_M_1_gen
6222	5936	2	Infiniti_M_2_gen
6223	5936	3	Infiniti_M_3_gen
6224	5936	4	Infiniti_M_4_gen
6225	5937	1	Infiniti_Q30_1_gen
6226	5938	1	Infiniti_Q45_1_gen
6227	5938	2	Infiniti_Q45_2_gen
6228	5938	3	Infiniti_Q45_3_gen
6229	5939	1	Infiniti_Q50_1_gen
6230	5940	1	Infiniti_Q60_1_gen
6231	5940	2	Infiniti_Q60_2_gen
6232	5941	1	Infiniti_Q70_1_gen
6233	5942	1	Infiniti_Qx30_1_gen
6234	5943	1	Infiniti_Qx4_1_gen
6235	5944	2	Infiniti_Qx50_2_gen
6236	5945	1	Infiniti_Qx60_1_gen
6237	5945	2	Infiniti_Qx60_2_gen
6238	5946	2	Infiniti_Qx80_2_gen
6239	5946	22	Infiniti_Qx80_2_gen_2FL
6240	5946	23	Infiniti_Qx80_2_gen_FL
6241	5947	1	Isuzu_AB230_1_gen
6242	5948	1	Isuzu_Ascender_1_gen
6243	5949	1	Isuzu_Ataman_1_gen
6244	5950	1	Isuzu_Axiom_1_gen
6245	5951	2	Isuzu_D_Max_2_gen
6246	5952	1	Isuzu_Hombre_Pickup_1_gen
6247	5953	1	Isuzu_Mu_1_gen
6248	5953	2	Isuzu_Mu_2_gen
6249	5954	1	Isuzu_Rodeo_1_gen
6250	5955	1	Isuzu_Trooper_1_gen
6251	5955	2	Isuzu_Trooper_2_gen
6252	5956	1	Isuzu_Vehicross_1_gen
6253	5957	2	Iveco_Daily_2_gen
6254	5957	3	Iveco_Daily_3_gen
6255	5957	4	Iveco_Daily_4_gen
6256	5957	5	Iveco_Daily_5_gen
6257	5957	6	Iveco_Daily_6_gen
6258	5958	2	Iveco_Stralis_2_gen
6259	5959	1	Iveco_Trakker_1_gen
6260	5960	1	Izh_2125_1_gen
6261	5961	1	Izh_2126_1_gen
6262	5962	1	Izh_27175_1_gen
6263	5963	1	Izh_2717_1_gen
6264	5964	1	Jac_J2_1_gen
6265	5965	1	Jac_J4_1_gen
6266	5966	1	Jac_J5_1_gen
6267	5967	2	Jac_Refine_M5_2_gen
6268	5968	1	Jac_Refine_S2_1_gen
6269	5969	1	Jac_S3_1_gen
6270	5970	1	Jac_T8_1_gen
6271	5971	1	Jaguar_E_Pace_1_gen
6272	5972	1	Jaguar_F_Pace_1_gen
6273	5973	1	Jaguar_F_type_1_gen
6274	5974	1	Jaguar_I_Pace_1_gen
6275	5975	1	Jaguar_S_type_1_gen
6276	5976	1	Jaguar_XF_type_1_gen
6277	5977	1	Jaguar_X_type_1_gen
6278	5978	1	Jaguar_Xe_1_gen
6279	5979	1	Jaguar_Xf_1_gen
6280	5979	2	Jaguar_Xf_2_gen
6281	5979	3	Jaguar_Xf_3_gen
6282	5980	1	Jaguar_Xj_1_gen
6283	5980	2	Jaguar_Xj_2_gen
6284	5980	3	Jaguar_Xj_3_gen
6285	5980	4	Jaguar_Xj_4_gen
6286	5980	5	Jaguar_Xj_5_gen
6287	5980	6	Jaguar_Xj_6_gen
6288	5981	1	Jaguar_Xjs_1_gen
6289	5982	1	Jaguar_Xkr_1_gen
6290	5982	2	Jaguar_Xkr_2_gen
6291	5983	1	Jcb_5Cx_1_gen
6292	5984	1	Jeep_Cherokee_1_gen
6293	5984	2	Jeep_Cherokee_2_gen
6294	5984	3	Jeep_Cherokee_3_gen
6295	5984	4	Jeep_Cherokee_4_gen
6296	5984	5	Jeep_Cherokee_5_gen
6297	5985	1	Jeep_Cj7_1_gen
6298	5986	1	Jeep_Comanche_1_gen
6299	5987	1	Jeep_Commander_1_gen
6300	5988	1	Jeep_Compass_1_gen
6301	5988	19	Jeep_Compass_1_gen_FL
6302	5988	2	Jeep_Compass_2_gen
6303	5989	1	Jeep_Dj5_1_gen
6304	5990	1	Jeep_Grand_Cherokee_1_gen
6305	5990	2	Jeep_Grand_Cherokee_2_gen
6306	5990	3	Jeep_Grand_Cherokee_3_gen
6307	5990	4	Jeep_Grand_Cherokee_4_gen
6308	5990	27	Jeep_Grand_Cherokee_4_gen_FL
6309	5991	1	Jeep_Grand_Wagoneer_1_gen
6310	5992	1	Jeep_J8_1_gen
6311	5993	1	Jeep_Liberty_1_gen
6312	5993	2	Jeep_Liberty_2_gen
6313	5994	1	Jeep_Patriot_1_gen
6314	5995	1	Jeep_Pickup_1_gen
6315	5996	1	Jeep_Renegade_1_gen
6316	5997	1	Jeep_Scrambler_1_gen
6317	5998	2	Jeep_Wrangler_2_gen
6318	5998	3	Jeep_Wrangler_3_gen
6319	5999	1	Kamaz_4308_1_gen
6320	6000	1	Kamaz_5320_1_gen
6321	6001	1	Kamaz_5460_1_gen
6322	6002	1	Kamaz_55111_1_gen
6323	6003	1	Kia_Cadenza_1_gen
6324	6004	1	Kia_Carens_1_gen
6325	6004	2	Kia_Carens_2_gen
6326	6004	3	Kia_Carens_3_gen
6327	6005	1	Kia_Carnival_1_gen
6328	6005	2	Kia_Carnival_2_gen
6329	6006	1	Kia_Ceed_1_gen
6330	6006	2	Kia_Ceed_2_gen
6331	6006	3	Kia_Ceed_3_gen
6332	6007	1	Kia_Cerato_1_gen
6333	6007	2	Kia_Cerato_2_gen
6334	6007	3	Kia_Cerato_3_gen
6335	6008	1	Kia_KX3_1_gen
6336	6009	1	Kia_Koup_1_gen
6337	6010	1	Kia_Mohave_1_gen
6338	6011	1	Kia_Niro_1_gen
6339	6012	1	Kia_Opirus_1_gen
6340	6013	1	Kia_Optima_1_gen
6341	6013	2	Kia_Optima_2_gen
6342	6013	23	Kia_Optima_2_gen_FL
6343	6013	3	Kia_Optima_3_gen
6344	6013	4	Kia_Optima_4_gen
6345	6014	1	Kia_Picanto_1_gen
6346	6014	19	Kia_Picanto_1_gen_FL
6347	6014	2	Kia_Picanto_2_gen
6348	6014	3	Kia_Picanto_3_gen
6349	6015	1	Kia_Rio_1_gen
6350	6015	2	Kia_Rio_2_gen
6351	6015	3	Kia_Rio_3_gen
6352	6015	4	Kia_Rio_4_gen
6353	6016	1	Kia_Sedona_1_gen
6354	6016	2	Kia_Sedona_2_gen
6355	6017	1	Kia_Sephia_1_gen
6356	6017	2	Kia_Sephia_2_gen
6357	6017	23	Kia_Sephia_2_gen_FL
6358	6018	1	Kia_Sorento_1_gen
6359	6018	2	Kia_Sorento_2_gen
6360	6018	3	Kia_Sorento_3_gen
6361	6019	1	Kia_Soul_1_gen
6362	6019	2	Kia_Soul_2_gen
6363	6020	1	Kia_Sportage_1_gen
6364	6020	2	Kia_Sportage_2_gen
6365	6020	3	Kia_Sportage_3_gen
6366	6020	4	Kia_Sportage_4_gen
6367	6021	1	Kia_Stinger_1_gen
6368	6022	1	Kia_Stonic_1_gen
6369	6023	1	Kia_Venga_1_gen
6370	6024	1	Koenigsegg_Agera_1_gen
6371	6025	1	Kraz_65055_1_gen
6372	6026	1	Kraz_6510_1_gen
6373	6027	1	Kraz_Next_1_gen
6374	6028	1	Lada_2101_1_gen
6375	6029	1	Lada_2102_1_gen
6376	6030	1	Lada_2103_1_gen
6377	6031	1	Lada_2104_1_gen
6378	6032	1	Lada_2105_1_gen
6379	6033	1	Lada_2106_1_gen
6380	6034	1	Lada_2107_1_gen
6381	6035	1	Lada_2108_1_gen
6382	6036	1	Lada_21099_1_gen
6383	6037	1	Lada_2109_1_gen
6384	6038	1	Lada_2110_1_gen
6385	6039	1	Lada_2111_1_gen
6386	6040	1	Lada_2112_1_gen
6387	6041	1	Lada_2113_1_gen
6388	6042	1	Lada_2114_1_gen
6389	6043	1	Lada_2115_1_gen
6390	6044	1	Lada_2171_1_gen
6391	6045	1	Lada_Granta_1_gen
6392	6046	1	Lada_Kalina_1_gen
6393	6047	1	Lada_Largus_1_gen
6394	6048	1	Lada_Niva_1_gen
6395	6049	1	Lada_Oka_1_gen
6396	6050	1	Lada_Priora_1_gen
6397	6051	1	Lada_Vesta_1_gen
6398	6052	1	Lada_Xray_1_gen
6399	6053	1	Lamborghini_Aventador_1_gen
6400	6054	1	Lamborghini_Gallardo_1_gen
6401	6055	1	Lamborghini_Huracan_1_gen
6402	6056	1	Lamborghini_Urus_1_gen
6403	6057	1	Lancia_Delta_1_gen
6404	6057	3	Lancia_Delta_3_gen
6405	6058	1	Lancia_Kappa_1_gen
6406	6059	1	Lancia_Lybra_1_gen
6407	6060	1	Lancia_Musa_1_gen
6408	6061	2	Lancia_Phedra_2_gen
6409	6062	2	Lancia_Thema_2_gen
6410	6063	1	Lancia_Thesis_1_gen
6411	6064	1	Lancia_Y10_1_gen
6412	6065	1	Lancia_Ypsilon_1_gen
6413	6065	2	Lancia_Ypsilon_2_gen
6414	6066	2	Land_Rover_Defender_2_gen
6415	6066	3	Land_Rover_Defender_3_gen
6416	6067	1	Land_Rover_Discovery_1_gen
6417	6067	19	Land_Rover_Discovery_1_gen_FL
6418	6067	2	Land_Rover_Discovery_2_gen
6419	6067	3	Land_Rover_Discovery_3_gen
6420	6068	1	Land_Rover_Evoque_1_gen
6421	6068	2	Land_Rover_Evoque_2_gen
6422	6069	1	Land_Rover_Freelander_1_gen
6423	6069	2	Land_Rover_Freelander_2_gen
6424	6070	1	Land_Rover_Range_Rover_1_gen
6425	6070	2	Land_Rover_Range_Rover_2_gen
6426	6070	3	Land_Rover_Range_Rover_3_gen
6427	6070	4	Land_Rover_Range_Rover_4_gen
6428	6071	1	Lexus_Ct_1_gen
6429	6071	19	Lexus_Ct_1_gen_FL
6430	6072	2	Lexus_Es_2_gen
6431	6072	3	Lexus_Es_3_gen
6432	6072	4	Lexus_Es_4_gen
6433	6072	5	Lexus_Es_5_gen
6434	6072	6	Lexus_Es_6_gen
6435	6072	7	Lexus_Es_7_gen
6436	6073	1	Lexus_Gs_1_gen
6437	6073	2	Lexus_Gs_2_gen
6438	6073	3	Lexus_Gs_3_gen
6439	6073	4	Lexus_Gs_4_gen
6440	6074	1	Lexus_Gx_1_gen
6441	6074	2	Lexus_Gx_2_gen
6442	6074	23	Lexus_Gx_2_gen_FL
6443	6075	1	Lexus_Is_1_gen
6444	6075	2	Lexus_Is_2_gen
6445	6075	3	Lexus_Is_3_gen
6446	6076	1	Lexus_Lc_1_gen
6447	6077	1	Lexus_Ls_1_gen
6448	6077	2	Lexus_Ls_2_gen
6449	6077	3	Lexus_Ls_3_gen
6450	6077	4	Lexus_Ls_4_gen
6451	6077	5	Lexus_Ls_5_gen
6452	6078	1	Lexus_Lx_1_gen
6453	6078	2	Lexus_Lx_2_gen
6454	6078	3	Lexus_Lx_3_gen
6455	6078	24	Lexus_Lx_3_gen_FL
6456	6079	1	Lexus_Nx_1_gen
6457	6080	1	Lexus_Rc_1_gen
6458	6081	1	Lexus_Rx_1_gen
6459	6081	2	Lexus_Rx_2_gen
6460	6081	3	Lexus_Rx_3_gen
6461	6081	4	Lexus_Rx_4_gen
6462	6082	1	Lexus_Sc_1_gen
6463	6083	1	Lexus_Ux_1_gen
6464	6084	1	Lifan_Breez_1_gen
6465	6085	1	Lifan_Solano_1_gen
6466	6086	1	Lifan_X60_1_gen
6467	6087	1	Lifan_Xuanlang_1_gen
6468	6088	1	Ligier_J50_1_gen
6469	6089	1	Ligier_X_Too_1_gen
6470	6090	1	Lincoln_Aviator_1_gen
6471	6091	1	Lincoln_Blackwood_1_gen
6472	6092	10	Lincoln_Continental_10_gen
6473	6092	5	Lincoln_Continental_5_gen
6474	6092	6	Lincoln_Continental_6_gen
6475	6092	7	Lincoln_Continental_7_gen
6476	6092	8	Lincoln_Continental_8_gen
6477	6092	9	Lincoln_Continental_9_gen
6478	6093	1	Lincoln_Ls_1_gen
6479	6094	2	Lincoln_Mark_2_gen
6480	6094	3	Lincoln_Mark_3_gen
6481	6094	4	Lincoln_Mark_4_gen
6482	6094	5	Lincoln_Mark_5_gen
6483	6094	6	Lincoln_Mark_6_gen
6484	6094	7	Lincoln_Mark_7_gen
6485	6095	1	Lincoln_Mark_Lt_1_gen
6486	6096	1	Lincoln_Mkc_1_gen
6487	6097	1	Lincoln_Mks_1_gen
6488	6098	1	Lincoln_Mkt_1_gen
6489	6099	1	Lincoln_Mkx_1_gen
6490	6099	2	Lincoln_Mkx_2_gen
6491	6100	1	Lincoln_Mkz_1_gen
6492	6100	2	Lincoln_Mkz_2_gen
6493	6101	1	Lincoln_Navigator_1_gen
6494	6101	2	Lincoln_Navigator_2_gen
6495	6101	3	Lincoln_Navigator_3_gen
6496	6101	4	Lincoln_Navigator_4_gen
6497	6102	1	Lincoln_Towncar_1_gen
6498	6102	2	Lincoln_Towncar_2_gen
6499	6102	3	Lincoln_Towncar_3_gen
6500	6103	2	Lotus_Elise_2_gen
6501	6104	3	Lotus_Esprit_3_gen
6502	6105	1	Lotus_Evora_1_gen
6503	6106	1	Luaz_969_1_gen
6504	6107	1	Man_M90_1_gen
6505	6108	1	Man_TGX_1_gen
6506	6109	1	Man_Tgs_1_gen
6507	6110	1	Maserati_Ghibli_1_gen
6508	6111	1	Maserati_Gran_Turismo_1_gen
6509	6112	1	Maserati_Gransport_1_gen
6510	6113	1	Maserati_Levante_1_gen
6511	6114	5	Maserati_Quattroporte_5_gen
6512	6114	6	Maserati_Quattroporte_6_gen
6513	6115	1	Maserati_Spider_1_gen
6514	6116	1	Maybach_57_1_gen
6515	6117	1	Maybach_62_1_gen
6516	6118	1	Maz_206069_1_gen
6517	6119	1	Maz_5336_1_gen
6518	6120	1	Maz_551633_1_gen
6519	6121	1	Maz_5549_1_gen
6520	6122	1	Maz_5551_1_gen
6521	6123	2	Mazda_2_2_gen
6522	6123	3	Mazda_2_3_gen
6523	6123	4	Mazda_2_4_gen
6524	6124	1	Mazda_323F_1_gen
6525	6125	6	Mazda_323_6_gen
6526	6125	7	Mazda_323_7_gen
6527	6125	8	Mazda_323_8_gen
6528	6126	1	Mazda_3_1_gen
6529	6126	2	Mazda_3_2_gen
6530	6126	3	Mazda_3_3_gen
6531	6126	4	Mazda_3_4_gen
6532	6127	1	Mazda_5_1_gen
6533	6127	2	Mazda_5_2_gen
6534	6127	3	Mazda_5_3_gen
6535	6128	4	Mazda_626_4_gen
6536	6128	5	Mazda_626_5_gen
6537	6128	6	Mazda_626_6_gen
6538	6129	1	Mazda_6_1_gen
6539	6129	2	Mazda_6_2_gen
6540	6129	3	Mazda_6_3_gen
6541	6130	6	Mazda_929_6_gen
6542	6131	3	Mazda_B_3_gen
6543	6131	4	Mazda_B_4_gen
6544	6131	5	Mazda_B_5_gen
6545	6132	3	Mazda_Bongo_3_gen
6546	6133	1	Mazda_CX_30_1_gen
6547	6134	1	Mazda_CX_3_1_gen
6548	6135	1	Mazda_CX_5_1_gen
6549	6135	2	Mazda_CX_5_2_gen
6550	6136	1	Mazda_CX_7_1_gen
6551	6137	1	Mazda_CX_9_1_gen
6552	6137	2	Mazda_CX_9_2_gen
6553	6138	1	Mazda_Lantis_1_gen
6554	6139	2	Mazda_MX_5_2_gen
6555	6139	3	Mazda_MX_5_3_gen
6556	6139	4	Mazda_MX_5_4_gen
6557	6140	1	Mazda_Mpv_1_gen
6558	6140	2	Mazda_Mpv_2_gen
6559	6141	1	Mazda_Mx3_1_gen
6560	6142	1	Mazda_Mx6_1_gen
6561	6142	2	Mazda_Mx6_2_gen
6562	6143	1	Mazda_Navajo_1_gen
6563	6144	1	Mazda_RX8_1_gen
6564	6145	1	Mazda_Rx7_1_gen
6565	6145	2	Mazda_Rx7_2_gen
6566	6145	3	Mazda_Rx7_3_gen
6567	6146	1	Mazda_Tribute_1_gen
6568	6146	2	Mazda_Tribute_2_gen
6569	6147	1	Mazda_Xedos_6_1_gen
6570	6148	1	Mercedes_250_1_gen
6571	6149	1	Mercedes_A_1_gen
6572	6149	2	Mercedes_A_2_gen
6573	6149	3	Mercedes_A_3_gen
6574	6149	4	Mercedes_A_4_gen
6575	6150	1	Mercedes_Actros_1_gen
6576	6151	3	Mercedes_Atego_3_gen
6577	6152	1	Mercedes_Axor_3236_1_gen
6578	6153	1	Mercedes_B_1_gen
6579	6153	2	Mercedes_B_2_gen
6580	6153	3	Mercedes_B_3_gen
6581	6154	1	Mercedes_CLA_1_gen
6582	6154	2	Mercedes_CLA_2_gen
6583	6155	1	Mercedes_CLK_1_gen
6584	6155	2	Mercedes_CLK_2_gen
6585	6156	1	Mercedes_CLS_1_gen
6586	6156	2	Mercedes_CLS_2_gen
6587	6156	23	Mercedes_CLS_2_gen_FL
6588	6157	1	Mercedes_CL_1_gen
6589	6157	2	Mercedes_CL_2_gen
6590	6157	3	Mercedes_CL_3_gen
6591	6158	1	Mercedes_C_1_gen
6592	6158	2	Mercedes_C_2_gen
6593	6158	3	Mercedes_C_3_gen
6594	6158	4	Mercedes_C_4_gen
6595	6159	1	Mercedes_Citan_1_gen
6596	6160	1	Mercedes_E_1_gen
6597	6160	2	Mercedes_E_2_gen
6598	6160	3	Mercedes_E_3_gen
6599	6160	4	Mercedes_E_4_gen
6600	6160	5	Mercedes_E_5_gen
6601	6161	1	Mercedes_GLA_1_gen
6602	6162	1	Mercedes_GLB_1_gen
6603	6163	1	Mercedes_GLC_1_gen
6604	6164	1	Mercedes_GLE_1_gen
6605	6164	2	Mercedes_GLE_2_gen
6606	6165	1	Mercedes_GLK_1_gen
6607	6165	19	Mercedes_GLK_1_gen_FL
6608	6166	1	Mercedes_GLS_1_gen
6609	6167	1	Mercedes_GL_1_gen
6610	6167	2	Mercedes_GL_2_gen
6611	6168	1	Mercedes_GT_1_gen
6612	6169	1	Mercedes_G_1_gen
6613	6169	2	Mercedes_G_2_gen
6614	6170	1	Mercedes_MB100_1_gen
6615	6171	1	Mercedes_ML_1_gen
6616	6171	2	Mercedes_ML_2_gen
6617	6172	1	Mercedes_O309_1_gen
6618	6173	1	Mercedes_R_1_gen
6619	6173	19	Mercedes_R_1_gen_FL
6620	6174	2	Mercedes_SL_2_gen
6621	6174	3	Mercedes_SL_3_gen
6622	6174	4	Mercedes_SL_4_gen
6623	6174	5	Mercedes_SL_5_gen
6624	6174	34	Mercedes_SL_6_gen_FL
6625	6175	2	Mercedes_S_2_gen
6626	6175	3	Mercedes_S_3_gen
6627	6175	4	Mercedes_S_4_gen
6628	6175	5	Mercedes_S_5_gen
6629	6175	6	Mercedes_S_6_gen
6630	6176	1	Mercedes_S_Coupe_1_gen
6631	6177	1	Mercedes_Slk_1_gen
6632	6177	2	Mercedes_Slk_2_gen
6633	6178	1	Mercedes_Slr_1_gen
6634	6179	1	Mercedes_Sprinter_1_gen
6635	6179	2	Mercedes_Sprinter_2_gen
6636	6179	3	Mercedes_Sprinter_3_gen
6637	6180	1	Mercedes_T1_1_gen
6638	6181	1	Mercedes_Vaneo_1_gen
6639	6182	1	Mercedes_Vito_1_gen
6640	6182	2	Mercedes_Vito_2_gen
6641	6182	3	Mercedes_Vito_3_gen
6642	6183	1	Mercedes_W123_1_gen
6643	6184	1	Mercedes_W201_1_gen
6644	6185	1	Mercedes_X_1_gen
6645	6186	2	Mercury_Capri_2_gen
6646	6186	3	Mercury_Capri_3_gen
6647	6187	1	Mercury_Cougar_1_gen
6648	6187	3	Mercury_Cougar_3_gen
6649	6187	4	Mercury_Cougar_4_gen
6650	6187	6	Mercury_Cougar_6_gen
6651	6187	7	Mercury_Cougar_7_gen
6652	6187	8	Mercury_Cougar_8_gen
6653	6188	1	Mercury_Grandmarquis_1_gen
6654	6188	2	Mercury_Grandmarquis_2_gen
6655	6188	3	Mercury_Grandmarquis_3_gen
6656	6188	4	Mercury_Grandmarquis_4_gen
6657	6189	1	Mercury_Marauder_revival_1_gen
6658	6190	1	Mercury_Mariner_1_gen
6659	6190	2	Mercury_Mariner_2_gen
6660	6191	1	Mercury_Milan_1_gen
6661	6192	2	Mercury_Montego_2_gen
6662	6192	3	Mercury_Montego_3_gen
6663	6193	7	Mercury_Monterey_7_gen
6664	6194	1	Mercury_Mountaineer_1_gen
6665	6194	2	Mercury_Mountaineer_2_gen
6666	6194	3	Mercury_Mountaineer_3_gen
6667	6195	1	Mercury_Sable_1_gen
6668	6195	2	Mercury_Sable_2_gen
6669	6195	3	Mercury_Sable_3_gen
6670	6195	4	Mercury_Sable_4_gen
6671	6195	5	Mercury_Sable_5_gen
6672	6196	2	Mercury_Topaz_2_gen
6673	6197	1	Mercury_Tracer_1_gen
6674	6197	2	Mercury_Tracer_2_gen
6675	6197	3	Mercury_Tracer_3_gen
6676	6198	1	Mercury_Villager_1_gen
6677	6198	2	Mercury_Villager_2_gen
6678	6199	1	Mg_5_1_gen
6679	6200	1	Mg_6_1_gen
6680	6201	1	Mg_Zr_1_gen
6681	6202	1	Mini_Clubman_1_gen
6682	6202	2	Mini_Clubman_2_gen
6683	6203	1	Mini_Cooper_1_gen
6684	6203	2	Mini_Cooper_2_gen
6685	6203	3	Mini_Cooper_3_gen
6686	6204	1	Mini_Countryman_1_gen
6687	6204	2	Mini_Countryman_2_gen
6688	6205	1	Mini_Paceman_1_gen
6689	6206	1	Mitsubishi_3000Gt_1_gen
6690	6207	3	Mitsubishi_Asx_3_gen
6691	6207	4	Mitsubishi_Asx_4_gen
6692	6208	19	Mitsubishi_Carisma_1_gen_FL
6693	6209	3	Mitsubishi_Chariot_3_gen
6694	6210	2	Mitsubishi_Colt_2_gen
6695	6210	23	Mitsubishi_Colt_2_gen_FL
6696	6210	30	Mitsubishi_Colt_5_gen_EU
6697	6211	4	Mitsubishi_Delica_4_gen
6698	6212	1	Mitsubishi_Diamante_1_gen
6699	6212	2	Mitsubishi_Diamante_2_gen
6700	6213	1	Mitsubishi_Eclipse_1_gen
6701	6213	2	Mitsubishi_Eclipse_2_gen
6702	6213	3	Mitsubishi_Eclipse_3_gen
6703	6213	4	Mitsubishi_Eclipse_4_gen
6704	6214	1	Mitsubishi_Eclipse_Cross_1_gen
6705	6215	1	Mitsubishi_Endeavor_1_gen
6706	6216	1	Mitsubishi_GTO_1_gen
6707	6217	6	Mitsubishi_Galant_6_gen
6708	6217	7	Mitsubishi_Galant_7_gen
6709	6217	8	Mitsubishi_Galant_8_gen
6710	6217	9	Mitsubishi_Galant_9_gen
6711	6218	1	Mitsubishi_Grandis_1_gen
6712	6219	1	Mitsubishi_I_Miev_1_gen
6713	6220	3	Mitsubishi_L200_3_gen
6714	6220	4	Mitsubishi_L200_4_gen
6715	6220	5	Mitsubishi_L200_5_gen
6716	6220	31	Mitsubishi_L200_5_gen_FL
6717	6221	3	Mitsubishi_L300_3_gen
6718	6222	10	Mitsubishi_Lancer_10_gen
6719	6222	8	Mitsubishi_Lancer_8_gen
6720	6222	9	Mitsubishi_Lancer_9_gen
6721	6223	2	Mitsubishi_Mighty Max_2_gen
6722	6224	5	Mitsubishi_Mirage_5_gen
6723	6224	6	Mitsubishi_Mirage_6_gen
6724	6225	1	Mitsubishi_Outlander_1_gen
6725	6225	2	Mitsubishi_Outlander_2_gen
6726	6225	23	Mitsubishi_Outlander_2_gen_FL
6727	6225	3	Mitsubishi_Outlander_3_gen
6728	6225	4	Mitsubishi_Outlander_4_gen
6729	6226	1	Mitsubishi_Pajero_1_gen
6730	6226	2	Mitsubishi_Pajero_2_gen
6731	6226	3	Mitsubishi_Pajero_3_gen
6732	6226	4	Mitsubishi_Pajero_4_gen
6733	6227	1	Mitsubishi_Pajero_Pinin_1_gen
6734	6228	1	Mitsubishi_Pajero_Sport_1_gen
6735	6228	2	Mitsubishi_Pajero_Sport_2_gen
6736	6228	3	Mitsubishi_Pajero_Sport_3_gen
6737	6229	1	Mitsubishi_Raider_1_gen
6738	6230	19	Mitsubishi_Space_Star_1_gen_FL
6739	6230	2	Mitsubishi_Space_Star_2_gen
6740	6230	23	Mitsubishi_Space_Star_2_gen_FL
6741	6231	1	Mitsubishi_Starion_1_gen
6742	6232	1	Moscvitch_412_1_gen
6743	6233	1	Mosvitch_2141_1_gen
6744	6234	1	Neoplan_Megaliner_1_gen
6745	6235	1	Neoplan_Starliner_1_gen
6746	6236	2	Nissan_240sx_2_gen
6747	6237	1	Nissan_300Zx_1_gen
6748	6237	2	Nissan_300Zx_2_gen
6749	6238	1	Nissan_350z_1_gen
6750	6239	1	Nissan_370z_1_gen
6751	6240	1	Nissan_720_1_gen
6752	6241	1	Nissan_Almera_1_gen
6753	6241	2	Nissan_Almera_2_gen
6754	6242	2	Nissan_Almera_Classic_2_gen
6755	6243	1	Nissan_Altima_1_gen
6756	6243	2	Nissan_Altima_2_gen
6757	6243	3	Nissan_Altima_3_gen
6758	6243	4	Nissan_Altima_4_gen
6759	6244	1	Nissan_Armada_1_gen
6760	6245	11	Nissan_Bluebird_11_gen
6761	6245	12	Nissan_Bluebird_12_gen
6762	6245	14	Nissan_Bluebird_14_gen
6763	6246	3	Nissan_Cube_3_gen
6764	6247	1	Nissan_Fairlady_Z_1_gen
6765	6248	2	Nissan_Frontier_2_gen
6766	6249	1	Nissan_GT_R_1_gen
6767	6250	1	Nissan_Juke_1_gen
6768	6250	19	Nissan_Juke_1_gen_FL
6769	6250	2	Nissan_Juke_2_gen
6770	6251	1	Nissan_Latio_1_gen
6771	6252	1	Nissan_Leaf_1_gen
6772	6252	2	Nissan_Leaf_2_gen
6773	6253	1	Nissan_Livina_1_gen
6774	6254	2	Nissan_Maxima_2_gen
6775	6254	3	Nissan_Maxima_3_gen
6776	6254	4	Nissan_Maxima_4_gen
6777	6254	5	Nissan_Maxima_5_gen
6778	6254	6	Nissan_Maxima_6_gen
6779	6254	7	Nissan_Maxima_7_gen
6780	6254	8	Nissan_Maxima_8_gen
6781	6255	1	Nissan_Micra_1_gen
6782	6255	2	Nissan_Micra_2_gen
6783	6255	3	Nissan_Micra_3_gen
6784	6255	4	Nissan_Micra_4_gen
6785	6255	5	Nissan_Micra_5_gen
6786	6256	1	Nissan_Murano_1_gen
6787	6256	2	Nissan_Murano_2_gen
6788	6256	3	Nissan_Murano_3_gen
6789	6257	1	Nissan_NP300_1_gen
6790	6258	1	Nissan_NV200_1_gen
6791	6259	1	Nissan_NV400_1_gen
6792	6260	1	Nissan_Navara_1_gen
6793	6260	2	Nissan_Navara_2_gen
6794	6260	3	Nissan_Navara_3_gen
6795	6261	1	Nissan_Note_1_gen
6796	6261	2	Nissan_Note_2_gen
6797	6262	1	Nissan_Pathfinder_1_gen
6798	6262	2	Nissan_Pathfinder_2_gen
6799	6262	3	Nissan_Pathfinder_3_gen
6800	6262	4	Nissan_Pathfinder_4_gen
6801	6263	4	Nissan_Patrol_4_gen
6802	6263	5	Nissan_Patrol_5_gen
6803	6263	6	Nissan_Patrol_6_gen
6804	6264	2	Nissan_Pino_2_gen
6805	6265	1	Nissan_Pixo_1_gen
6806	6266	2	Nissan_Presage_2_gen
6807	6267	1	Nissan_Primera_1_gen
6808	6267	2	Nissan_Primera_2_gen
6809	6267	23	Nissan_Primera_2_gen_FL
6810	6267	3	Nissan_Primera_3_gen
6811	6268	1	Nissan_Qashqai_1_gen
6812	6268	19	Nissan_Qashqai_1_gen_FL
6813	6268	2	Nissan_Qashqai_2_gen
6814	6268	23	Nissan_Qashqai_2_gen_FL
6815	6269	1	Nissan_Quest_1_gen
6816	6269	2	Nissan_Quest_2_gen
6817	6269	3	Nissan_Quest_3_gen
6818	6269	4	Nissan_Quest_4_gen
6819	6270	1	Nissan_Rogue_1_gen
6820	6271	1	Nissan_Sentra_1_gen
6821	6271	2	Nissan_Sentra_2_gen
6822	6271	3	Nissan_Sentra_3_gen
6823	6271	4	Nissan_Sentra_4_gen
6824	6271	5	Nissan_Sentra_5_gen
6825	6271	6	Nissan_Sentra_6_gen
6826	6272	4	Nissan_Stanza_4_gen
6827	6273	5	Nissan_Sunny_5_gen
6828	6273	6	Nissan_Sunny_6_gen
6829	6273	7	Nissan_Sunny_7_gen
6830	6273	8	Nissan_Sunny_8_gen
6831	6274	1	Nissan_Sylphy_1_gen
6832	6274	2	Nissan_Sylphy_2_gen
6833	6274	3	Nissan_Sylphy_3_gen
6834	6275	1	Nissan_Teana_1_gen
6835	6275	2	Nissan_Teana_2_gen
6836	6275	3	Nissan_Teana_3_gen
6837	6276	1	Nissan_Terrano_1_gen
6838	6276	2	Nissan_Terrano_2_gen
6839	6277	1	Nissan_Tiida_1_gen
6840	6277	2	Nissan_Tiida_2_gen
6841	6277	3	Nissan_Tiida_3_gen
6842	6278	1	Nissan_Tino_1_gen
6843	6279	1	Nissan_Titan_1_gen
6844	6280	1	Nissan_Vanette_1_gen
6845	6281	1	Nissan_X_Trail_1_gen
6846	6281	2	Nissan_X_Trail_2_gen
6847	6281	3	Nissan_X_Trail_3_gen
6848	6282	1	Nissan_Xterra_1_gen
6849	6282	2	Nissan_Xterra_2_gen
6850	6283	1	Oldsmobile_Achieva_1_gen
6851	6284	1	Oldsmobile_Alero_1_gen
6852	6285	1	Oldsmobile_Aurora_1_gen
6853	6285	2	Oldsmobile_Aurora_2_gen
6854	6286	1	Oldsmobile_Bravada_1_gen
6855	6286	2	Oldsmobile_Bravada_2_gen
6856	6286	3	Oldsmobile_Bravada_3_gen
6857	6287	3	Oldsmobile_Cutlass_3_gen
6858	6287	4	Oldsmobile_Cutlass_4_gen
6859	6287	5	Oldsmobile_Cutlass_5_gen
6860	6287	6	Oldsmobile_Cutlass_6_gen
6861	6288	10	Oldsmobile_Eightyeight_10_gen
6862	6288	6	Oldsmobile_Eightyeight_6_gen
6863	6288	7	Oldsmobile_Eightyeight_7_gen
6864	6288	8	Oldsmobile_Eightyeight_8_gen
6865	6288	9	Oldsmobile_Eightyeight_9_gen
6866	6289	1	Oldsmobile_Intrigue_1_gen
6867	6290	10	Oldsmobile_Ninetyeight_10_gen
6868	6290	11	Oldsmobile_Ninetyeight_11_gen
6869	6290	12	Oldsmobile_Ninetyeight_12_gen
6870	6290	9	Oldsmobile_Ninetyeight_9_gen
6871	6291	2	Oldsmobile_Omega_2_gen
6872	6292	1	Oldsmobile_Silhouette_1_gen
6873	6292	2	Oldsmobile_Silhouette_2_gen
6874	6293	2	Oldsmobile_Toronado_2_gen
6875	6293	3	Oldsmobile_Toronado_3_gen
6876	6293	4	Oldsmobile_Toronado_4_gen
6877	6294	1	Opel_Adam_1_gen
6878	6295	1	Opel_Agila_1_gen
6879	6295	2	Opel_Agila_2_gen
6880	6296	1	Opel_Ampera_1_gen
6881	6297	1	Opel_Antara_1_gen
6882	6298	3	Opel_Ascona_3_gen
6883	6299	1	Opel_Astra_1_gen
6884	6299	2	Opel_Astra_2_gen
6885	6299	3	Opel_Astra_3_gen
6886	6299	4	Opel_Astra_4_gen
6887	6299	5	Opel_Astra_5_gen
6888	6300	1	Opel_Calibra_1_gen
6889	6301	2	Opel_Combo_2_gen
6890	6301	3	Opel_Combo_3_gen
6891	6301	4	Opel_Combo_4_gen
6892	6301	5	Opel_Combo_5_gen
6893	6302	2	Opel_Corsa_2_gen
6894	6302	3	Opel_Corsa_3_gen
6895	6302	4	Opel_Corsa_4_gen
6896	6302	5	Opel_Corsa_5_gen
6897	6302	6	Opel_Corsa_6_gen
6898	6303	1	Opel_Crossland_1_gen
6899	6304	2	Opel_Frontera_2_gen
6900	6305	1	Opel_Grandland_X_1_gen
6901	6306	1	Opel_Gt_1_gen
6902	6307	1	Opel_Insignia_1_gen
6903	6307	19	Opel_Insignia_1_gen_FL
6904	6307	2	Opel_Insignia_2_gen
6905	6308	5	Opel_Kadett_5_gen
6906	6309	1	Opel_Karl_1_gen
6907	6310	1	Opel_Meriva_1_gen
6908	6310	2	Opel_Meriva_2_gen
6909	6311	1	Opel_Mokka_1_gen
6910	6311	19	Opel_Mokka_1_gen_FL
6911	6312	2	Opel_Monterey_2_gen
6912	6313	23	Opel_Movano_2_gen_FL
6913	6313	3	Opel_Movano_3_gen
6914	6314	1	Opel_Omega_1_gen
6915	6314	2	Opel_Omega_2_gen
6916	6315	1	Opel_Signum_1_gen
6917	6316	1	Opel_Sintra_1_gen
6918	6317	2	Opel_Tigra_2_gen
6919	6318	1	Opel_Vectra_1_gen
6920	6318	2	Opel_Vectra_2_gen
6921	6318	3	Opel_Vectra_3_gen
6922	6318	24	Opel_Vectra_3_gen_FL
6923	6319	1	Opel_Vivaro_1_gen
6924	6319	2	Opel_Vivaro_2_gen
6925	6319	3	Opel_Vivaro_3_gen
6926	6320	1	Opel_Zafira_1_gen
6927	6320	2	Opel_Zafira_2_gen
6928	6320	3	Opel_Zafira_3_gen
6929	6320	24	Opel_Zafira_3_gen_FL
6930	6321	1	Paz_3205_1_gen
6931	6322	1	Peugeot_1007_1_gen
6932	6323	2	Peugeot_106_2_gen
6933	6324	1	Peugeot_107_1_gen
6934	6325	1	Peugeot_108_1_gen
6935	6326	1	Peugeot_2008_1_gen
6936	6327	1	Peugeot_205_1_gen
6937	6328	1	Peugeot_206_1_gen
6938	6328	19	Peugeot_206_1_gen_FL
6939	6329	1	Peugeot_207_1_gen
6940	6330	1	Peugeot_208_1_gen
6941	6330	2	Peugeot_208_2_gen
6942	6331	1	Peugeot_3008_1_gen
6943	6331	2	Peugeot_3008_2_gen
6944	6332	1	Peugeot_301_1_gen
6945	6332	19	Peugeot_301_1_gen_FL
6946	6333	1	Peugeot_304_1_gen
6947	6334	1	Peugeot_306_1_gen
6948	6335	1	Peugeot_307_1_gen
6949	6336	1	Peugeot_308_1_gen
6950	6336	2	Peugeot_308_2_gen
6951	6337	1	Peugeot_309_1_gen
6952	6338	1	Peugeot_4007_1_gen
6953	6339	1	Peugeot_4008_1_gen
6954	6340	1	Peugeot_405_1_gen
6955	6341	1	Peugeot_406_1_gen
6956	6342	1	Peugeot_407_1_gen
6957	6343	1	Peugeot_408_1_gen
6958	6343	2	Peugeot_408_2_gen
6959	6344	1	Peugeot_5008_1_gen
6960	6344	2	Peugeot_5008_2_gen
6961	6345	1	Peugeot_508_1_gen
6962	6345	2	Peugeot_508_2_gen
6963	6346	1	Peugeot_605_1_gen
6964	6347	1	Peugeot_607_1_gen
6965	6348	1	Peugeot_806_1_gen
6966	6349	1	Peugeot_807_1_gen
6967	6350	1	Peugeot_Bipper_1_gen
6968	6351	1	Peugeot_Boxer_1_gen
6969	6351	2	Peugeot_Boxer_2_gen
6970	6351	23	Peugeot_Boxer_2_gen_FL
6971	6352	1	Peugeot_Expert_1_gen
6972	6352	2	Peugeot_Expert_2_gen
6973	6352	3	Peugeot_Expert_3_gen
6974	6353	1	Peugeot_Ion_1_gen
6975	6354	1	Peugeot_Partner_1_gen
6976	6354	19	Peugeot_Partner_1_gen_FL
6977	6354	2	Peugeot_Partner_2_gen
6978	6354	23	Peugeot_Partner_2_gen_FL
6979	6354	3	Peugeot_Partner_3_gen
6980	6355	1	Peugeot_Rcz_1_gen
6981	6356	1	Peugeot_Rifter_1_gen
6982	6357	1	Peugeot_Traveller_1_gen
6983	6358	1	Plymouth_Acclaim_1_gen
6984	6359	3	Plymouth_Barracuda_3_gen
6985	6360	1	Plymouth_Breeze_1_gen
6986	6361	1	Plymouth_Horizon_1_gen
6987	6362	1	Plymouth_Prowler_1_gen
6988	6363	1	Plymouth_Reliant_1_gen
6989	6364	1	Plymouth_Roadrunner_1_gen
6990	6364	2	Plymouth_Roadrunner_2_gen
6991	6364	4	Plymouth_Roadrunner_4_gen
6992	6365	3	Plymouth_Satellite_3_gen
6993	6366	1	Plymouth_Sundance_1_gen
6994	6367	1	Plymouth_Tailduster_1_gen
6995	6368	3	Plymouth_Valiant_3_gen
6996	6368	4	Plymouth_Valiant_4_gen
6997	6369	1	Plymouth_Volare_1_gen
6998	6370	1	Polaris_Slingshot_1_gen
6999	6371	1	Polonez_1.5_1_gen
7000	6372	1	Polonez_Caro_1_gen
7001	6373	1	Pontiac_Aztek_1_gen
7002	6374	10	Pontiac_Bonneville_10_gen
7003	6374	5	Pontiac_Bonneville_5_gen
7004	6374	6	Pontiac_Bonneville_6_gen
7005	6374	7	Pontiac_Bonneville_7_gen
7006	6374	8	Pontiac_Bonneville_8_gen
7007	6374	9	Pontiac_Bonneville_9_gen
7008	6375	3	Pontiac_Catalina_3_gen
7009	6375	4	Pontiac_Catalina_4_gen
7010	6375	5	Pontiac_Catalina_5_gen
7011	6376	1	Pontiac_Fiero_1_gen
7012	6377	2	Pontiac_Firebird_2_gen
7013	6377	3	Pontiac_Firebird_3_gen
7014	6377	4	Pontiac_Firebird_4_gen
7015	6378	1	Pontiac_G39_1_gen
7016	6379	1	Pontiac_G5_1_gen
7017	6380	1	Pontiac_G6_1_gen
7018	6381	1	Pontiac_G8_1_gen
7019	6382	2	Pontiac_Grand_Prix_2_gen
7020	6382	3	Pontiac_Grand_Prix_3_gen
7021	6382	4	Pontiac_Grand_Prix_4_gen
7022	6382	5	Pontiac_Grand_Prix_5_gen
7023	6382	6	Pontiac_Grand_Prix_6_gen
7024	6382	7	Pontiac_Grand_Prix_7_gen
7025	6383	1	Pontiac_Grandam_1_gen
7026	6383	3	Pontiac_Grandam_3_gen
7027	6383	4	Pontiac_Grandam_4_gen
7028	6383	5	Pontiac_Grandam_5_gen
7029	6384	1	Pontiac_Grandville_1_gen
7030	6385	2	Pontiac_Gto_2_gen
7031	6385	5	Pontiac_Gto_5_gen
7032	6386	3	Pontiac_Lemans_3_gen
7033	6386	4	Pontiac_Lemans_4_gen
7034	6386	5	Pontiac_Lemans_5_gen
7035	6386	6	Pontiac_Lemans_6_gen
7036	6387	1	Pontiac_Montana_1_gen
7037	6387	2	Pontiac_Montana_2_gen
7038	6388	5	Pontiac_Parisienne_5_gen
7039	6389	1	Pontiac_Pursuit_1_gen
7040	6390	1	Pontiac_Solstice_1_gen
7041	6391	1	Pontiac_Sunbird_1_gen
7042	6392	1	Pontiac_Sunfire_1_gen
7043	6393	1	Pontiac_Torrent_1_gen
7044	6394	2	Pontiac_Transam_2_gen
7045	6394	3	Pontiac_Transam_3_gen
7046	6395	1	Pontiac_Vibe_1_gen
7047	6395	2	Pontiac_Vibe_2_gen
7048	6396	1	Porsche_356_1_gen
7049	6397	1	Porsche_718_1_gen
7050	6398	1	Porsche_911_1_gen
7051	6398	2	Porsche_911_2_gen
7052	6399	2	Porsche_912_2_gen
7053	6400	1	Porsche_914_1_gen
7054	6400	2	Porsche_914_2_gen
7055	6401	1	Porsche_944_1_gen
7056	6402	1	Porsche_991_1_gen
7057	6403	1	Porsche_992_1_gen
7058	6404	1	Porsche_993_1_gen
7059	6405	1	Porsche_996_1_gen
7060	6406	1	Porsche_997_1_gen
7061	6407	1	Porsche_Boxster_1_gen
7062	6407	2	Porsche_Boxster_2_gen
7063	6407	3	Porsche_Boxster_3_gen
7064	6408	1	Porsche_Cayenne_1_gen
7065	6408	2	Porsche_Cayenne_2_gen
7066	6408	3	Porsche_Cayenne_3_gen
7067	6409	2	Porsche_Cayman_2_gen
7068	6410	1	Porsche_Macan_1_gen
7069	6411	1	Porsche_Panamera_1_gen
7070	6411	2	Porsche_Panamera_2_gen
7071	6412	1	Ravon_R2_1_gen
7072	6413	1	Ravon_R4_1_gen
7073	6414	1	Renault_11_1_gen
7074	6415	1	Renault_18_1_gen
7075	6416	1	Renault_19_1_gen
7076	6417	1	Renault_21_1_gen
7077	6418	1	Renault_25_1_gen
7078	6419	1	Renault_Avantime_1_gen
7079	6420	1	Renault_Captur_1_gen
7080	6421	2	Renault_Clio_2_gen
7081	6421	3	Renault_Clio_3_gen
7082	6421	4	Renault_Clio_4_gen
7083	6421	5	Renault_Clio_5_gen
7084	6422	1	Renault_Duster_1_gen
7085	6422	19	Renault_Duster_1_gen_FL
7086	6423	3	Renault_Espace_3_gen
7087	6423	4	Renault_Espace_4_gen
7088	6423	5	Renault_Espace_5_gen
7089	6424	1	Renault_Fluence_1_gen
7090	6425	1	Renault_Kadjar_1_gen
7091	6426	1	Renault_Kangoo_1_gen
7092	6426	2	Renault_Kangoo_2_gen
7093	6427	1	Renault_Kerax_1_gen
7094	6428	1	Renault_Koleos_1_gen
7095	6428	2	Renault_Koleos_2_gen
7096	6429	1	Renault_Laguna_1_gen
7097	6429	2	Renault_Laguna_2_gen
7098	6429	3	Renault_Laguna_3_gen
7099	6430	1	Renault_Latitude_1_gen
7100	6431	4	Renault_Magnum_4_gen
7101	6432	1	Renault_Master_1_gen
7102	6432	2	Renault_Master_2_gen
7103	6432	23	Renault_Master_2_gen_FL
7104	6432	3	Renault_Master_3_gen
7105	6432	4	Renault_Master_4_gen
7106	6433	1	Renault_Megane_1_gen
7107	6433	2	Renault_Megane_2_gen
7108	6433	3	Renault_Megane_3_gen
7109	6433	4	Renault_Megane_4_gen
7110	6434	1	Renault_Midliner_1_gen
7111	6435	1	Renault_Modus_1_gen
7112	6436	1	Renault_Premium_1_gen
7113	6437	1	Renault_Safrane_1_gen
7114	6438	1	Renault_Sandero_1_gen
7115	6438	2	Renault_Sandero_2_gen
7116	6439	1	Renault_Scenic_1_gen
7117	6439	19	Renault_Scenic_1_gen_FL
7118	6439	2	Renault_Scenic_2_gen
7119	6439	3	Renault_Scenic_3_gen
7120	6439	4	Renault_Scenic_4_gen
7121	6440	19	Renault_Symbol_1_gen_FL
7122	6440	2	Renault_Symbol_2_gen
7123	6440	3	Renault_Symbol_3_gen
7124	6440	4	Renault_Symbol_4_gen
7125	6441	1	Renault_Talisman_1_gen
7126	6442	1	Renault_Trafic_1_gen
7127	6442	2	Renault_Trafic_2_gen
7128	6442	3	Renault_Trafic_3_gen
7129	6443	1	Renault_Twingo_1_gen
7130	6443	2	Renault_Twingo_2_gen
7131	6443	3	Renault_Twingo_3_gen
7132	6444	1	Renault_Twizy_1_gen
7133	6445	1	Renault_Vel_Satis_1_gen
7134	6446	1	Renault_Zoe_1_gen
7135	6447	1	Roewe_350_1_gen
7136	6448	1	Roewe_550_1_gen
7137	6449	1	Roewe_750_1_gen
7138	6450	1	Roewe_RX5_1_gen
7139	6451	1	Rolls_Royce_Corniche_1_gen
7140	6451	2	Rolls_Royce_Corniche_2_gen
7141	6452	1	Rolls_Royce_Phantom_1_gen
7142	6452	6	Rolls_Royce_Phantom_6_gen
7143	6453	1	Rolls_Royce_Silver_Shadow_1_gen
7144	6454	1	Rolls_Royce_Wraith_1_gen
7145	6455	3	Rover_200_3_gen
7146	6456	2	Rover_400_2_gen
7147	6457	1	Rover_45_1_gen
7148	6458	1	Rover_600_1_gen
7149	6459	1	Rover_75_1_gen
7150	6460	1	Rover_800_1_gen
7151	6461	1	Saab_9000_1_gen
7152	6462	1	Saab_900_1_gen
7153	6462	2	Saab_900_2_gen
7154	6463	1	Saab_9_3_1_gen
7155	6463	2	Saab_9_3_2_gen
7156	6463	23	Saab_9_3_2_gen_FL
7157	6464	1	Saab_9_5_1_gen
7158	6464	19	Saab_9_5_1_gen_FL
7159	6464	2	Saab_9_5_2_gen
7160	6464	23	Saab_9_5_2_gen_FL
7161	6465	1	Saab_9_7_1_gen
7162	6466	1	Saturn_Aura_1_gen
7163	6467	1	Saturn_Ion_1_gen
7164	6468	1	Saturn_L_Series_1_gen
7165	6469	1	Saturn_Outlook_1_gen
7166	6470	1	Saturn_Relay_1_gen
7167	6471	1	Saturn_Sc_1_gen
7168	6471	2	Saturn_Sc_2_gen
7169	6471	3	Saturn_Sc_3_gen
7170	6472	1	Saturn_Sky_1_gen
7171	6473	1	Saturn_Sl_1_gen
7172	6473	2	Saturn_Sl_2_gen
7173	6473	3	Saturn_Sl_3_gen
7174	6474	1	Scania_R410_1_gen
7175	6475	1	Scania_S_1_gen
7176	6476	1	Scion_Frs_1_gen
7177	6477	1	Scion_Iq_1_gen
7178	6478	1	Scion_Tc_1_gen
7179	6479	1	Seat_Alhambra_1_gen
7180	6479	2	Seat_Alhambra_2_gen
7181	6480	1	Seat_Altea_1_gen
7182	6481	1	Seat_Arona_1_gen
7183	6482	1	Seat_Arosa_1_gen
7184	6482	19	Seat_Arosa_1_gen_FL
7185	6483	1	Seat_Ateca_1_gen
7186	6484	1	Seat_Cordoba_1_gen
7187	6484	2	Seat_Cordoba_2_gen
7188	6485	1	Seat_Exeo_1_gen
7189	6486	1	Seat_Ibiza_1_gen
7190	6486	2	Seat_Ibiza_2_gen
7191	6486	3	Seat_Ibiza_3_gen
7192	6486	4	Seat_Ibiza_4_gen
7193	6487	1	Seat_Leon_1_gen
7194	6487	2	Seat_Leon_2_gen
7195	6487	3	Seat_Leon_3_gen
7196	6488	1	Seat_Mii_1_gen
7197	6489	1	Seat_Tarraco_1_gen
7198	6490	1	Seat_Toledo_1_gen
7199	6490	2	Seat_Toledo_2_gen
7200	6490	3	Seat_Toledo_3_gen
7201	6490	4	Seat_Toledo_4_gen
7202	6491	1	Skoda_Citigo_1_gen
7203	6492	1	Skoda_Fabia_1_gen
7204	6492	2	Skoda_Fabia_2_gen
7205	6492	3	Skoda_Fabia_3_gen
7206	6492	24	Skoda_Fabia_3_gen_FL
7207	6493	1	Skoda_Favorit_1_gen
7208	6494	1	Skoda_Felicia_1_gen
7209	6495	1	Skoda_Kamiq_1_gen
7210	6496	1	Skoda_Karoq_1_gen
7211	6497	1	Skoda_Kodiaq_1_gen
7212	6498	1	Skoda_Octavia_1_gen
7213	6498	2	Skoda_Octavia_2_gen
7214	6498	23	Skoda_Octavia_2_gen_FL
7215	6498	3	Skoda_Octavia_3_gen
7216	6498	24	Skoda_Octavia_3_gen_FL
7217	6499	1	Skoda_Rapid_1_gen
7218	6500	1	Skoda_Roomster_1_gen
7219	6501	1	Skoda_Scala_1_gen
7220	6502	1	Skoda_Superb_1_gen
7221	6502	2	Skoda_Superb_2_gen
7222	6502	3	Skoda_Superb_3_gen
7223	6503	1	Skoda_Yeti_1_gen
7224	6503	19	Skoda_Yeti_1_gen_FL
7225	6504	1	Smart_Forfour_1_gen
7226	6504	2	Smart_Forfour_2_gen
7227	6505	1	Smart_Fortwo_1_gen
7228	6505	2	Smart_Fortwo_2_gen
7229	6505	3	Smart_Fortwo_3_gen
7230	6506	1	Smart_Roadster_1_gen
7231	6507	1	Solaris_Urbinos_1_gen
7232	6508	1	Ssang_Yong_Actyon_1_gen
7233	6508	19	Ssang_Yong_Actyon_1_gen_FL
7234	6509	1	Ssang_Yong_Korando_1_gen
7235	6509	2	Ssang_Yong_Korando_2_gen
7236	6509	3	Ssang_Yong_Korando_3_gen
7237	6509	24	Ssang_Yong_Korando_3_gen_FL
7238	6509	4	Ssang_Yong_Korando_4_gen
7239	6510	1	Ssang_Yong_Kyron_1_gen
7240	6511	1	Ssang_Yong_Musso_1_gen
7241	6512	1	Ssang_Yong_Rexton_1_gen
7242	6512	19	Ssang_Yong_Rexton_1_gen_FL
7243	6512	2	Ssang_Yong_Rexton_2_gen
7244	6513	1	Ssang_Yong_Rodius_1_gen
7245	6514	1	Ssang_Yong_Tivoli_1_gen
7246	6514	19	Ssang_Yong_Tivoli_1_gen_FL
7247	6515	1	Subaru_Baja_1_gen
7248	6516	1	Subaru_Brz_1_gen
7249	6517	1	Subaru_Forester_1_gen
7250	6517	2	Subaru_Forester_2_gen
7251	6517	3	Subaru_Forester_3_gen
7252	6517	4	Subaru_Forester_4_gen
7253	6517	5	Subaru_Forester_5_gen
7254	6518	1	Subaru_Impreza_1_gen
7255	6518	2	Subaru_Impreza_2_gen
7256	6518	3	Subaru_Impreza_3_gen
7257	6518	4	Subaru_Impreza_4_gen
7258	6518	5	Subaru_Impreza_5_gen
7259	6519	2	Subaru_Justy_2_gen
7260	6519	3	Subaru_Justy_3_gen
7261	6520	1	Subaru_Legacy_1_gen
7262	6520	2	Subaru_Legacy_2_gen
7263	6520	3	Subaru_Legacy_3_gen
7264	6520	4	Subaru_Legacy_4_gen
7265	6520	5	Subaru_Legacy_5_gen
7266	6520	6	Subaru_Legacy_6_gen
7267	6521	1	Subaru_Levorg_1_gen
7268	6522	1	Subaru_Outback_1_gen
7269	6522	2	Subaru_Outback_2_gen
7270	6522	3	Subaru_Outback_3_gen
7271	6522	4	Subaru_Outback_4_gen
7272	6522	5	Subaru_Outback_5_gen
7273	6523	1	Subaru_Svx_1_gen
7274	6524	1	Subaru_Tribeca_1_gen
7275	6524	19	Subaru_Tribeca_1_gen_FL
7276	6525	1	Subaru_XV_1_gen
7277	6525	2	Subaru_XV_2_gen
7278	6526	5	Suzuki_Alto_5_gen
7279	6526	7	Suzuki_Alto_7_gen
7280	6527	1	Suzuki_Baleno_1_gen
7281	6527	2	Suzuki_Baleno_2_gen
7282	6528	1	Suzuki_Celerio_1_gen
7283	6529	1	Suzuki_Ignis_1_gen
7284	6529	2	Suzuki_Ignis_2_gen
7285	6529	3	Suzuki_Ignis_3_gen
7286	6530	2	Suzuki_Jimny_2_gen
7287	6530	3	Suzuki_Jimny_3_gen
7288	6530	4	Suzuki_Jimny_4_gen
7289	6531	1	Suzuki_Kizashi_1_gen
7290	6532	1	Suzuki_Liana_1_gen
7291	6533	1	Suzuki_SX4_1_gen
7292	6533	2	Suzuki_SX4_2_gen
7293	6534	1	Suzuki_Splash_1_gen
7294	6535	1	Suzuki_Swift_1_gen
7295	6535	2	Suzuki_Swift_2_gen
7296	6535	3	Suzuki_Swift_3_gen
7297	6535	4	Suzuki_Swift_4_gen
7298	6536	1	Suzuki_Vitara_1_gen
7299	6536	2	Suzuki_Vitara_2_gen
7300	6536	3	Suzuki_Vitara_3_gen
7301	6536	4	Suzuki_Vitara_4_gen
7302	6537	1	Suzuki_Wagon_R_1_gen
7303	6538	1	Suzuki_X90_1_gen
7304	6539	2	Suzuki_Xl7_2_gen
7305	6540	1	Tata_Indica_1_gen
7306	6541	1	Tata_Safari_1_gen
7307	6542	1	Tavriya_1102_1_gen
7308	6543	1	Tavriya_1105_1_gen
7309	6544	1	Tavriya_Pickup_1_gen
7310	6545	1	Tavriya_Slavuta_1_gen
7311	6546	1	Tesla_Model_3_1_gen
7312	6547	1	Tesla_Model_S_1_gen
7313	6548	1	Tesla_Model_X_1_gen
7314	6549	1	Toyota_4Runner_1_gen
7315	6549	2	Toyota_4Runner_2_gen
7316	6549	3	Toyota_4Runner_3_gen
7317	6549	4	Toyota_4Runner_4_gen
7318	6549	5	Toyota_4Runner_5_gen
7319	6549	31	Toyota_4Runner_5_gen_FL
7320	6550	1	Toyota_Aqua_1_gen
7321	6551	1	Toyota_Aurion_1_gen
7322	6551	19	Toyota_Aurion_1_gen_FL
7323	6552	1	Toyota_Auris_1_gen
7324	6552	2	Toyota_Auris_2_gen
7325	6553	1	Toyota_Avalon_1_gen
7326	6553	3	Toyota_Avalon_3_gen
7327	6553	4	Toyota_Avalon_4_gen
7328	6553	5	Toyota_Avalon_5_gen
7329	6554	1	Toyota_Avensis_1_gen
7330	6554	2	Toyota_Avensis_2_gen
7331	6554	3	Toyota_Avensis_3_gen
7332	6554	24	Toyota_Avensis_3_gen_FL
7333	6555	1	Toyota_Aygo_1_gen
7334	6555	2	Toyota_Aygo_2_gen
7335	6556	1	Toyota_C_HR_1_gen
7336	6557	3	Toyota_Camry_3_gen
7337	6557	4	Toyota_Camry_4_gen
7338	6557	5	Toyota_Camry_5_gen
7339	6557	6	Toyota_Camry_6_gen
7340	6557	7	Toyota_Camry_7_gen
7341	6557	8	Toyota_Camry_8_gen
7342	6558	1	Toyota_Carina_1_gen
7343	6558	5	Toyota_Carina_5_gen
7344	6558	6	Toyota_Carina_6_gen
7345	6558	7	Toyota_Carina_7_gen
7346	6559	1	Toyota_Celica_1_gen
7347	6559	2	Toyota_Celica_2_gen
7348	6559	3	Toyota_Celica_3_gen
7349	6559	4	Toyota_Celica_4_gen
7350	6559	5	Toyota_Celica_5_gen
7351	6559	6	Toyota_Celica_6_gen
7352	6559	7	Toyota_Celica_7_gen
7353	6560	4	Toyota_Chaser_4_gen
7354	6561	10	Toyota_Corolla_10_gen
7355	6561	11	Toyota_Corolla_11_gen
7356	6561	12	Toyota_Corolla_12_gen
7357	6561	4	Toyota_Corolla_4_gen
7358	6561	5	Toyota_Corolla_5_gen
7359	6561	6	Toyota_Corolla_6_gen
7360	6561	7	Toyota_Corolla_7_gen
7361	6561	8	Toyota_Corolla_8_gen
7362	6561	9	Toyota_Corolla_9_gen
7363	6562	2	Toyota_Cressida_2_gen
7364	6562	3	Toyota_Cressida_3_gen
7365	6562	4	Toyota_Cressida_4_gen
7366	6563	12	Toyota_Crown_12_gen
7367	6563	13	Toyota_Crown_13_gen
7368	6563	14	Toyota_Crown_14_gen
7369	6563	6	Toyota_Crown_6_gen
7370	6563	8	Toyota_Crown_8_gen
7371	6564	1	Toyota_Echo_1_gen
7372	6565	1	Toyota_Estima_1_gen
7373	6566	1	Toyota_FJ_Cruiser_1_gen
7374	6567	1	Toyota_Fj40_1_gen
7375	6568	1	Toyota_Fortuner_1_gen
7376	6569	1	Toyota_GT86_1_gen
7377	6570	2	Toyota_Hiace_2_gen
7378	6570	4	Toyota_Hiace_4_gen
7379	6570	5	Toyota_Hiace_5_gen
7380	6571	1	Toyota_Highlander_1_gen
7381	6571	2	Toyota_Highlander_2_gen
7382	6571	23	Toyota_Highlander_2_gen_FL
7383	6571	3	Toyota_Highlander_3_gen
7384	6571	24	Toyota_Highlander_3_gen_FL
7385	6572	2	Toyota_Hilux_2_gen
7386	6572	5	Toyota_Hilux_5_gen
7387	6572	7	Toyota_Hilux_7_gen
7388	6572	8	Toyota_Hilux_8_gen
7389	6573	1	Toyota_Innova_1_gen
7390	6574	2	Toyota_Ipsum_2_gen
7391	6575	4	Toyota_Land_Cruiser_4_gen
7392	6575	5	Toyota_Land_Cruiser_5_gen
7393	6575	6	Toyota_Land_Cruiser_6_gen
7394	6575	7	Toyota_Land_Cruiser_7_gen
7395	6575	35	Toyota_Land_Cruiser_7_gen_FL
7396	6576	2	Toyota_Land_Cruiser_Prado_2_gen
7397	6576	3	Toyota_Land_Cruiser_Prado_3_gen
7398	6576	4	Toyota_Land_Cruiser_Prado_4_gen
7399	6576	25	Toyota_Land_Cruiser_Prado_4_gen_2FL
7400	6576	27	Toyota_Land_Cruiser_Prado_4_gen_FL
7401	6577	1	Toyota_Matrix_1_gen
7402	6577	2	Toyota_Matrix_2_gen
7403	6578	1	Toyota_Mr2_1_gen
7404	6578	2	Toyota_Mr2_2_gen
7405	6578	3	Toyota_Mr2_3_gen
7406	6579	1	Toyota_Paseo_1_gen
7407	6579	2	Toyota_Paseo_2_gen
7408	6580	2	Toyota_Pickup_2_gen
7409	6581	1	Toyota_Previa_1_gen
7410	6581	2	Toyota_Previa_2_gen
7411	6582	1	Toyota_Prius_1_gen
7412	6582	2	Toyota_Prius_2_gen
7413	6582	3	Toyota_Prius_3_gen
7414	6582	4	Toyota_Prius_4_gen
7415	6583	1	Toyota_Prius_C_1_gen
7416	6584	1	Toyota_Proace_1_gen
7417	6585	1	Toyota_Rav_4_1_gen
7418	6585	2	Toyota_Rav_4_2_gen
7419	6585	3	Toyota_Rav_4_3_gen
7420	6585	4	Toyota_Rav_4_4_gen
7421	6585	27	Toyota_Rav_4_4_gen_FL
7422	6585	5	Toyota_Rav_4_5_gen
7423	6586	1	Toyota_Sequoia_1_gen
7424	6586	2	Toyota_Sequoia_2_gen
7425	6586	23	Toyota_Sequoia_2_gen_FL
7426	6587	1	Toyota_Sienna_1_gen
7427	6587	2	Toyota_Sienna_2_gen
7428	6587	3	Toyota_Sienna_3_gen
7429	6588	1	Toyota_Solara_1_gen
7430	6588	2	Toyota_Solara_2_gen
7431	6589	3	Toyota_Supra_3_gen
7432	6589	5	Toyota_Supra_5_gen
7433	6590	2	Toyota_Tacoma_2_gen
7434	6591	1	Toyota_Tundra_1_gen
7435	6591	2	Toyota_Tundra_2_gen
7436	6592	2	Toyota_Urban_Cruiser_2_gen
7437	6593	1	Toyota_Venza_1_gen
7438	6594	1	Toyota_Verso_1_gen
7439	6594	19	Toyota_Verso_1_gen_FL
7440	6595	2	Toyota_Verso_S_2_gen
7441	6596	1	Toyota_Yaris_1_gen
7442	6596	2	Toyota_Yaris_2_gen
7443	6596	3	Toyota_Yaris_3_gen
7444	6597	1	Toyota_Yaris_Verso_1_gen
7445	6598	1	Tractor_Belarus_1_gen
7446	6599	1	Triumph_Gt6_1_gen
7447	6600	4	Triumph_Spitfire_4_gen
7448	6600	5	Triumph_Spitfire_5_gen
7449	6601	1	Uaz_452_1_gen
7450	6602	1	Uaz_469_1_gen
7451	6603	1	Uaz_Hunter_1_gen
7452	6604	19	Uaz_Patriot_1_gen_FL
7453	6605	1	VW_Amarok_1_gen
7454	6606	1	VW_Arteon_1_gen
7455	6607	1	VW_Atlas_1_gen
7456	6608	3	VW_Beetle_3_gen
7457	6609	1	VW_Bora_1_gen
7458	6609	2	VW_Bora_2_gen
7459	6609	23	VW_Bora_2_gen_fl
7460	6609	3	VW_Bora_3_gen
7461	6610	1	VW_CC_1_gen
7462	6610	19	VW_CC_1_gen_FL
7463	6611	2	VW_Caddy_2_gen
7464	6611	3	VW_Caddy_3_gen
7465	6611	24	VW_Caddy_3_gen_FL
7466	6611	4	VW_Caddy_4_gen
7467	6612	1	VW_Corrado_1_gen
7468	6613	1	VW_Crafter_1_gen
7469	6613	2	VW_Crafter_2_gen
7470	6614	1	VW_Eos_1_gen
7471	6615	1	VW_Fox_1_gen
7472	6616	2	VW_Gol_2_gen
7473	6617	1	VW_Golf_1_gen
7474	6617	2	VW_Golf_2_gen
7475	6617	3	VW_Golf_3_gen
7476	6617	4	VW_Golf_4_gen
7477	6617	5	VW_Golf_5_gen
7478	6617	6	VW_Golf_6_gen
7479	6617	7	VW_Golf_7_gen
7480	6618	1	VW_Golf_Plus_1_gen
7481	6619	1	VW_Golf_SV_1_gen
7482	6620	2	VW_Gran_Lavida_2_gen
7483	6621	1	VW_Iltis_1_gen
7484	6622	2	VW_Jetta_2_gen
7485	6622	3	VW_Jetta_3_gen
7486	6622	4	VW_Jetta_4_gen
7487	6622	5	VW_Jetta_5_gen
7488	6622	6	VW_Jetta_6_gen
7489	6622	7	VW_Jetta_7_gen
7490	6623	2	VW_LT_2_gen
7491	6624	1	VW_Lamando_1_gen
7492	6625	1	VW_Lavida_1_gen
7493	6625	2	VW_Lavida_2_gen
7494	6626	1	VW_Lupo_1_gen
7495	6627	1	VW_New_Beetle_1_gen
7496	6628	2	VW_Passat_2_gen
7497	6628	3	VW_Passat_3_gen
7498	6628	4	VW_Passat_4_gen
7499	6628	5	VW_Passat_5_gen
7500	6628	31	VW_Passat_5_gen_FL
7501	6628	6	VW_Passat_6_gen
7502	6628	7	VW_Passat_7_gen
7503	6628	8	VW_Passat_8_gen
7504	6629	1	VW_Phaeton_1_gen
7505	6629	19	VW_Phaeton_1_gen_FL
7506	6630	2	VW_Polo_2_gen
7507	6630	3	VW_Polo_3_gen
7508	6630	24	VW_Polo_3_gen_FL
7509	6630	4	VW_Polo_4_gen
7510	6630	27	VW_Polo_4_gen_FL
7511	6630	5	VW_Polo_5_gen
7512	6630	6	VW_Polo_6_gen
7513	6631	1	VW_Routan_1_gen
7514	6632	1	VW_Santana_1_gen
7515	6632	2	VW_Santana_2_gen
7516	6632	3	VW_Santana_3_gen
7517	6632	4	VW_Santana_4_gen
7518	6632	5	VW_Santana_5_gen
7519	6632	31	VW_Santana_5_gen_FL
7520	6633	2	VW_Scirocco_2_gen
7521	6633	3	VW_Scirocco_3_gen
7522	6634	1	VW_Sharan_1_gen
7523	6634	19	VW_Sharan_1_gen_FL
7524	6634	2	VW_Sharan_2_gen
7525	6635	1	VW_Squareback_1_gen
7526	6636	1	VW_T_Cross_1_gen
7527	6637	1	VW_T_Roc_1_gen
7528	6638	1	VW_The_Beetle_1_gen
7529	6639	1	VW_Tiguan_1_gen
7530	6639	2	VW_Tiguan_2_gen
7531	6640	1	VW_Touareg_1_gen
7532	6640	2	VW_Touareg_2_gen
7533	6640	3	VW_Touareg_3_gen
7534	6641	1	VW_Touran_1_gen
7535	6641	19	VW_Touran_1_gen_FL
7536	6641	20	VW_Touran_1_gen_FL2
7537	6641	2	VW_Touran_2_gen
7538	6642	2	VW_Transporter_2_gen
7539	6642	3	VW_Transporter_3_gen
7540	6642	4	VW_Transporter_4_gen
7541	6642	5	VW_Transporter_5_gen
7542	6642	31	VW_Transporter_5_gen_FL
7543	6642	6	VW_Transporter_6_gen
7544	6643	1	VW_Up_1_gen
7545	6644	1	VW_Vento_1_gen
7546	6644	2	VW_Vento_2_gen
7547	6645	1	Van_Hool_T9_1_gen
7548	6646	1	Volvo_140_1_gen
7549	6647	1	Volvo_260_1_gen
7550	6648	1	Volvo_440_1_gen
7551	6649	1	Volvo_460_1_gen
7552	6650	1	Volvo_740_1_gen
7553	6651	1	Volvo_760_1_gen
7554	6652	1	Volvo_850_1_gen
7555	6653	1	Volvo_900_1_gen
7556	6654	1	Volvo_940_1_gen
7557	6655	1	Volvo_960_1_gen
7558	6656	1	Volvo_B12_1_gen
7559	6657	1	Volvo_C30_1_gen
7560	6657	19	Volvo_C30_1_gen_FL
7561	6658	1	Volvo_C70_1_gen
7562	6658	2	Volvo_C70_2_gen
7563	6658	23	Volvo_C70_2_gen_FL
7564	6659	1	Volvo_FM_1_gen
7565	6659	3	Volvo_FM_3_gen
7566	6660	1	Volvo_S40_1_gen
7567	6660	2	Volvo_S40_2_gen
7568	6661	1	Volvo_S60_1_gen
7569	6661	2	Volvo_S60_2_gen
7570	6661	3	Volvo_S60_3_gen
7571	6662	1	Volvo_S70_1_gen
7572	6663	1	Volvo_S80_1_gen
7573	6663	2	Volvo_S80_2_gen
7574	6664	1	Volvo_S90_1_gen
7575	6665	1	Volvo_V40_1_gen
7576	6665	2	Volvo_V40_2_gen
7577	6665	23	Volvo_V40_2_gen_FL
7578	6666	1	Volvo_V50_1_gen
7579	6667	1	Volvo_V60_1_gen
7580	6667	2	Volvo_V60_2_gen
7581	6668	1	Volvo_V70_1_gen
7582	6668	2	Volvo_V70_2_gen
7583	6668	3	Volvo_V70_3_gen
7584	6669	1	Volvo_V90_1_gen
7585	6670	1	Volvo_Xc40_1_gen
7586	6671	1	Volvo_Xc60_1_gen
7587	6671	2	Volvo_Xc60_2_gen
7588	6672	1	Volvo_Xc90_1_gen
7589	6672	2	Volvo_Xc90_2_gen
7590	6673	1	Wartburg_353_1_gen
7591	6674	1	Zaporozhets_1_gen
7592	6674	2	Zaporozhets_2_gen
7593	6675	1	Zaz_Forza_1_gen
7594	6676	1	Zaz_I_Van_1_gen
7595	5932	1	infiniti_G_1_gen
7596	6677	1	saturn_sw2_1_gen
7597	6677	2	saturn_sw2_2_gen
7598	6677	3	saturn_sw2_3_gen
7599	6678	1	saturn_vue_1_gen
7600	6678	2	saturn_vue_2_gen
7601	6478	2	scion_tc_2_gen
7602	6679	1	scion_xa_1_gen
7603	6680	1	scion_xb_1_gen
7604	6680	2	scion_xb_2_gen
7605	6681	1	scion_xd_1_gen
7606	6682	1	suzuki_equator_1_gen
7607	6683	1	suzuki_esteem_1_gen
7608	6684	1	suzuki_samurai_1_gen
7609	6684	2	suzuki_samurai_2_gen
7610	6684	3	suzuki_samurai_3_gen
7611	6685	1	suzuki_sidekick_1_gen
7612	6686	1	suzuki_verona_1_gen
7613	6687	2	toyota_starlet_2_gen
7614	6589	2	toyota_supra_2_gen
7615	6589	4	toyota_supra_4_gen
7616	6688	1	toyota_t100_1_gen
7617	6590	1	toyota_tacoma_1_gen
7618	6590	3	toyota_tacoma_3_gen
7619	6689	2	toyota_tercel_2_gen
7620	6689	3	toyota_tercel_3_gen
7621	6689	4	toyota_tercel_4_gen
7622	6689	5	toyota_tercel_5_gen
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
16	1 cn
17	1 crossover
18	1 eu
19	1 fl
20	1 fl2
21	10 fl
22	2 2fl
23	2 fl
24	3 fl
25	4 2fl
26	4 eu
27	4 fl
28	4 truck
29	4 yuedong
30	5 eu
31	5 fl
32	5 ling xiang
33	6 eu
34	6 fl
35	7 fl
36	\N
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
37	faw
123	jcb
124	tractor
125	zaporozhets
\.


--
-- Data for Name: c_s_app_model; Type: TABLE DATA; Schema: public; Owner: user1
--

COPY public.c_s_app_model (id, name, mark_id) FROM stdin;
5343	amx	6
5344	ambassador	6
5345	eagle	6
5346	hornet	6
5347	javelin	6
5348	rambler ambassador	6
5349	rambler american	6
5350	rambler classic	6
5351	cl	1
5352	el	1
5353	ilx	1
5354	integra	1
5355	legend	1
5356	mdx	1
5357	nsx	1
5358	rdx	1
5359	rl	1
5360	slx	1
5361	tlx	1
5362	tl	1
5363	tsx	1
5364	vigor	1
5365	zdx	1
5366	a721	2
5367	city	2
5368	crossline	2
5369	crossover	2
5370	mega	2
5371	scouty	2
5372	146	3
5373	147	3
5374	156	3
5375	159	3
5376	164	3
5377	166	3
5378	4c	3
5379	75	3
5380	alfetta	3
5381	brera	3
5382	gtv	3
5383	gt	3
5384	giulia	3
5385	giulietta	3
5386	mito	3
5387	spider	3
5388	stelvio	3
5389	a110	4
5390	db11	7
5391	db9	7
5392	dbs	7
5393	rapide	7
5394	vanquish	7
5395	vantage	7
5396	100	8
5397	80	8
5398	90	8
5399	a1	8
5400	a2	8
5401	a3	8
5402	a4	8
5403	a5	8
5404	a6	8
5405	a7	8
5406	a8	8
5407	e tron	8
5408	q2	8
5409	q3	8
5410	q5	8
5411	q7	8
5412	q8	8
5413	quattro	8
5414	r8	8
5415	tt	8
5416	crane	9
5417	bianchina	10
5418	y10	10
5419	2	17
5420	1	17
5421	2 mpv	17
5422	3	17
5423	4	17
5424	5	17
5425	6	17
5426	7	17
5427	8	17
5428	i3	17
5429	i8	17
5430	x1	17
5431	x2	17
5432	x3	17
5433	x4	17
5434	x5	17
5435	x6	17
5436	x7	17
5437	z3	17
5438	z4	17
5439	510	11
5440	560	11
5441	630	11
5442	730	11
5443	arnage	12
5444	bentayga	12
5445	brooklands	12
5446	continental flying spur	12
5447	continental gt	12
5448	mulsanne	12
5449	turbo r	12
5450	b30	13
5451	\N	14
5452	cruiser	15
5453	scooter	15
5454	sport	15
5455	touring	15
5456	bearcat	16
5457	a 091	18
5458	a o92	18
5459	t90110	18
5460	gt	19
5461	bs4	20
5462	apollo	21
5463	centurion	21
5464	century	21
5465	electra	21
5466	enclave	21
5467	encore	21
5468	excelle	21
5469	gl8	21
5470	gran sport	21
5471	grand national	21
5472	invicta	21
5473	lacrosse	21
5474	le sabre	21
5475	lucerne	21
5476	park avenue	21
5477	rainier	21
5478	reatta	21
5479	regal	21
5480	rendezvous	21
5481	riviera	21
5482	roadmaster	21
5483	skylark	21
5484	terraza	21
5485	verano	21
5486	wildcat	21
5487	e5	22
5488	f0	22
5489	f3	22
5490	g5	22
5491	tang	22
5492	ats	23
5493	allante	23
5494	brougham	23
5495	ct6	23
5496	cts	23
5497	calais	23
5498	cimarron	23
5499	dts	23
5500	de ville	23
5501	eldorado	23
5502	elr	23
5503	escalade	23
5504	fleetwood	23
5505	fleetwood 75	23
5506	srx	23
5507	sts	23
5508	seville	23
5509	xlr	23
5510	xt5	23
5511	xts	23
5512	a13	24
5513	a15	24
5514	a1	24
5515	a3	24
5516	a5	24
5517	arrizo 3	24
5518	arrizo 7	24
5519	beat	24
5520	e3	24
5521	e5	24
5522	karry	24
5523	qq6	24
5524	qq	24
5525	tiggo	24
5526	tiggo 2	24
5527	tiggo 3	24
5528	tiggo 3xe	24
5529	tiggo 5	24
5530	tiggo 5x	24
5531	tiggo 7	24
5532	tiggo 8	24
5533	astro	25
5534	avalanche	25
5535	aveo	25
5536	beretta	25
5537	bolt	25
5538	c k	25
5539	camaro	25
5540	caprice	25
5541	captiva	25
5542	cavalier	25
5543	celebrity	25
5544	chevelle	25
5545	chevette	25
5546	cobalt	25
5547	colorado	25
5548	corsica	25
5549	corvette	25
5550	cruze	25
5551	el camino	25
5552	epica	25
5553	equinox	25
5554	evanda	25
5555	explorer	25
5556	express	25
5557	g	25
5558	hhr	25
5559	impala	25
5560	k5 blazer	25
5561	kodiak	25
5562	lacetti	25
5563	lumina	25
5564	lumina apv	25
5565	malibu	25
5566	metro	25
5567	montecarlo	25
5568	monza	25
5569	niva	25
5570	nova	25
5571	orlando	25
5572	prizm	25
5573	s10	25
5574	s10 blazer	25
5575	ssr	25
5576	sail	25
5577	silverado	25
5578	spark	25
5579	suburban	25
5580	tahoe	25
5581	tracker	25
5582	trailblazer	25
5583	traverse	25
5584	trax	25
5585	uplander	25
5586	vega	25
5587	venture	25
5588	volt	25
5589	yukon	25
5590	200	26
5591	300m	26
5592	300	26
5593	cirrus	26
5594	concorde	26
5595	conquest	26
5596	cordoba	26
5597	crossfire	26
5598	fifth avenue	26
5599	imperial	26
5600	intrepid	26
5601	lhs	26
5602	lebaron	26
5603	new yorker	26
5604	newport	26
5605	pt cruiser	26
5606	pacifica	26
5607	sebring	26
5608	tc	26
5609	town & country	26
5610	ax	27
5611	bx	27
5612	berlingo	27
5613	c1	27
5614	c2	27
5615	c3	27
5616	c3 aircross	27
5617	c3 picasso	27
5618	c3 pluriel	27
5619	c3 xr	27
5620	c4	27
5621	c4 aicross	27
5622	c4 cactus	27
5623	c4 picasso	27
5624	c5	27
5625	c5 aircross	27
5626	c6	27
5627	c8	27
5628	c crosser	27
5629	c elysee	27
5630	c quatre	27
5631	c triomphe	27
5632	ds3	27
5633	ds4	27
5634	ds5	27
5635	ds7	27
5636	evasion	27
5637	jumper	27
5638	jumpy	27
5639	mehari	27
5640	nemo	27
5641	saxo	27
5642	space tourer	27
5643	xantia	27
5644	xsara	27
5645	xsara picasso	27
5646	dokker	28
5647	lodgy	28
5648	logan	28
5649	nova	28
5650	shuttle	29
5651	smoothing	29
5652	espero	30
5653	gentra	30
5654	lanos	30
5655	lanos pickup	30
5656	leganza	30
5657	matiz	30
5658	nexia	30
5659	nubira	30
5660	tacuma	30
5661	tico	30
5662	45	31
5663	cf	31
5664	xf	31
5665	applause	32
5666	cuore	32
5667	feroza	32
5668	materia	32
5669	rocky	32
5670	sirion	32
5671	terios	32
5672	yrv	32
5673	b210	33
5674	z	33
5675	aspen	34
5676	avenger	34
5677	caliber	34
5678	challenger	34
5679	charger	34
5680	colt	34
5681	d100	34
5682	dakota	34
5683	dart	34
5684	dart pf	34
5685	daytona	34
5686	durango	34
5687	dynasty	34
5688	grand caravan	34
5689	intrepid	34
5690	journey	34
5691	magnum	34
5692	neon	34
5693	nitro	34
5694	ram	34
5695	ramcharger	34
5696	shadow	34
5697	spirit	34
5698	viper	34
5699	fengdu mx6	35
5700	fengshen ax7	35
5701	fengxing jingyi	35
5702	k02	35
5703	a079.52	36
5704	a08129	36
5705	v2	37
5706	v5	37
5707	208	38
5708	360	38
5709	456	38
5710	458	38
5711	488	38
5712	599	38
5713	812	38
5714	california	38
5715	daytona	38
5716	dino	38
5717	f430	38
5718	gtc4lusso	38
5719	mondial	38
5720	portofino	38
5721	testarosa	38
5722	testarossa	38
5723	125	39
5724	126	39
5725	131	39
5726	132	39
5727	500l	39
5728	500x	39
5729	500	39
5730	albea	39
5731	brava	39
5732	bravo	39
5733	cinquecento	39
5734	coupe	39
5735	croma	39
5736	doblo	39
5737	ducato	39
5738	fiorino	39
5739	fullback	39
5740	idea	39
5741	linea	39
5742	marea	39
5743	multipla	39
5744	palio	39
5745	panda	39
5746	punto	39
5747	qubo	39
5748	scudo	39
5749	sedici	39
5750	seicento	39
5751	siena	39
5752	spider	39
5753	stilo	39
5754	talento	39
5755	tipo	39
5756	tipo new	39
5757	ulysse	39
5758	uno	39
5759	viaggio	39
5760	x1 9	39
5761	aerostar	40
5762	aspire	40
5763	b max	40
5764	bronco	40
5765	c max	40
5766	club wagon	40
5767	contour	40
5768	cougar	40
5769	courier	40
5770	crown victoria	40
5771	ecosport	40
5772	edge	40
5773	escape	40
5774	escort	40
5775	excursion	40
5776	expedition	40
5777	explorer	40
5778	f series	40
5779	festiva	40
5780	fiesta	40
5781	flex	40
5782	focus	40
5783	fusion	40
5784	galaxy	40
5785	granada	40
5786	grand torino	40
5787	ka	40
5788	kuga	40
5789	ltd	40
5790	maverick	40
5791	mondeo	40
5792	mustang	40
5793	pinto	40
5794	probe	40
5795	puma	40
5796	ranchero	40
5797	ranger	40
5798	ranger int	40
5799	s max	40
5800	scorpio	40
5801	sierra	40
5802	super duty	40
5803	taurus	40
5804	taurus x	40
5805	tempo	40
5806	thunderbird	40
5807	tourneo connect	40
5808	tourneo custom	40
5809	transit	40
5810	transit connect	40
5811	transit custom	40
5812	windstar	40
5813	acadia	44
5814	c series	44
5815	caballero	44
5816	canyon	44
5817	envoy	44
5818	k series	44
5819	safari	44
5820	savana	44
5821	sierra	44
5822	sonoma	44
5823	terrain	44
5824	topkick	44
5825	yukon	44
5826	21	41
5827	24	41
5828	31105	41
5829	3110	41
5830	3309	41
5831	51	41
5832	53	41
5833	69	41
5834	chaika 13	41
5835	gazelle	41
5836	m20	41
5837	next	42
5838	ck	43
5839	emgrand	43
5840	emgrand ec8	43
5841	emgrand gs	43
5842	emgrand x7	43
5843	englon sc6	43
5844	fc	43
5845	fleagle	43
5846	mk	43
5847	sl	43
5848	yuanjing	43
5849	yuanjing suv	43
5850	yuanjing x6	43
5851	deer	45
5852	h8	45
5853	haval h1	45
5854	haval h2s	45
5855	haval h2	45
5856	haval h3	45
5857	haval h6	45
5858	haval h9	45
5859	haval m4	45
5860	safe	45
5861	voleex c30	45
5862	voleex c50	45
5863	wingle 5	45
5864	wingle 6	45
5865	commodore	46
5866	accord	47
5867	avancier	47
5868	beat	47
5869	cr v	47
5870	cr z	47
5871	city	47
5872	civic	47
5873	concerto	47
5874	crider	47
5875	crosstour	47
5876	crx	47
5877	element	47
5878	elysion	47
5879	fr v	47
5880	hr v	47
5881	insight	47
5882	integra	47
5883	jazz	47
5884	legend	47
5885	logo	47
5886	odyssey	47
5887	passport	47
5888	pilot	47
5889	prelude	47
5890	ridgeline	47
5891	s2000	47
5892	stepwgn	47
5893	stream	47
5894	vigor	47
5895	xrv	47
5896	h1	48
5897	h2	48
5898	h3	48
5899	accent	49
5900	atos	49
5901	coupe	49
5902	creta	49
5903	elantra	49
5904	entourage	49
5905	equus	49
5906	genesis	49
5907	getz	49
5908	grandeur	49
5909	h100	49
5910	h1	49
5911	hd120	49
5912	i10	49
5913	i20	49
5914	i30	49
5915	i40	49
5916	ioniq	49
5917	ix20	49
5918	kona	49
5919	matrix	49
5920	monica	49
5921	santa fe	49
5922	sonata	49
5923	terracan	49
5924	trajet	49
5925	tucson	49
5926	universe	49
5927	veloster	49
5928	veracruz	49
5929	samand lx	50
5930	ex25	51
5931	fx	51
5932	g	51
5933	i30	51
5934	i35	51
5935	j30	51
5936	m	51
5937	q30	51
5938	q45	51
5939	q50	51
5940	q60	51
5941	q70	51
5942	qx30	51
5943	qx4	51
5944	qx50	51
5945	qx60	51
5946	qx80	51
5947	ab230	52
5948	ascender	52
5949	ataman	52
5950	axiom	52
5951	d max	52
5952	hombre pickup	52
5953	mu	52
5954	rodeo	52
5955	trooper	52
5956	vehicross	52
5957	daily	53
5958	stralis	53
5959	trakker	53
5960	2125	54
5961	2126	54
5962	27175	54
5963	2717	54
5964	j2	55
5965	j4	55
5966	j5	55
5967	refine m5	55
5968	refine s2	55
5969	s3	55
5970	t8	55
5971	e pace	56
5972	f pace	56
5973	f type	56
5974	i pace	56
5975	s type	56
5976	xf type	56
5977	x type	56
5978	xe	56
5979	xf	56
5980	xj	56
5981	xjs	56
5982	xkr	56
5983	5cx	123
5984	cherokee	57
5985	cj7	57
5986	comanche	57
5987	commander	57
5988	compass	57
5989	dj5	57
5990	grand cherokee	57
5991	grand wagoneer	57
5992	j8	57
5993	liberty	57
5994	patriot	57
5995	pickup	57
5996	renegade	57
5997	scrambler	57
5998	wrangler	57
5999	4308	58
6000	5320	58
6001	5460	58
6002	55111	58
6003	cadenza	59
6004	carens	59
6005	carnival	59
6006	ceed	59
6007	cerato	59
6008	kx3	59
6009	koup	59
6010	mohave	59
6011	niro	59
6012	opirus	59
6013	optima	59
6014	picanto	59
6015	rio	59
6016	sedona	59
6017	sephia	59
6018	sorento	59
6019	soul	59
6020	sportage	59
6021	stinger	59
6022	stonic	59
6023	venga	59
6024	agera	60
6025	65055	61
6026	6510	61
6027	next	61
6028	2101	62
6029	2102	62
6030	2103	62
6031	2104	62
6032	2105	62
6033	2106	62
6034	2107	62
6035	2108	62
6036	21099	62
6037	2109	62
6038	2110	62
6039	2111	62
6040	2112	62
6041	2113	62
6042	2114	62
6043	2115	62
6044	2171	62
6045	granta	62
6046	kalina	62
6047	largus	62
6048	niva	62
6049	oka	62
6050	priora	62
6051	vesta	62
6052	xray	62
6053	aventador	63
6054	gallardo	63
6055	huracan	63
6056	urus	63
6057	delta	64
6058	kappa	64
6059	lybra	64
6060	musa	64
6061	phedra	64
6062	thema	64
6063	thesis	64
6064	y10	64
6065	ypsilon	64
6066	defender	65
6067	discovery	65
6068	evoque	65
6069	freelander	65
6070	range rover	65
6071	ct	66
6072	es	66
6073	gs	66
6074	gx	66
6075	is	66
6076	lc	66
6077	ls	66
6078	lx	66
6079	nx	66
6080	rc	66
6081	rx	66
6082	sc	66
6083	ux	66
6084	breez	67
6085	solano	67
6086	x60	67
6087	xuanlang	67
6088	j50	68
6089	x too	68
6090	aviator	69
6091	blackwood	69
6092	continental	69
6093	ls	69
6094	mark	69
6095	mark lt	69
6096	mkc	69
6097	mks	69
6098	mkt	69
6099	mkx	69
6100	mkz	69
6101	navigator	69
6102	towncar	69
6103	elise	70
6104	esprit	70
6105	evora	70
6106	969	71
6107	m90	72
6108	tgx	72
6109	tgs	72
6110	ghibli	73
6111	gran turismo	73
6112	gransport	73
6113	levante	73
6114	quattroporte	73
6115	spider	73
6116	57	74
6117	62	74
6118	206069	75
6119	5336	75
6120	551633	75
6121	5549	75
6122	5551	75
6123	2	76
6124	323f	76
6125	323	76
6126	3	76
6127	5	76
6128	626	76
6129	6	76
6130	929	76
6131	b	76
6132	bongo	76
6133	cx 30	76
6134	cx 3	76
6135	cx 5	76
6136	cx 7	76
6137	cx 9	76
6138	lantis	76
6139	mx 5	76
6140	mpv	76
6141	mx3	76
6142	mx6	76
6143	navajo	76
6144	rx8	76
6145	rx7	76
6146	tribute	76
6147	xedos 6	76
6148	250	77
6149	a	77
6150	actros	77
6151	atego	77
6152	axor 3236	77
6153	b	77
6154	cla	77
6155	clk	77
6156	cls	77
6157	cl	77
6158	c	77
6159	citan	77
6160	e	77
6161	gla	77
6162	glb	77
6163	glc	77
6164	gle	77
6165	glk	77
6166	gls	77
6167	gl	77
6168	gt	77
6169	g	77
6170	mb100	77
6171	ml	77
6172	o309	77
6173	r	77
6174	sl	77
6175	s	77
6176	s coupe	77
6177	slk	77
6178	slr	77
6179	sprinter	77
6180	t1	77
6181	vaneo	77
6182	vito	77
6183	w123	77
6184	w201	77
6185	x	77
6186	capri	78
6187	cougar	78
6188	grandmarquis	78
6189	marauder revival	78
6190	mariner	78
6191	milan	78
6192	montego	78
6193	monterey	78
6194	mountaineer	78
6195	sable	78
6196	topaz	78
6197	tracer	78
6198	villager	78
6199	5	79
6200	6	79
6201	zr	79
6202	clubman	80
6203	cooper	80
6204	countryman	80
6205	paceman	80
6206	3000gt	81
6207	asx	81
6208	carisma	81
6209	chariot	81
6210	colt	81
6211	delica	81
6212	diamante	81
6213	eclipse	81
6214	eclipse cross	81
6215	endeavor	81
6216	gto	81
6217	galant	81
6218	grandis	81
6219	i miev	81
6220	l200	81
6221	l300	81
6222	lancer	81
6223	mighty max	81
6224	mirage	81
6225	outlander	81
6226	pajero	81
6227	pajero pinin	81
6228	pajero sport	81
6229	raider	81
6230	space star	81
6231	starion	81
6232	412	82
6233	2141	83
6234	megaliner	84
6235	starliner	84
6236	240sx	85
6237	300zx	85
6238	350z	85
6239	370z	85
6240	720	85
6241	almera	85
6242	almera classic	85
6243	altima	85
6244	armada	85
6245	bluebird	85
6246	cube	85
6247	fairlady z	85
6248	frontier	85
6249	gt r	85
6250	juke	85
6251	latio	85
6252	leaf	85
6253	livina	85
6254	maxima	85
6255	micra	85
6256	murano	85
6257	np300	85
6258	nv200	85
6259	nv400	85
6260	navara	85
6261	note	85
6262	pathfinder	85
6263	patrol	85
6264	pino	85
6265	pixo	85
6266	presage	85
6267	primera	85
6268	qashqai	85
6269	quest	85
6270	rogue	85
6271	sentra	85
6272	stanza	85
6273	sunny	85
6274	sylphy	85
6275	teana	85
6276	terrano	85
6277	tiida	85
6278	tino	85
6279	titan	85
6280	vanette	85
6281	x trail	85
6282	xterra	85
6283	achieva	86
6284	alero	86
6285	aurora	86
6286	bravada	86
6287	cutlass	86
6288	eightyeight	86
6289	intrigue	86
6290	ninetyeight	86
6291	omega	86
6292	silhouette	86
6293	toronado	86
6294	adam	87
6295	agila	87
6296	ampera	87
6297	antara	87
6298	ascona	87
6299	astra	87
6300	calibra	87
6301	combo	87
6302	corsa	87
6303	crossland	87
6304	frontera	87
6305	grandland x	87
6306	gt	87
6307	insignia	87
6308	kadett	87
6309	karl	87
6310	meriva	87
6311	mokka	87
6312	monterey	87
6313	movano	87
6314	omega	87
6315	signum	87
6316	sintra	87
6317	tigra	87
6318	vectra	87
6319	vivaro	87
6320	zafira	87
6321	3205	88
6322	1007	89
6323	106	89
6324	107	89
6325	108	89
6326	2008	89
6327	205	89
6328	206	89
6329	207	89
6330	208	89
6331	3008	89
6332	301	89
6333	304	89
6334	306	89
6335	307	89
6336	308	89
6337	309	89
6338	4007	89
6339	4008	89
6340	405	89
6341	406	89
6342	407	89
6343	408	89
6344	5008	89
6345	508	89
6346	605	89
6347	607	89
6348	806	89
6349	807	89
6350	bipper	89
6351	boxer	89
6352	expert	89
6353	ion	89
6354	partner	89
6355	rcz	89
6356	rifter	89
6357	traveller	89
6358	acclaim	90
6359	barracuda	90
6360	breeze	90
6361	horizon	90
6362	prowler	90
6363	reliant	90
6364	roadrunner	90
6365	satellite	90
6366	sundance	90
6367	tailduster	90
6368	valiant	90
6369	volare	90
6370	slingshot	91
6371	1.5	92
6372	caro	92
6373	aztek	93
6374	bonneville	93
6375	catalina	93
6376	fiero	93
6377	firebird	93
6378	g39	93
6379	g5	93
6380	g6	93
6381	g8	93
6382	grand prix	93
6383	grandam	93
6384	grandville	93
6385	gto	93
6386	lemans	93
6387	montana	93
6388	parisienne	93
6389	pursuit	93
6390	solstice	93
6391	sunbird	93
6392	sunfire	93
6393	torrent	93
6394	transam	93
6395	vibe	93
6396	356	94
6397	718	94
6398	911	94
6399	912	94
6400	914	94
6401	944	94
6402	991	94
6403	992	94
6404	993	94
6405	996	94
6406	997	94
6407	boxster	94
6408	cayenne	94
6409	cayman	94
6410	macan	94
6411	panamera	94
6412	r2	96
6413	r4	96
6414	11	97
6415	18	97
6416	19	97
6417	21	97
6418	25	97
6419	avantime	97
6420	captur	97
6421	clio	97
6422	duster	97
6423	espace	97
6424	fluence	97
6425	kadjar	97
6426	kangoo	97
6427	kerax	97
6428	koleos	97
6429	laguna	97
6430	latitude	97
6431	magnum	97
6432	master	97
6433	megane	97
6434	midliner	97
6435	modus	97
6436	premium	97
6437	safrane	97
6438	sandero	97
6439	scenic	97
6440	symbol	97
6441	talisman	97
6442	trafic	97
6443	twingo	97
6444	twizy	97
6445	vel satis	97
6446	zoe	97
6447	350	98
6448	550	98
6449	750	98
6450	rx5	98
6451	corniche	99
6452	phantom	99
6453	silver shadow	99
6454	wraith	99
6455	200	100
6456	400	100
6457	45	100
6458	600	100
6459	75	100
6460	800	100
6461	9000	101
6462	900	101
6463	9 3	101
6464	9 5	101
6465	9 7	101
6466	aura	102
6467	ion	102
6468	l series	102
6469	outlook	102
6470	relay	102
6471	sc	102
6472	sky	102
6473	sl	102
6474	r410	103
6475	s	103
6476	frs	104
6477	iq	104
6478	tc	104
6479	alhambra	105
6480	altea	105
6481	arona	105
6482	arosa	105
6483	ateca	105
6484	cordoba	105
6485	exeo	105
6486	ibiza	105
6487	leon	105
6488	mii	105
6489	tarraco	105
6490	toledo	105
6491	citigo	106
6492	fabia	106
6493	favorit	106
6494	felicia	106
6495	kamiq	106
6496	karoq	106
6497	kodiaq	106
6498	octavia	106
6499	rapid	106
6500	roomster	106
6501	scala	106
6502	superb	106
6503	yeti	106
6504	forfour	107
6505	fortwo	107
6506	roadster	107
6507	urbinos	108
6508	actyon	109
6509	korando	109
6510	kyron	109
6511	musso	109
6512	rexton	109
6513	rodius	109
6514	tivoli	109
6515	baja	110
6516	brz	110
6517	forester	110
6518	impreza	110
6519	justy	110
6520	legacy	110
6521	levorg	110
6522	outback	110
6523	svx	110
6524	tribeca	110
6525	xv	110
6526	alto	111
6527	baleno	111
6528	celerio	111
6529	ignis	111
6530	jimny	111
6531	kizashi	111
6532	liana	111
6533	sx4	111
6534	splash	111
6535	swift	111
6536	vitara	111
6537	wagon r	111
6538	x90	111
6539	xl7	111
6540	indica	112
6541	safari	112
6542	1102	113
6543	1105	113
6544	pickup	113
6545	slavuta	113
6546	model 3	114
6547	model s	114
6548	model x	114
6549	4runner	115
6550	aqua	115
6551	aurion	115
6552	auris	115
6553	avalon	115
6554	avensis	115
6555	aygo	115
6556	c hr	115
6557	camry	115
6558	carina	115
6559	celica	115
6560	chaser	115
6561	corolla	115
6562	cressida	115
6563	crown	115
6564	echo	115
6565	estima	115
6566	fj cruiser	115
6567	fj40	115
6568	fortuner	115
6569	gt86	115
6570	hiace	115
6571	highlander	115
6572	hilux	115
6573	innova	115
6574	ipsum	115
6575	land cruiser	115
6576	land cruiser prado	115
6577	matrix	115
6578	mr2	115
6579	paseo	115
6580	pickup	115
6581	previa	115
6582	prius	115
6583	prius c	115
6584	proace	115
6585	rav 4	115
6586	sequoia	115
6587	sienna	115
6588	solara	115
6589	supra	115
6590	tacoma	115
6591	tundra	115
6592	urban cruiser	115
6593	venza	115
6594	verso	115
6595	verso s	115
6596	yaris	115
6597	yaris verso	115
6598	belarus	124
6599	gt6	116
6600	spitfire	116
6601	452	117
6602	469	117
6603	hunter	117
6604	patriot	117
6605	amarok	120
6606	arteon	120
6607	atlas	120
6608	beetle	120
6609	bora	120
6610	cc	120
6611	caddy	120
6612	corrado	120
6613	crafter	120
6614	eos	120
6615	fox	120
6616	gol	120
6617	golf	120
6618	golf plus	120
6619	golf sv	120
6620	gran lavida	120
6621	iltis	120
6622	jetta	120
6623	lt	120
6624	lamando	120
6625	lavida	120
6626	lupo	120
6627	new beetle	120
6628	passat	120
6629	phaeton	120
6630	polo	120
6631	routan	120
6632	santana	120
6633	scirocco	120
6634	sharan	120
6635	squareback	120
6636	t cross	120
6637	t roc	120
6638	the beetle	120
6639	tiguan	120
6640	touareg	120
6641	touran	120
6642	transporter	120
6643	up	120
6644	vento	120
6645	t9	118
6646	140	119
6647	260	119
6648	440	119
6649	460	119
6650	740	119
6651	760	119
6652	850	119
6653	900	119
6654	940	119
6655	960	119
6656	b12	119
6657	c30	119
6658	c70	119
6659	fm	119
6660	s40	119
6661	s60	119
6662	s70	119
6663	s80	119
6664	s90	119
6665	v40	119
6666	v50	119
6667	v60	119
6668	v70	119
6669	v90	119
6670	xc40	119
6671	xc60	119
6672	xc90	119
6673	353	121
6674	\N	125
6675	forza	122
6676	i van	122
6677	sw2	102
6678	vue	102
6679	xa	104
6680	xb	104
6681	xd	104
6682	equator	111
6683	esteem	111
6684	samurai	111
6685	sidekick	111
6686	verona	111
6687	starlet	115
6688	t100	115
6689	tercel	115
\.


--
-- Data for Name: c_s_app_request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.c_s_app_request (id, start, finish, request_time) FROM stdin;
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
70	2020-03-16 01:00:00+01	2020-03-16 02:00:00+01	2020-03-30 11:38:33.831391+02
71	2020-03-24 15:00:00+01	2020-03-24 16:00:00+01	2020-03-31 09:51:23.072375+02
72	2020-03-26 14:00:00+01	2020-03-26 15:00:00+01	2020-03-31 11:16:05.225459+02
73	2020-03-26 15:00:00+01	2020-03-26 16:00:00+01	2020-03-31 14:52:04.354963+02
74	2020-03-30 16:00:00+02	2020-03-30 17:00:00+02	2020-03-31 15:02:30.451006+02
75	2020-04-01 13:00:00+02	2020-04-01 14:00:00+02	2020-04-02 11:59:57.841956+02
76	2020-04-01 14:00:00+02	2020-04-01 15:00:00+02	2020-04-02 12:00:42.627796+02
77	2020-04-06 11:00:00+02	2020-04-06 11:01:00+02	2020-04-06 15:28:55.885165+02
78	2020-04-06 11:00:00+02	2020-04-06 11:01:00+02	2020-04-06 15:33:38.465686+02
79	2020-04-06 11:02:00+02	2020-04-06 11:03:00+02	2020-04-06 21:03:27.556045+02
80	2020-04-06 11:05:00+02	2020-04-06 11:06:00+02	2020-04-06 21:07:11.303748+02
81	2020-04-05 12:00:00+02	2020-04-05 12:01:00+02	2020-04-06 21:27:13.656834+02
82	2020-04-03 11:00:00+02	2020-04-03 11:01:00+02	2020-04-06 21:38:04.354357+02
83	2020-04-04 11:00:00+02	2020-04-04 11:01:00+02	2020-04-06 21:48:40.774033+02
84	2020-04-03 11:00:00+02	2020-04-03 11:01:00+02	2020-04-06 22:00:56.139804+02
85	2020-04-06 12:00:00+02	2020-04-06 12:01:00+02	2020-04-07 09:21:32.423285+02
86	2020-04-06 02:00:00+02	2020-04-06 02:01:00+02	2020-04-08 22:25:26.006577+02
\.


--
-- Data for Name: c_s_app_requestcameraurl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.c_s_app_requestcameraurl (id, url, camera_id, request_id) FROM stdin;
133	\N	6	70
134	\N	6	71
135	\N	7	71
136	\N	8	71
137	\N	8	72
141	rtsp://10.32.2.31:554/openUrl/7UUQm08?beginTime=20200330T170000&endTime=20200330T180000&playBackMode=1	8	74
143	rtsp://10.32.2.31:554/openUrl/7V1EJ7G?beginTime=20200330T170000&endTime=20200330T180000&playBackMode=1	10	74
142	rtsp://10.32.2.31:554/openUrl/7V0eJtm?beginTime=20200330T170000&endTime=20200330T180000&playBackMode=1	9	74
144	\N	6	75
146	rtsp://10.32.2.31:554/openUrl/rmsFSpy?beginTime=20200406T120000&endTime=20200406T120100&playBackMode=1	6	77
148	rtsp://10.32.2.31:554/openUrl/lwgoD5K?beginTime=20200406T120200&endTime=20200406T120300&playBackMode=1	6	79
157	\N	8	81
158	rtsp://10.32.2.31:554/openUrl/2PRLF3H?beginTime=20200524T130000&endTime=20200405T130100&playBackMode=1	9	81
156	rtsp://10.32.2.31:554/openUrl/2PUBEmk?beginTime=20200405T130000&endTime=20200405T130100&playBackMode=1	7	81
159	rtsp://10.32.2.31:554/openUrl/2PVK2SA?beginTime=20200405T130000&endTime=20200405T130100&playBackMode=1	10	81
160	rtsp://10.32.2.31:554/openUrl/2QcLYGs?beginTime=20200405T130000&endTime=20200405T130100&playBackMode=1	11	81
155	rtsp://10.32.2.31:554/openUrl/2QmHWeI?beginTime=20200405T130000&endTime=20200405T130100&playBackMode=1	6	81
169	\N	8	83
167	rtsp://10.32.2.31:554/openUrl/zSb7i12?beginTime=20200404T120000&endTime=20200404T120100&playBackMode=1	6	83
170	rtsp://10.32.2.31:554/openUrl/zSh4RKo?beginTime=20200404T120000&endTime=20200404T120100&playBackMode=1	9	83
168	rtsp://10.32.2.31:554/openUrl/zSdXhjG?beginTime=20200404T120000&endTime=20200404T120100&playBackMode=1	7	83
172	rtsp://10.32.2.31:554/openUrl/zSfWte8?beginTime=20200404T120000&endTime=20200404T120100&playBackMode=1	11	83
171	rtsp://10.32.2.31:554/openUrl/zSvgOfC?beginTime=20200404T120000&endTime=20200404T120100&playBackMode=1	10	83
180	\N	7	85
181	rtsp://10.32.2.31:554/openUrl/5Fniza8?beginTime=20200406T130000&endTime=20200406T130100&playBackMode=1	8	85
179	rtsp://10.32.2.31:554/openUrl/5SlazwQ?beginTime=20200406T130000&endTime=20200406T130100&playBackMode=1	6	85
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
138	rtsp://10.32.2.31:554/openUrl/nFTqfgA?beginTime=20200326T160000&endTime=20200326T170000&playBackMode=1	6	73
139	rtsp://10.32.2.31:554/openUrl/nGVzAFa?beginTime=20200326T160000&endTime=20200326T170000&playBackMode=1	7	73
140	rtsp://10.32.2.31:554/openUrl/nH8UJMc?beginTime=20200326T160000&endTime=20200326T170000&playBackMode=1	8	73
145	rtsp://10.32.2.31:554/openUrl/WziaVpu?beginTime=20200401T150000&endTime=20200401T160000&playBackMode=1	6	76
147	rtsp://10.32.2.31:554/openUrl/Me09C3S?beginTime=20200406T120000&endTime=20200406T120100&playBackMode=1	6	78
154	\N	11	80
152	rtsp://10.32.2.31:554/openUrl/C2Jz3eo?beginTime=20200406T120500&endTime=20200406T120600&playBackMode=1	9	80
151	rtsp://10.32.2.31:554/openUrl/C2YkbZK?beginTime=20200406T120500&endTime=20200406T120600&playBackMode=1	8	80
149	rtsp://10.32.2.31:554/openUrl/C2XtoBy?beginTime=20200406T120500&endTime=20200406T120600&playBackMode=1	6	80
150	rtsp://10.32.2.31:554/openUrl/C33IzsY?beginTime=20200406T120500&endTime=20200406T120600&playBackMode=1	7	80
153	rtsp://10.32.2.31:554/openUrl/C3bnJYI?beginTime=20200406T120500&endTime=20200406T120600&playBackMode=1	10	80
161	\N	6	82
166	rtsp://10.32.2.31:554/openUrl/OSKQBZC?beginTime=20200403T120000&endTime=20200403T120100&playBackMode=1	11	82
163	rtsp://10.32.2.31:554/openUrl/OSYtmeI?beginTime=20200403T120000&endTime=20200403T120100&playBackMode=1	8	82
162	rtsp://10.32.2.31:554/openUrl/OSWuakg?beginTime=20200403T120000&endTime=20200403T120100&playBackMode=1	7	82
164	rtsp://10.32.2.31:554/openUrl/OSWuakh?beginTime=20200403T120000&endTime=20200403T120100&playBackMode=1	9	82
165	rtsp://10.32.2.31:554/openUrl/OT0sy9a?beginTime=20200403T120000&endTime=20200403T120100&playBackMode=1	10	82
176	\N	9	84
173	rtsp://10.32.2.31:554/openUrl/sb3Ag6s?beginTime=20200403T120000&endTime=20200403T120100&playBackMode=1	6	84
178	rtsp://10.32.2.31:554/openUrl/sb9geHL?beginTime=20200403T120000&endTime=20200403T120100&playBackMode=1	11	84
174	rtsp://10.32.2.31:554/openUrl/sb9geHK?beginTime=20200403T120000&endTime=20200403T120100&playBackMode=1	7	84
175	rtsp://10.32.2.31:554/openUrl/sbeECaY?beginTime=20200403T120000&endTime=20200403T120100&playBackMode=1	8	84
177	rtsp://10.32.2.31:554/openUrl/sbt89Og?beginTime=20200403T120000&endTime=20200403T120100&playBackMode=1	10	84
182	\N	6	86
\.


--
-- Data for Name: c_s_app_resultdeepstream; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.c_s_app_resultdeepstream (id, "timestamp", car_number, car_probability, car_photo, camera_id, request_id, car_video, color_probability, car_color_id, car_obj_id) FROM stdin;
277	2020-03-17 11:00:02+01	CB6108BT	86	images/4.png	7	51	videos/0_03.mp4	52	2	5967
278	2020-03-17 11:00:02+01	BA7779BE	87	images/4.png	7	51	videos/0_03.mp4	53	3	6711
280	2020-03-17 11:00:03+01	AA1834HX	89	images/4.png	7	51	videos/0_03.mp4	55	5	7191
281	2020-03-17 11:00:03+01	AA8369CH	90	images/4.png	7	51	videos/0_03.mp4	56	6	6349
282	2020-03-17 11:00:03+01	AI8628EB	91	images/4.png	7	51	videos/0_03.mp4	57	10	6421
283	2020-03-17 11:00:03+01	AI0578PC	92	images/4.png	7	51	videos/0_03.mp4	58	11	6106
284	2020-03-17 11:00:04+01	AA4864OO	93	images/4.png	7	51	videos/0_03.mp4	59	13	5625
285	2020-03-17 11:00:06+01	AA5762EM	94	images/4.png	7	51	videos/0_03.mp4	60	14	6513
286	2020-03-17 11:00:06+01	MGM 27752	95	images/4.png	7	51	videos/0_03.mp4	61	15	7009
287	2020-03-17 11:00:16+01	AI0732HM	96	images/4.png	7	51	videos/0_03.mp4	62	1	5262
288	2020-03-17 11:00:16+01	??0321KB	97	images/4.png	7	51	videos/0_03.mp4	63	2	5787
289	2020-03-17 11:00:17+01	AA7271OM	98	images/4.png	7	51	videos/0_03.mp4	64	3	7358
290	2020-03-17 11:00:17+01	AT7323ET	85	images/4.png	7	51	videos/0_03.mp4	65	4	6004
291	2020-03-17 11:00:18+01	DAV10	86	images/4.png	7	51	videos/0_03.mp4	66	5	6934
292	2020-03-17 11:00:18+01	CD 0886	87	images/4.png	7	51	videos/0_03.mp4	67	6	6862
293	2020-03-17 11:00:18+01	AI3747CO	88	images/4.png	7	51	videos/0_03.mp4	68	10	5222
294	2020-03-17 11:00:20+01	AA1234TX	89	images/4.png	7	51	videos/0_03.mp4	69	11	7600
295	2020-03-17 11:00:20+01	AA5498XB	90	images/4.png	7	51	videos/0_03.mp4	70	13	5943
296	2020-03-17 11:00:20+01	AI8650HE	91	images/4.png	7	51	videos/0_03.mp4	71	14	5667
297	2020-03-17 11:00:22+01	AA7434IT	92	images/4.png	7	51	videos/0_03.mp4	72	15	6639
298	2020-03-17 11:00:25+01	AE8250BM	93	images/4.png	7	51	videos/0_03.mp4	73	1	5325
299	2020-03-17 11:00:25+01	BA17?5AI	94	images/4.png	7	51	videos/0_03.mp4	74	2	6224
300	2020-03-17 11:00:25+01	BT5360AK	95	images/4.png	7	51	videos/0_03.mp4	75	3	5183
301	2020-03-17 11:00:27+01	AA4439PK	96	images/4.png	7	51	videos/0_03.mp4	76	4	5986
302	2020-03-17 11:00:28+01	BX8746CB	97	images/4.png	7	51	videos/0_03.mp4	77	5	6666
303	2020-03-17 11:00:30+01	BE2509AI	98	images/4.png	7	51	videos/0_03.mp4	78	6	6199
304	2020-03-17 11:00:32+01	AI2200BK	85	images/4.png	7	51	videos/0_03.mp4	79	10	5140
305	2020-03-17 11:00:32+01	AI3953HI	86	images/4.png	7	51	videos/0_03.mp4	80	11	5846
306	2020-03-17 11:00:35+01	AI0756HK	87	images/4.png	7	51	videos/0_03.mp4	81	13	6659
307	2020-03-17 11:00:35+01	AI2280A?	88	images/4.png	7	51	videos/0_03.mp4	82	14	5727
308	2020-03-17 11:00:43+01	A?????CB	89	images/4.png	7	51	videos/0_03.mp4	83	15	5711
309	2020-03-17 11:00:43+01	AA4958TM	90	images/4.png	7	51	videos/0_03.mp4	84	1	6675
311	2020-03-17 11:00:47+01	AA3307AA	92	images/4.png	7	51	videos/0_03.mp4	86	3	5529
312	2020-03-17 11:00:51+01	AI7497BO	93	images/4.png	7	51	videos/0_03.mp4	87	4	6155
313	2020-03-17 11:00:53+01	AA0507HE	94	images/4.png	7	51	videos/0_03.mp4	88	5	7452
314	2020-03-17 11:00:53+01	AA8910HC	95	images/4.png	7	51	videos/0_03.mp4	89	6	6166
315	2020-03-17 11:00:55+01	AI1763CI	96	images/4.png	7	51	videos/0_03.mp4	90	10	6618
316	2020-03-17 11:00:55+01	AA1027PO	97	images/4.png	7	51	videos/0_03.mp4	91	11	5805
317	2020-03-17 11:00:55+01	AI2404BI	98	images/4.png	7	51	videos/0_03.mp4	92	13	5236
318	2020-03-17 11:00:56+01	AH5?86EA	85	images/4.png	7	51	videos/0_03.mp4	93	14	6305
319	2020-03-17 11:00:58+01	BB9990AP	86	images/4.png	7	51	videos/0_03.mp4	94	15	7622
320	2020-03-17 11:00:59+01	????????	87	images/4.png	7	51	videos/0_03.mp4	95	1	7065
321	2020-03-17 11:01:00+01	BI1623EB	88	images/4.png	7	51	videos/0_03.mp4	96	2	7251
322	2020-03-17 11:01:00+01	AA4619OI	89	images/4.png	7	51	videos/0_03.mp4	97	3	6890
323	2020-03-17 11:01:03+01	AA9369EO	90	images/4.png	7	51	videos/0_03.mp4	62	4	5171
324	2020-03-17 11:01:06+01	AI5745EB	91	images/4.png	7	51	videos/0_03.mp4	63	5	6991
325	2020-03-17 11:01:07+01	AI8561EC	92	images/4.png	7	51	videos/0_03.mp4	64	6	5333
326	2020-03-17 11:01:07+01	AI??41EB	93	images/4.png	7	51	videos/0_03.mp4	65	10	6663
327	2020-03-17 11:01:11+01	AA??82MH	94	images/4.png	7	51	videos/0_03.mp4	66	11	6096
328	2020-03-17 11:01:11+01	BA2977CA	95	images/4.png	7	51	videos/0_03.mp4	67	13	5211
329	2020-03-17 11:01:11+01	EH0861EE	96	images/4.png	7	51	videos/0_03.mp4	68	14	6778
330	2020-03-17 11:01:11+01	AX0022EP	97	images/4.png	7	51	videos/0_03.mp4	69	15	6892
331	2020-03-17 11:01:13+01	AI9066IK	98	images/4.png	7	51	videos/0_03.mp4	70	1	6718
332	2020-03-17 11:01:15+01	AI5448BH	85	images/4.png	7	51	videos/0_03.mp4	71	2	7191
333	2020-03-17 11:01:15+01	LAT 972	86	images/4.png	7	51	videos/0_03.mp4	72	3	5529
334	2020-03-17 11:01:17+01	BB?5??CM	87	images/4.png	7	51	videos/0_03.mp4	73	4	5391
335	2020-03-17 11:01:19+01	CB5540CA	88	images/4.png	7	51	videos/0_03.mp4	74	5	6293
336	2020-03-17 11:01:20+01	AI9753HC	89	images/4.png	7	51	videos/0_03.mp4	75	6	6927
337	2020-03-17 11:01:20+01	AE7735KT	90	images/4.png	7	51	videos/0_03.mp4	76	10	6898
338	2020-03-17 11:01:21+01	BK1756CA	91	images/4.png	7	51	videos/0_03.mp4	77	11	7238
339	2020-03-17 11:01:24+01	AA7413TO	92	images/4.png	7	51	videos/0_03.mp4	78	13	5558
340	2020-03-17 11:01:24+01	AI4747CH	93	images/4.png	7	51	videos/0_03.mp4	79	14	6482
344	2020-03-17 11:01:33+01	AA5740PT	97	images/4.png	7	51	videos/0_03.mp4	83	3	6624
345	2020-03-17 11:01:35+01	AA0770PA	98	images/4.png	7	51	videos/0_03.mp4	84	4	6977
346	2020-03-17 11:01:38+01	AI3482??	85	images/4.png	7	51	videos/0_03.mp4	85	5	6316
347	2020-03-17 11:01:43+01	GER 04037	86	images/4.png	7	51	videos/0_03.mp4	86	6	6484
348	2020-03-17 11:01:43+01	AI7221CE	87	images/4.png	7	51	videos/0_03.mp4	87	10	5455
349	2020-03-17 11:01:45+01	AI6641IB	88	images/4.png	7	51	videos/0_03.mp4	88	11	6478
350	2020-03-17 11:01:47+01	AA5999EH	89	images/4.png	7	51	videos/0_03.mp4	89	13	5778
351	2020-03-17 11:01:49+01	AI8334HT	90	images/4.png	7	51	videos/0_03.mp4	62	14	5490
352	2020-03-17 11:01:51+01	AA1547CI	91	images/4.png	7	51	videos/0_03.mp4	63	15	6910
353	2020-03-17 11:01:51+01	BA8278BA	92	images/4.png	7	51	videos/0_03.mp4	64	1	6490
354	2020-03-17 11:01:51+01	AA0359CH	93	images/4.png	7	51	videos/0_03.mp4	65	2	5446
355	2020-03-17 11:01:54+01	AA1234IX	94	images/4.png	7	51	videos/0_03.mp4	66	3	6797
356	2020-03-17 11:01:54+01	AI5??6IH	95	images/4.png	7	51	videos/0_03.mp4	67	4	5199
357	2020-03-17 11:01:55+01	CA4184BE	96	images/4.png	7	51	videos/0_03.mp4	68	5	5496
358	2020-03-17 11:01:55+01	AA3304MP	97	images/4.png	7	51	videos/0_03.mp4	69	6	5961
359	2020-03-17 11:01:58+01	AA7482MT	98	images/4.png	7	51	videos/0_03.mp4	70	10	6408
360	2020-03-17 11:02:00+01	AE6505EX	85	images/4.png	7	51	videos/0_03.mp4	71	11	6291
361	2020-03-17 11:02:01+01	AI??4?ET	86	images/4.png	7	51	videos/0_03.mp4	72	13	6863
362	2020-03-17 11:02:04+01	AA8526TA	87	images/4.png	7	51	videos/0_03.mp4	73	14	7343
363	2020-03-17 11:02:06+01	AI0010CK	88	images/4.png	7	51	videos/0_03.mp4	74	15	6326
364	2020-03-17 11:02:08+01	AA4331XX	89	images/4.png	7	51	videos/0_03.mp4	75	1	6915
365	2020-03-17 11:02:08+01	AX7000KI	90	images/4.png	7	51	videos/0_03.mp4	76	2	6715
367	2020-03-17 11:02:10+01	AI2?1??	92	images/4.png	7	51	videos/0_03.mp4	78	4	7331
368	2020-03-17 11:02:13+01	AA3915XH	93	images/4.png	7	51	videos/0_03.mp4	79	5	7321
369	2020-03-17 11:02:13+01	312-37KC	94	images/4.png	7	51	videos/0_03.mp4	80	6	6881
370	2020-03-17 11:02:21+01	AA1413KI	95	images/4.png	7	51	videos/0_03.mp4	81	10	7344
371	2020-03-17 11:02:28+01	AA7083XH	96	images/4.png	7	51	videos/0_03.mp4	82	11	6633
372	2020-03-17 11:02:28+01	AE2737AB	97	images/4.png	7	51	videos/0_03.mp4	83	13	6713
373	2020-03-17 11:02:31+01	AA7017IK	98	images/4.png	7	51	videos/0_03.mp4	84	14	7016
374	2020-03-17 11:02:31+01	AI3997ET	85	images/4.png	7	51	videos/0_03.mp4	85	15	5917
375	2020-03-17 11:02:31+01	AI5573IT	86	images/4.png	7	51	videos/0_03.mp4	86	1	6656
376	2020-03-17 11:02:34+01	AA3524XA	87	images/4.png	7	51	videos/0_03.mp4	87	2	6980
377	2020-03-17 11:02:34+01	AA4257BT	88	images/4.png	7	51	videos/0_03.mp4	88	3	5877
378	2020-03-17 11:02:34+01	AA3885XB	89	images/4.png	7	51	videos/0_03.mp4	89	4	6694
379	2020-03-17 11:02:34+01	AA9??0TA	90	images/4.png	7	51	videos/0_03.mp4	62	5	6411
380	2020-03-17 11:02:42+01	AH1557IX	91	images/4.png	7	51	videos/0_03.mp4	63	6	5463
381	2020-03-17 11:02:42+01	AI9979BB	92	images/4.png	7	51	videos/0_03.mp4	64	10	5575
382	2020-03-17 11:02:44+01	AI8880BO	93	images/4.png	7	51	videos/0_03.mp4	65	11	7201
383	2020-03-17 11:02:45+01	AA9756XX	94	images/4.png	7	51	videos/0_03.mp4	66	13	5402
384	2020-03-17 11:02:46+01	AA7224BI	95	images/4.png	7	51	videos/0_03.mp4	67	14	6329
385	2020-03-17 11:02:48+01	BB3004EA	96	images/4.png	7	51	videos/0_03.mp4	68	15	6418
386	2020-03-17 11:02:50+01	AA????OI	97	images/4.png	7	51	videos/0_03.mp4	69	1	6271
387	2020-03-17 11:02:50+01	AA6823KK	98	images/4.png	7	51	videos/0_03.mp4	70	2	6857
388	2020-03-17 11:02:53+01	AE2448KX	85	images/4.png	7	51	videos/0_03.mp4	71	3	7546
389	2020-03-17 11:02:53+01	AA1547XM	86	images/4.png	7	51	videos/0_03.mp4	72	4	5803
390	2020-03-17 11:02:55+01	AI0888IC	87	images/4.png	7	51	videos/0_03.mp4	73	5	7295
391	2020-03-17 11:02:56+01	AH2214AE	88	images/4.png	7	51	videos/0_03.mp4	74	6	5487
392	2020-03-17 11:02:56+01	AA7009TX	89	images/4.png	7	51	videos/0_03.mp4	75	10	6807
393	2020-03-17 11:02:59+01	AI????CO	90	images/4.png	7	51	videos/0_03.mp4	76	11	5880
394	2020-03-17 11:02:59+01	EGZ 795	91	images/4.png	7	51	videos/0_03.mp4	77	13	6415
395	2020-03-17 11:02:59+01	AI7557CO	92	images/4.png	7	51	videos/0_03.mp4	78	14	6404
396	2020-03-17 11:02:59+01	AT9198HO	93	images/4.png	7	51	videos/0_03.mp4	79	15	6117
398	2020-03-17 11:03:00+01	CB8448BH	95	images/4.png	7	51	videos/0_03.mp4	81	2	6889
399	2020-03-17 11:03:00+01	BH7475IT	96	images/4.png	7	51	videos/0_03.mp4	82	3	6422
400	2020-03-17 11:03:04+01	AI9135CB	97	images/4.png	7	51	videos/0_03.mp4	83	4	5998
401	2020-03-17 11:03:08+01	AA9595TP	98	images/4.png	7	51	videos/0_03.mp4	84	5	5956
402	2020-03-17 11:03:08+01	AA2735XH	85	images/4.png	7	51	videos/0_03.mp4	85	6	7070
403	2020-03-17 11:03:10+01	AX4271HM	86	images/4.png	7	51	videos/0_03.mp4	86	10	5774
404	2020-03-17 11:03:10+01	AI3722EM	87	images/4.png	7	51	videos/0_03.mp4	87	11	5804
405	2020-03-17 11:03:14+01	AA9600PO	88	images/4.png	7	51	videos/0_03.mp4	88	13	5603
406	2020-03-17 11:03:14+01	AA1141IX	89	images/4.png	7	51	videos/0_03.mp4	89	14	7559
407	2020-03-17 11:03:14+01	AH8778BO	90	images/4.png	7	51	videos/0_03.mp4	79	15	7613
276	2020-03-17 11:00:00+01	AA1071IE	85	images/4.png	7	51	videos/0_03.mp4	51	1	5128
279	2020-03-17 11:00:02+01	AB3?11CT	88	images/4.png	7	51	videos/0_03.mp4	54	4	6048
310	2020-03-17 11:00:43+01	KOL PC?4	91	images/4.png	7	51	videos/0_03.mp4	85	2	6984
341	2020-03-17 11:01:25+01	AP6952CI	94	images/4.png	7	51	videos/0_03.mp4	80	15	7213
342	2020-03-17 11:01:31+01	AI7770CB	95	images/4.png	7	51	videos/0_03.mp4	81	1	7216
343	2020-03-17 11:01:33+01	AA5032EI	96	images/4.png	7	51	videos/0_03.mp4	82	2	6272
366	2020-03-17 11:02:08+01	AA9306MB	91	images/4.png	7	51	videos/0_03.mp4	77	3	5213
397	2020-03-17 11:03:00+01	AI????BH	94	images/4.png	7	51	videos/0_03.mp4	80	1	5149
408	2020-03-17 11:03:16+01	AI3971EA	91	images/4.png	7	51	videos/0_03.mp4	80	1	6777
409	2020-03-17 11:03:16+01	AA9279XE	92	images/4.png	7	51	videos/0_03.mp4	81	2	6044
410	2020-03-17 11:03:17+01	AA0027RF	93	images/4.png	7	51	videos/0_03.mp4	82	3	7318
411	2020-03-17 11:03:18+01	AA9267??	94	images/4.png	7	51	videos/0_03.mp4	83	4	7477
480	2020-03-30 18:00:03+02	\N	\N	images/41.PNG\n	10	74	videos/0_10.MOV\n	\N	2	5627
481	2020-03-30 18:00:03+02	\N	\N	images/67.PNG\n	10	74	videos/0_10.MOV\n	\N	14	6935
482	2020-03-30 18:00:05+02	\N	\N	images/62.PNG\n	10	74	videos/0_10.MOV\n	\N	3	7131
492	2020-03-30 18:00:41+02	\N	\N	images/269.PNG\n	10	74	videos/30_40.MOV\n	\N	14	5492
496	2020-03-30 18:00:45+02	\N	\N	images/335.PNG\n	10	74	videos/30_40.MOV\n	\N	1	7074
497	2020-03-30 18:00:46+02	\N	\N	images/339.PNG\n	10	74	videos/30_40.MOV\n	\N	14	6582
500	2020-03-30 18:00:50+02	\N	\N	images/416.PNG\n	10	74	videos/40_50.MOV\n	\N	2	6511
503	2020-03-30 18:01:02+02	\N	\N	images/478.PNG\n	10	74	videos/01.00_01.10.MOV\n	\N	14	6888
479	2020-03-30 18:00:02+02	\N	\N	images/40.PNG\n	10	74	videos/0_10.MOV\n	\N	1	\N
510	2020-03-30 18:01:21+02	\N	\N	images/555.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	14	\N
511	2020-03-30 18:01:23+02	\N	\N	images/548.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	5	\N
516	2020-03-30 18:01:28+02	\N	\N	images/584.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	5	\N
517	2020-03-30 18:01:30+02	\N	\N	images/601.PNG\n	10	74	videos/01.30_01.40.MOV\n	\N	14	\N
493	2020-03-30 18:00:42+02	\N	\N	images/284.PNG\n	10	74	videos/30_40.MOV\n	\N	1	\N
498	2020-03-30 18:00:46+02	\N	\N	images/361.PNG\n	10	74	videos/30_40.MOV\n	\N	6	\N
483	2020-03-30 18:00:05+02	\N	\N	images/92.PNG\n	10	74	videos/0_10.MOV\n	\N	14	\N
499	2020-03-30 18:00:46+02	\N	\N	images/349.PNG\n	10	74	videos/30_40.MOV\n	\N	5	\N
484	2020-03-30 18:00:11+02	\N	\N	images/114.PNG\n\n	10	74	videos/10_20.MOV\n	\N	14	\N
485	2020-03-30 18:00:11+02	\N	\N	images/88.PNG\n	10	74	videos/10_20.MOV\n	\N	1	\N
512	2020-03-30 18:01:24+02	\N	\N	images/558.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	5	\N
504	2020-03-30 18:01:09+02	\N	\N	images/501.PNG\n	10	74	videos/01.00_01.10.MOV\n	\N	14	\N
505	2020-03-30 18:01:09+02	\N	\N	images/507.PNG\n	10	74	videos/01.00_01.10.MOV\n	\N	5	\N
513	2020-03-30 18:01:25+02	\N	\N	images/566.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	5	\N
514	2020-03-30 18:01:26+02	\N	\N	images/574.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	14	\N
518	2020-03-30 18:01:30+02	\N	\N	images/602.PNG\n	10	74	videos/01.30_01.40.MOV\n	\N	14	\N
519	2020-03-30 18:01:35+02	\N	\N	images/605.PNG\n	10	74	videos/01.30_01.40.MOV\n	\N	14	\N
520	2020-03-30 18:01:35+02	\N	\N	images/624.PNG\n	10	74	videos/01.30_01.40.MOV\n	\N	3	\N
521	2020-03-30 18:01:35+02	\N	\N	images/638.PNG\n	10	74	videos/01.30_01.40.MOV\n	\N	5	\N
487	2020-03-30 18:00:15+02	\N	\N	images/124.PNG\n	10	74	videos/10_20.MOV\n	\N	4	\N
495	2020-03-30 18:00:44+02	\N	\N	images/297.PNG\n	10	74	videos/30_40.MOV\n	\N	14	\N
478	2020-03-30 18:00:02+02	\N	\N	images/1.PNG	10	74	videos/0_10.MOV\n	\N	14	\N
515	2020-03-30 18:01:26+02	\N	\N	images/581.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	14	\N
488	2020-03-30 18:00:16+02	\N	\N	images/139.PNG\n	10	74	videos/10_20.MOV\n	\N	5	\N
489	2020-03-30 18:00:16+02	\N	\N	images/131.PNG\n	10	74	videos/10_20.MOV\n	\N	5	\N
490	2020-03-30 18:00:21+02	\N	\N	images/159.PNG\n	10	74	videos/10_20.MOV\n	\N	1	\N
491	2020-03-30 18:00:21+02	\N	\N	images/146.PNG\n	10	74	videos/20_30.MOV\n	\N	5	\N
506	2020-03-30 18:01:12+02	\N	\N	images/513.PNG\n	10	74	videos/01.10_01.20.MOV\n	\N	14	\N
507	2020-03-30 18:01:15+02	\N	\N	images/521.PNG\n	10	74	videos/01.10_01.20.MOV\n	\N	14	\N
508	2020-03-30 18:01:20+02	\N	\N	images/535.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	4	\N
509	2020-03-30 18:01:20+02	\N	\N	images/528.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	5	\N
494	2020-03-30 18:00:42+02	\N	\N	images/208.PNG\n	10	74	videos/30_40.MOV\n	\N	14	\N
486	2020-03-30 18:00:12+02	\N	\N	images/121.PNG\n	10	74	videos/10_20.MOV\n	\N	14	\N
501	2020-03-30 18:00:50+02	\N	\N	images/414.PNG\n	10	74	videos/40_50.MOV\n	\N	14	\N
502	2020-03-30 18:00:54+02	\N	\N	images/437.PNG\n	10	74	videos/40_50.MOV\n	\N	5	\N
522	2020-03-30 18:01:43+02	\N	\N	images/651.PNG\n	10	74	videos/01.30_01.40.MOV\n	\N	14	\N
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
41	c_s_app	0018_auto_20200406_1048	2020-04-06 12:49:00.962232+02
42	c_s_app	0019_auto_20200406_1110	2020-04-06 13:10:37.950954+02
43	c_s_app	0020_generation_path	2020-04-07 11:27:15.6331+02
44	c_s_app	0021_remove_generation_path	2020-04-07 11:32:59.507694+02
45	c_s_app	0022_generation_path	2020-04-07 11:33:12.322355+02
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

SELECT pg_catalog.setval('public.c_s_app_generation_id_seq', 36, true);


--
-- Name: c_s_app_generation_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.c_s_app_generation_id_seq1', 7622, true);


--
-- Name: c_s_app_mark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.c_s_app_mark_id_seq', 125, true);


--
-- Name: c_s_app_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.c_s_app_model_id_seq', 6689, true);


--
-- Name: c_s_app_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.c_s_app_request_id_seq', 86, true);


--
-- Name: c_s_app_requestcameraurl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.c_s_app_requestcameraurl_id_seq', 182, true);


--
-- Name: c_s_app_resultdeepstream_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.c_s_app_resultdeepstream_id_seq', 522, true);


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

SELECT pg_catalog.setval('public.django_migrations_id_seq', 45, true);


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

