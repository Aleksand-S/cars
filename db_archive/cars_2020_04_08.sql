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
2618	4059	7	\N
2619	4060	1	\N
2620	4061	1	\N
2621	4062	1	\N
2622	4062	2	\N
2623	4063	4	\N
2624	4064	36	\N
2625	4065	2	\N
2626	4065	3	\N
2627	4066	1	\N
2628	4066	2	\N
2629	4067	1	\N
2630	4067	2	\N
2631	4068	1	\N
2632	4069	1	\N
2633	4069	2	\N
2634	4069	3	\N
2635	4069	4	\N
2636	4070	1	\N
2637	4070	2	\N
2638	4071	1	\N
2639	4071	2	\N
2640	4071	3	\N
2641	4072	2	\N
2642	4073	1	\N
2643	4073	2	\N
2644	4073	3	\N
2645	4074	1	\N
2646	4074	2	\N
2647	4074	3	\N
2648	4075	1	\N
2649	4076	1	\N
2650	4077	1	\N
2651	4077	2	\N
2652	4077	3	\N
2653	4077	4	\N
2654	4078	1	\N
2655	4078	2	\N
2656	4079	3	\N
2657	4080	1	\N
2658	4081	1	\N
2659	4082	1	\N
2660	4083	1	\N
2661	4084	1	\N
2662	4085	1	\N
2663	4086	1	\N
2664	4087	1	\N
2665	4088	1	\N
2666	4088	19	\N
2667	4089	1	\N
2668	4090	1	\N
2669	4091	1	\N
2670	4092	1	\N
2671	4093	1	\N
2672	4094	1	\N
2673	4095	1	\N
2674	4096	1	\N
2675	4097	1	\N
2676	4098	1	\N
2677	4099	1	\N
2678	4100	1	\N
2679	4101	1	\N
2680	4102	1	\N
2681	4102	2	\N
2682	4102	3	\N
2683	4102	4	\N
2684	4103	1	\N
2685	4104	1	\N
2686	4105	1	\N
2687	4106	1	\N
2688	4107	2	\N
2689	4108	1	\N
2690	4109	2	\N
2691	4110	1	\N
2692	4111	3	\N
2693	4111	4	\N
2694	4112	1	\N
2695	4112	2	\N
2696	4112	3	\N
2697	4112	4	\N
2698	4113	1	\N
2699	4114	1	\N
2700	4114	2	\N
2701	4115	1	\N
2702	4116	1	\N
2703	4116	2	\N
2704	4116	23	\N
2705	4116	3	\N
2706	4116	24	\N
2707	4117	1	\N
2708	4117	2	\N
2709	4117	3	\N
2710	4117	4	\N
2711	4117	27	\N
2712	4117	5	\N
2713	4117	31	\N
2714	4118	1	\N
2715	4118	19	\N
2716	4118	2	\N
2717	4119	1	\N
2718	4119	2	\N
2719	4119	3	\N
2720	4119	4	\N
2721	4119	5	\N
2722	4120	1	\N
2723	4120	2	\N
2724	4121	1	\N
2725	4121	2	\N
2726	4121	3	\N
2727	4121	24	\N
2728	4122	1	\N
2729	4123	1	\N
2730	4124	1	\N
2731	4124	2	\N
2732	4125	1	\N
2733	4125	19	\N
2734	4125	2	\N
2735	4125	2	\N
2736	4126	1	\N
2737	4126	2	\N
2738	4126	23	\N
2739	4127	1	\N
2740	4128	1	\N
2741	4129	1	\N
2742	4130	1	\N
2743	4130	2	\N
2744	4130	3	\N
2745	4131	1	\N
2746	4132	1	\N
2747	4133	1	\N
2748	4134	1	\N
2749	4135	1	\N
2750	4135	2	\N
2751	4135	3	\N
2752	4134	1	\N
2753	4136	1	\N
2754	4137	1	\N
2755	4137	2	\N
2756	4137	3	\N
2757	4137	4	\N
2758	4137	5	\N
2759	4137	6	\N
2760	4137	7	\N
2761	4138	1	\N
2762	4139	1	\N
2763	4139	2	\N
2764	4139	3	\N
2765	4139	4	\N
2766	4139	5	\N
2767	4139	6	\N
2768	4139	7	\N
2769	4140	1	\N
2770	4140	2	\N
2771	4140	3	\N
2772	4141	1	\N
2773	4141	2	\N
2774	4141	3	\N
2775	4141	4	\N
2776	4141	5	\N
2777	4141	6	\N
2778	4142	1	\N
2779	4142	2	\N
2780	4143	1	\N
2781	4144	1	\N
2782	4145	1	\N
2783	4145	2	\N
2784	4146	1	\N
2785	4147	1	\N
2786	4147	2	\N
2787	4147	3	\N
2788	4148	1	\N
2789	4148	2	\N
2790	4149	1	\N
2791	4149	2	\N
2792	4149	3	\N
2793	4149	4	\N
2794	4150	1	\N
2795	4150	2	\N
2796	4150	3	\N
2797	4151	1	\N
2798	4152	1	\N
2799	4153	1	\N
2800	4153	2	\N
2801	4153	3	\N
2802	4154	1	\N
2803	4155	1	\N
2804	4156	1	\N
2805	4157	1	\N
2806	4158	1	\N
2807	4159	1	\N
2808	4160	1	\N
2809	4161	1	\N
2810	4162	1	\N
2811	4162	2	\N
2812	4163	1	\N
2813	4164	1	\N
2814	4165	1	\N
2815	4166	36	\N
2816	4167	36	\N
2817	4168	36	\N
2818	4169	36	\N
2819	4170	36	\N
2820	4171	1	\N
2821	4172	1	\N
2822	4173	1	\N
2823	4174	1	\N
2824	4098	1	\N
2825	4175	1	\N
2826	4176	1	\N
2827	4177	1	\N
2828	4178	2	\N
2829	4178	4	\N
2830	4178	5	\N
2831	4178	6	\N
2832	4179	3	\N
2833	4179	4	\N
2834	4179	5	\N
2835	4179	6	\N
2836	4180	1	\N
2837	4180	2	\N
2838	4181	1	\N
2839	4182	19	\N
2840	4182	2	\N
2841	4182	23	\N
2842	4183	1	\N
2843	4183	2	\N
2844	4183	3	\N
2845	4184	1	\N
2846	4185	2	\N
2847	4185	3	\N
2848	4186	1	\N
2849	4187	1	\N
2850	4187	16	\N
2851	4187	2	\N
2852	4187	23	\N
2853	4187	3	\N
2854	4188	1	\N
2855	4188	3	\N
2856	4188	5	\N
2857	4188	6	\N
2858	4188	7	\N
2859	4188	8	\N
2860	4189	1	\N
2861	4190	1	\N
2862	4190	2	\N
2863	4191	1	\N
2864	4192	1	\N
2865	4193	1	\N
2866	4193	2	\N
2867	4193	3	\N
2868	4193	4	\N
2869	4194	1	\N
2870	4195	1	\N
2871	4195	2	\N
2872	4195	3	\N
2873	4195	4	\N
2874	4195	5	\N
2875	4195	6	\N
2876	4195	7	\N
2877	4195	8	\N
2878	4196	8	\N
2879	4197	1	\N
2880	4197	2	\N
2881	4197	3	\N
2882	4197	5	\N
2883	4197	6	\N
2884	4198	1	\N
2885	4199	1	\N
2886	4200	1	\N
2887	4200	2	\N
2888	4201	1	\N
2889	4202	1	\N
2890	4203	1	\N
2891	4204	1	\N
2892	4205	1	\N
2893	4206	1	\N
2894	4207	1	\N
2895	4208	1	\N
2896	4209	1	\N
2897	4210	1	\N
2898	4210	2	\N
2899	4210	3	\N
2900	4211	1	\N
2901	4212	1	\N
2902	4213	1	\N
2903	4214	3	\N
2904	4214	4	\N
2905	4214	5	\N
2906	4214	6	\N
2907	4214	7	\N
2908	4214	8	\N
2909	4215	10	\N
2910	4215	11	\N
2911	4215	12	\N
2912	4215	8	\N
2913	4215	9	\N
2914	4216	1	\N
2915	4217	1	\N
2916	4217	2	\N
2917	4217	3	\N
2918	4217	4	\N
2919	4218	1	\N
2920	4218	2	\N
2921	4219	10	\N
2922	4219	21	\N
2923	4219	9	\N
2924	4220	1	\N
2925	4220	2	\N
2926	4221	1	\N
2927	4222	1	\N
2928	4222	2	\N
2929	4222	3	\N
2930	4222	4	\N
2931	4222	5	\N
2932	4223	1	\N
2933	4224	1	\N
2934	4225	1	\N
2935	4226	1	\N
2936	4227	1	\N
2937	4114	1	\N
2938	4116	1	\N
2939	4118	1	\N
2940	4228	1	\N
2941	4229	1	\N
2942	4230	1	\N
2943	4231	1	\N
2944	4201	1	\N
2945	4232	1	\N
2946	4233	1	\N
2947	4234	1	\N
2948	4234	19	\N
2949	4235	1	\N
2950	4236	1	\N
2951	4237	1	\N
2952	4238	1	\N
2953	4239	1	\N
2954	4240	1	\N
2955	4241	1	\N
2956	4242	1	\N
2957	4243	1	\N
2958	4243	2	\N
2959	4244	1	\N
2960	4244	2	\N
2961	4245	1	\N
2962	4245	2	\N
2963	4245	23	\N
2964	4246	1	\N
2965	4247	1	\N
2966	4248	1	\N
2967	4248	2	\N
2968	4248	3	\N
2969	4248	4	\N
2970	4248	28	\N
2971	4249	1	\N
2972	4249	2	\N
2973	4249	3	\N
2974	4249	4	\N
2975	4249	5	\N
2976	4249	6	\N
2977	4250	1	\N
2978	4250	2	\N
2979	4250	3	\N
2980	4250	4	\N
2981	4250	6	\N
2982	4251	1	\N
2983	4252	1	\N
2984	4252	2	\N
2985	4252	3	\N
2986	4252	4	\N
2987	4253	1	\N
2988	4254	1	\N
2989	4254	2	\N
2990	4254	3	\N
2991	4255	1	\N
2992	4256	1	\N
2993	4257	1	\N
2994	4257	2	\N
2995	4258	1	\N
2996	4259	1	\N
2997	4259	2	\N
2998	4259	3	\N
2999	4259	4	\N
3000	4259	5	\N
3001	4259	6	\N
3002	4259	7	\N
3003	4260	1	\N
3004	4260	2	\N
3005	4261	2	\N
3006	4261	3	\N
3007	4261	4	\N
3008	4261	5	\N
3009	4262	1	\N
3010	4263	1	\N
3011	4263	2	\N
3012	4263	3	\N
3013	4264	1	\N
3014	4265	2	\N
3015	4266	1	\N
3016	4266	19	\N
3017	4267	2	\N
3018	4267	3	\N
3019	4267	24	\N
3020	4268	1	\N
3021	4269	10	\N
3022	4269	1	\N
3023	4269	2	\N
3024	4269	3	\N
3025	4269	4	\N
3026	4269	5	\N
3027	4269	6	\N
3028	4269	8	\N
3029	4269	9	\N
3030	4270	1	\N
3031	4270	2	\N
3032	4270	3	\N
3033	4271	1	\N
3034	4271	3	\N
3035	4272	1	\N
3036	4273	1	\N
3037	4273	2	\N
3038	4274	1	\N
3039	4275	1	\N
3040	4275	2	\N
3041	4275	3	\N
3042	4275	4	\N
3043	4275	5	\N
3044	4275	6	\N
3045	4275	7	\N
3046	4275	8	\N
3047	4275	9	\N
3048	4276	1	\N
3049	4276	2	\N
3050	4277	1	\N
3051	4277	2	\N
3052	4277	3	\N
3053	4277	4	\N
3054	4277	5	\N
3055	4277	6	\N
3056	4277	7	\N
3057	4278	1	\N
3058	4279	1	\N
3059	4280	3	\N
3060	4280	4	\N
3061	4280	5	\N
3062	4281	1	\N
3063	4282	1	\N
3064	4282	2	\N
3065	4282	3	\N
3066	4283	1	\N
3067	4283	2	\N
3068	4284	1	\N
3069	4284	2	\N
3070	4285	1	\N
3071	4286	1	\N
3072	4286	2	\N
3073	4286	3	\N
3074	4287	1	\N
3075	4287	2	\N
3076	4287	3	\N
3077	4288	3	\N
3078	4288	4	\N
3079	4289	10	\N
3080	4289	11	\N
3081	4289	6	\N
3082	4289	7	\N
3083	4289	8	\N
3084	4289	9	\N
3085	4290	1	\N
3086	4290	2	\N
3087	4290	3	\N
3088	4290	4	\N
3089	4291	1	\N
3090	4291	2	\N
3091	4291	4	\N
3092	4292	1	\N
3093	4293	1	\N
3094	4293	2	\N
3095	4294	1	\N
3096	4295	1	\N
3097	4296	1	\N
3098	4297	1	\N
3099	4298	1	\N
3100	4298	2	\N
3101	4299	1	\N
3102	4300	1	\N
3103	4300	2	\N
3104	4301	1	\N
3105	4302	1	\N
3106	4302	2	\N
3107	4303	1	\N
3108	4304	1	\N
3109	4304	2	\N
3110	4305	1	\N
3111	4306	1	\N
3112	4306	2	\N
3113	4307	1	\N
3114	4308	1	\N
3115	4309	7	\N
3116	4310	1	\N
3117	4310	2	\N
3118	4311	1	\N
3119	4311	2	\N
3120	4312	2	\N
3121	4312	3	\N
3122	4313	12	\N
3123	4313	13	\N
3124	4313	14	\N
3125	4314	6	\N
3126	4315	1	\N
3127	4316	1	\N
3128	4316	2	\N
3129	4317	1	\N
3130	4317	2	\N
3131	4317	3	\N
3132	4318	1	\N
3133	4319	1	\N
3134	4319	2	\N
3135	4319	3	\N
3136	4319	4	\N
3137	4319	5	\N
3138	4320	1	\N
3139	4321	1	\N
3140	4322	1	\N
3141	4322	19	\N
3142	4322	2	\N
3143	4322	3	\N
3144	4323	1	\N
3145	4323	2	\N
3146	4324	1	\N
3147	4325	1	\N
3148	4325	2	\N
3149	4325	3	\N
3150	4326	1	\N
3151	4327	1	\N
3152	4328	1	\N
3153	4329	1	\N
3154	4330	1	\N
3155	4330	2	\N
3156	4330	23	\N
3157	4331	1	\N
3158	4332	1	\N
3159	4332	19	\N
3160	4333	1	\N
3161	4333	2	\N
3162	4334	1	\N
3163	4334	2	\N
3164	4335	1	\N
3165	4336	1	\N
3166	4336	2	\N
3167	4337	2	\N
3168	4338	1	\N
3169	4339	2	\N
3170	4339	3	\N
3171	4340	1	\N
3172	4341	1	\N
3173	4342	1	\N
3174	4343	1	\N
3175	4344	1	\N
3176	4345	1	\N
3177	4346	1	\N
3178	4347	2	\N
3179	4347	3	\N
3180	4347	4	\N
3181	4348	1	\N
3182	4348	2	\N
3183	4348	3	\N
3184	4349	1	\N
3185	4350	1	\N
3186	4351	1	\N
3187	4352	3	\N
3188	4353	1	\N
3189	4354	1	\N
3190	4355	1	\N
3191	4356	1	\N
3192	4357	1	\N
3193	4358	1	\N
3194	4280	1	\N
3195	4359	1	\N
3196	4360	1	\N
3197	4361	1	\N
3198	4362	1	\N
3199	4363	1	\N
3200	4364	1	\N
3201	4365	1	\N
3202	4366	1	\N
3203	4366	2	\N
3204	4367	1	\N
3205	4367	19	\N
3206	4368	1	\N
3207	4369	1	\N
3208	4370	1	\N
3209	4371	1	\N
3210	4372	1	\N
3211	4373	3	\N
3212	4374	1	\N
3213	4375	5	\N
3214	4375	6	\N
3215	4375	7	\N
3216	4376	2	\N
3217	4377	1	\N
3218	4378	1	\N
3219	4379	19	\N
3220	4380	1	\N
3221	4380	2	\N
3222	4381	1	\N
3223	4382	1	\N
3224	4383	1	\N
3225	4384	1	\N
3226	4385	1	\N
3227	4385	2	\N
3228	4386	1	\N
3229	4387	1	\N
3230	4387	2	\N
3231	4387	3	\N
3232	4388	2	\N
3233	4388	3	\N
3234	4388	4	\N
3235	4388	5	\N
3236	4388	6	\N
3237	4388	7	\N
3238	4388	35	\N
3239	4389	7	\N
3240	4390	2	\N
3241	4390	3	\N
3242	4391	1	\N
3243	4391	2	\N
3244	4391	3	\N
3245	4392	4	\N
3246	4393	1	\N
3247	4394	1	\N
3248	4395	1	\N
3249	4395	2	\N
3250	4395	3	\N
3251	4395	4	\N
3252	4396	1	\N
3253	4397	1	\N
3254	4397	2	\N
3255	4397	3	\N
3256	4397	4	\N
3257	4397	5	\N
3258	4310	1	\N
3259	4398	1	\N
3260	4398	19	\N
3261	4399	2	\N
3262	4400	1	\N
3263	4400	2	\N
3264	4401	1	\N
3265	4402	1	\N
3266	4402	2	\N
3267	4402	3	\N
3268	4402	4	\N
3269	4402	5	\N
3270	4403	1	\N
3271	4403	2	\N
3272	4404	1	\N
3273	4405	1	\N
3274	4406	1	\N
3275	4406	2	\N
3276	4406	3	\N
3277	4406	4	\N
3278	4406	5	\N
3279	4407	1	\N
3280	4408	1	\N
3281	4409	1	\N
3282	4410	1	\N
3283	4411	1	\N
3284	4412	1	\N
3285	4413	1	\N
3286	4414	1	\N
3287	4415	1	\N
3288	4416	1	\N
3289	4417	1	\N
3290	4418	1	\N
3291	4419	1	\N
3292	4420	1	\N
3293	4421	1	\N
3294	4422	1	\N
3295	4394	1	\N
3296	4423	1	\N
3297	4424	1	\N
3298	4425	1	\N
3299	4426	1	\N
3300	4427	1	\N
3301	4428	1	\N
3302	4429	1	\N
3303	4430	1	\N
3304	4431	1	\N
3305	4432	1	\N
3306	4433	1	\N
3307	4434	1	\N
3308	4435	1	\N
3309	4436	3	\N
3310	4436	4	\N
3311	4437	1	\N
3312	4438	1	\N
3313	4439	1	\N
3314	4439	2	\N
3315	4440	1	\N
3316	4441	1	\N
3317	4442	1	\N
3318	4442	2	\N
3319	4443	1	\N
3320	4443	19	\N
3321	4443	2	\N
3322	4443	23	\N
3323	4444	1	\N
3324	4444	2	\N
3325	4444	3	\N
3326	4444	4	\N
3327	4445	3	\N
3328	4446	1	\N
3329	4447	1	\N
3330	4448	1	\N
3331	4449	1	\N
3332	4450	1	\N
3333	4451	1	\N
3334	4452	2	\N
3335	4452	3	\N
3336	4453	1	\N
3337	4453	2	\N
3338	4453	23	\N
3339	4453	3	\N
3340	4454	1	\N
3341	4455	1	\N
3342	4455	19	\N
3343	4455	2	\N
3344	4456	1	\N
3345	4457	1	\N
3346	4458	1	\N
3347	4102	1	\N
3348	4459	1	\N
3349	4460	2	\N
3350	4461	1	\N
3351	4462	1	\N
3352	4463	1	\N
3353	4464	1	\N
3354	4465	1	\N
3355	4466	1	\N
3356	4467	1	\N
3357	4468	1	\N
3358	4469	1	\N
3359	4470	1	\N
3360	4470	2	\N
3361	4470	3	\N
3362	4470	4	\N
3363	4471	1	\N
3364	4471	2	\N
3365	4472	3	\N
3366	4472	4	\N
3367	4472	5	\N
3368	4473	1	\N
3369	4474	1	\N
3370	4475	2	\N
3371	4475	5	\N
3372	4476	1	\N
3373	4476	2	\N
3374	4477	2	\N
3375	4478	1	\N
3376	4478	2	\N
3377	4478	3	\N
3378	4479	1	\N
3379	4479	2	\N
3380	4479	3	\N
3381	4480	1	\N
3382	4480	2	\N
3383	4480	3	\N
3384	4480	26	\N
3385	4480	33	\N
3386	4481	1	\N
3387	4482	1	\N
3388	4482	2	\N
3389	4482	3	\N
3390	4482	4	\N
3391	4265	1	\N
3392	4265	2	\N
3393	4265	3	\N
3394	4265	4	\N
3395	4265	5	\N
3396	4265	31	\N
3397	4483	10	\N
3398	4483	11	\N
3399	4483	12	\N
3400	4483	13	\N
3401	4483	5	\N
3402	4483	6	\N
3403	4483	7	\N
3404	4483	8	\N
3405	4483	9	\N
3406	4484	1	\N
3407	4485	1	\N
3408	4485	2	\N
3409	4485	3	\N
3410	4485	4	\N
3411	4485	5	\N
3412	4485	6	\N
3413	4485	7	\N
3414	4486	1	\N
3415	4486	2	\N
3416	4487	1	\N
3417	4487	2	\N
3418	4487	23	\N
3419	4487	3	\N
3420	4487	24	\N
3421	4487	4	\N
3422	4488	18	\N
3423	4489	1	\N
3424	4489	19	\N
3425	4489	2	\N
3426	4489	3	\N
3427	4490	1	\N
3428	4491	2	\N
3429	4491	3	\N
3430	4492	1	\N
3431	4492	2	\N
3432	4492	3	\N
3433	4493	1	\N
3434	4494	2	\N
3435	4495	1	\N
3436	4496	1	\N
3437	4496	2	\N
3438	4496	3	\N
3439	4496	4	\N
3440	4497	1	\N
3441	4497	19	\N
3442	4497	2	\N
3443	4497	3	\N
3444	4497	4	\N
3445	4497	5	\N
3446	4497	6	\N
3447	4497	7	\N
3448	4498	1	\N
3449	4498	3	\N
3450	4499	1	\N
3451	4499	2	\N
3452	4500	17	\N
3453	4501	5	\N
3454	4501	6	\N
3455	4501	7	\N
3456	4502	1	\N
3457	4502	19	\N
3458	4502	2	\N
3459	4502	4	\N
3460	4503	3	\N
3461	4504	1	\N
3462	4504	2	\N
3463	4505	1	\N
3464	4506	1	\N
3465	4506	2	\N
3466	4507	1	\N
3467	4508	1	\N
3468	4508	2	\N
3469	4508	3	\N
3470	4508	4	\N
3471	4508	5	\N
3472	4508	6	\N
3473	4509	1	\N
3474	4510	2	\N
3475	4511	10	\N
3476	4511	11	\N
3477	4511	5	\N
3478	4511	6	\N
3479	4511	7	\N
3480	4511	9	\N
3481	4512	1	\N
3482	4512	2	\N
3483	4513	1	\N
3484	4514	2	\N
3485	4514	3	\N
3486	4514	24	\N
3487	4514	4	\N
3488	4515	2	\N
3489	4516	1	\N
3490	4517	1	\N
3491	4517	2	\N
3492	4517	3	\N
3493	4518	1	\N
3494	4518	2	\N
3495	4519	4	\N
3496	4520	2	\N
3497	4521	1	\N
3498	4522	1	\N
3499	4522	2	\N
3500	4523	2	\N
3501	4523	3	\N
3502	4523	4	\N
3503	4524	1	\N
3504	4524	2	\N
3505	4525	1	\N
3506	4525	2	\N
3507	4506	3	\N
3508	4526	1	\N
3509	4526	2	\N
3510	4526	3	\N
3511	4527	1	\N
3512	4528	2	\N
3513	4299	4	\N
3514	4529	1	\N
3515	4530	1	\N
3516	4531	1	\N
3517	4532	1	\N
3518	4533	1	\N
3519	4534	1	\N
3520	4535	1	\N
3521	4536	1	\N
3522	4537	1	\N
3523	4538	1	\N
3524	4538	2	\N
3525	4538	3	\N
3526	4538	4	\N
3527	4539	1	\N
3528	4540	1	\N
3529	4541	1	\N
3530	4542	1	\N
3531	4542	2	\N
3532	4543	1	\N
3533	4544	1	\N
3534	4545	1	\N
3535	4546	1	\N
3536	4547	1	\N
3537	4548	1	\N
3538	4549	1	\N
3539	4550	1	\N
3540	4551	23	\N
3541	4552	1	\N
3542	4553	1	\N
3543	4554	1	\N
3544	4555	1	\N
3545	4556	2	\N
3546	4557	1	\N
3547	4558	1	\N
3548	4559	1	\N
3549	4560	1	\N
3550	4560	2	\N
3551	4561	1	\N
3552	4562	1	\N
3553	4563	1	\N
3554	4564	1	\N
3555	4565	1	\N
3556	4566	1	\N
3557	4567	1	\N
3558	4568	3	\N
3559	4568	4	\N
3560	4569	10	\N
3561	4569	1	\N
3562	4569	2	\N
3563	4569	3	\N
3564	4569	4	\N
3565	4569	5	\N
3566	4569	6	\N
3567	4569	7	\N
3568	4569	8	\N
3569	4569	9	\N
3570	4570	2	\N
3571	4230	1	\N
3572	4571	1	\N
3573	4571	2	\N
3574	4571	3	\N
3575	4571	4	\N
3576	4571	5	\N
3577	4572	1	\N
3578	4082	1	\N
3579	4082	4	\N
3580	4082	5	\N
3581	4082	6	\N
3582	4573	10	\N
3583	4573	1	\N
3584	4573	2	\N
3585	4573	3	\N
3586	4573	4	\N
3587	4573	5	\N
3588	4573	6	\N
3589	4573	7	\N
3590	4573	8	\N
3591	4573	9	\N
3592	4574	1	\N
3593	4575	1	\N
3594	4576	1	\N
3595	4577	1	\N
3596	4577	2	\N
3597	4578	1	\N
3598	4579	2	\N
3599	4580	1	\N
3600	4581	1	\N
3601	4581	2	\N
3602	4582	1	\N
3603	4582	2	\N
3604	4069	1	\N
3605	4069	3	\N
3606	4583	1	\N
3607	4583	2	\N
3608	4583	3	\N
3609	4070	1	\N
3610	4070	2	\N
3611	4070	3	\N
3612	4070	4	\N
3613	4584	1	\N
3614	4585	1	\N
3615	4585	2	\N
3616	4585	3	\N
3617	4585	24	\N
3618	4585	4	\N
3619	4585	5	\N
3620	4586	1	\N
3621	4586	2	\N
3622	4587	1	\N
3623	4587	2	\N
3624	4587	3	\N
3625	4588	1	\N
3626	4588	2	\N
3627	4588	3	\N
3628	4588	4	\N
3629	4588	5	\N
3630	4589	1	\N
3631	4590	1	\N
3632	4590	2	\N
3633	4591	4	\N
3634	4592	1	\N
3635	4079	3	\N
3636	4593	1	\N
3637	4594	1	\N
3638	4595	1	\N
3639	4596	1	\N
3640	4597	1	\N
3641	4597	2	\N
3642	4597	3	\N
3643	4597	4	\N
3644	4597	5	\N
3645	4598	1	\N
3646	4441	1	\N
3647	4441	2	\N
3648	4441	3	\N
3649	4599	1	\N
3650	4599	2	\N
3651	4600	1	\N
3652	4600	2	\N
3653	4600	23	\N
3654	4600	3	\N
3655	4600	4	\N
3656	4600	29	\N
3657	4600	5	\N
3658	4600	6	\N
3659	4600	34	\N
3660	4602	1	\N
3661	4603	2	\N
3662	4604	1	\N
3663	4604	2	\N
3664	4605	1	\N
3665	4605	19	\N
3666	4606	3	\N
3667	4606	4	\N
3668	4606	5	\N
3669	4606	6	\N
3670	4607	3	\N
3671	4594	1	\N
3672	4594	2	\N
3673	4594	23	\N
3674	4608	3	\N
3675	4609	1	\N
3676	4609	2	\N
3677	4610	1	\N
3678	4610	2	\N
3679	4611	1	\N
3680	4611	2	\N
3681	4611	3	\N
3682	4612	1	\N
3683	4613	1	\N
3684	4614	1	\N
3685	4615	1	\N
3686	4616	1	\N
3687	4616	19	\N
3688	4617	1	\N
3689	4618	1	\N
3690	4618	2	\N
3691	4618	3	\N
3692	4618	4	\N
3693	4619	3	\N
3694	4619	24	\N
3695	4619	4	\N
3696	4619	5	\N
3697	4619	32	\N
3698	4619	6	\N
3699	4619	7	\N
3700	4621	1	\N
3701	4622	1	\N
3702	4623	1	\N
3703	4623	2	\N
3704	4623	3	\N
3705	4624	1	\N
3706	4625	1	\N
3707	4626	1	\N
3708	4627	1	\N
3709	4628	1	\N
3710	4629	1	\N
3711	4629	2	\N
3712	4267	2	\N
3713	4267	3	\N
3714	4267	4	\N
3715	4611	2	\N
3716	4611	3	\N
3717	4630	3	\N
3718	4631	1	\N
3719	4632	1	\N
3720	4632	2	\N
3721	4632	3	\N
3722	4632	4	\N
3723	4633	1	\N
3724	4634	1	\N
3725	4634	2	\N
3726	4634	3	\N
3727	4635	1	\N
3728	4636	1	\N
3729	4636	2	\N
3730	4637	1	\N
3731	4638	1	\N
3732	4639	1	\N
3733	4640	2	\N
3734	4641	1	\N
3735	4641	2	\N
3736	4642	2	\N
3737	4642	22	\N
3738	4642	23	\N
3739	4643	1	\N
3740	4644	1	\N
3741	4645	1	\N
3742	4646	1	\N
3743	4647	2	\N
3744	4648	1	\N
3745	4649	1	\N
3746	4649	2	\N
3747	4650	1	\N
3748	4651	1	\N
3749	4651	2	\N
3750	4652	1	\N
3751	4653	2	\N
3752	4653	3	\N
3753	4653	4	\N
3754	4653	5	\N
3755	4653	6	\N
3756	4654	2	\N
3757	4655	1	\N
3758	4656	1	\N
3759	4657	1	\N
3760	4658	1	\N
3761	4659	1	\N
3762	4660	1	\N
3763	4661	1	\N
3764	4662	1	\N
3765	4663	2	\N
3766	4664	1	\N
3767	4665	1	\N
3768	4666	1	\N
3769	4667	1	\N
3770	4668	1	\N
3771	4669	1	\N
3772	4670	1	\N
3773	4671	1	\N
3774	4672	1	\N
3775	4673	1	\N
3776	4674	1	\N
3777	4373	1	\N
3778	4373	2	\N
3779	4373	3	\N
3780	4675	1	\N
3781	4675	2	\N
3782	4675	3	\N
3783	4675	4	\N
3784	4675	5	\N
3785	4675	6	\N
3786	4676	1	\N
3787	4677	1	\N
3788	4677	2	\N
3789	4678	1	\N
3790	4679	1	\N
3791	4679	2	\N
3792	4679	3	\N
3793	4679	4	\N
3794	4679	5	\N
3795	4680	1	\N
3796	4681	1	\N
3797	4682	1	\N
3798	4683	1	\N
3799	4683	19	\N
3800	4683	2	\N
3801	4684	1	\N
3802	4685	1	\N
3803	4685	2	\N
3804	4685	3	\N
3805	4685	4	\N
3806	4685	27	\N
3807	4686	1	\N
3808	4687	1	\N
3809	4688	1	\N
3810	4688	2	\N
3811	4689	1	\N
3812	4690	1	\N
3813	4691	1	\N
3814	4692	1	\N
3815	4693	2	\N
3816	4693	3	\N
3817	4694	1	\N
3818	4695	1	\N
3819	4696	1	\N
3820	4697	1	\N
3821	4698	1	\N
3822	4699	1	\N
3823	4699	2	\N
3824	4699	3	\N
3825	4700	1	\N
3826	4700	2	\N
3827	4701	1	\N
3828	4701	2	\N
3829	4701	3	\N
3830	4702	1	\N
3831	4702	2	\N
3832	4702	3	\N
3833	4703	1	\N
3834	4704	1	\N
3835	4705	1	\N
3836	4706	1	\N
3837	4707	1	\N
3838	4708	1	\N
3839	4708	2	\N
3840	4708	23	\N
3841	4708	3	\N
3842	4708	4	\N
3843	4709	1	\N
3844	4709	19	\N
3845	4709	2	\N
3846	4709	3	\N
3847	4710	1	\N
3848	4710	2	\N
3849	4710	3	\N
3850	4710	4	\N
3851	4711	1	\N
3852	4711	2	\N
3853	4712	1	\N
3854	4712	2	\N
3855	4712	23	\N
3856	4713	1	\N
3857	4713	2	\N
3858	4713	3	\N
3859	4714	1	\N
3860	4714	2	\N
3861	4715	1	\N
3862	4715	2	\N
3863	4715	3	\N
3864	4715	4	\N
3865	4716	1	\N
3866	4717	1	\N
3867	4718	1	\N
3868	4719	1	\N
3869	4720	1	\N
3870	4721	1	\N
3871	4540	1	\N
3872	4722	1	\N
3873	4723	1	\N
3874	4724	1	\N
3875	4725	1	\N
3876	4726	1	\N
3877	4727	1	\N
3878	4728	1	\N
3879	4729	1	\N
3880	4730	1	\N
3881	4731	1	\N
3882	4732	1	\N
3883	4733	1	\N
3884	4734	1	\N
3885	4735	1	\N
3886	4736	1	\N
3887	4737	1	\N
3888	4738	1	\N
3889	4739	1	\N
3890	4740	1	\N
3891	4741	1	\N
3892	4279	1	\N
3893	4742	1	\N
3894	4743	1	\N
3895	4744	1	\N
3896	4745	1	\N
3897	4746	1	\N
3898	4747	1	\N
3899	4748	1	\N
3900	4749	1	\N
3901	4750	1	\N
3902	4750	3	\N
3903	4751	1	\N
3904	4752	1	\N
3905	4753	1	\N
3906	4754	2	\N
3907	4755	2	\N
3908	4756	1	\N
3909	4133	1	\N
3910	4757	1	\N
3911	4757	2	\N
3912	4758	2	\N
3913	4758	3	\N
3914	4759	1	\N
3915	4759	19	\N
3916	4759	2	\N
3917	4759	3	\N
3918	4760	1	\N
3919	4760	2	\N
3920	4761	1	\N
3921	4761	2	\N
3922	4762	1	\N
3923	4762	2	\N
3924	4762	3	\N
3925	4762	4	\N
3926	4763	1	\N
3927	4763	19	\N
3928	4764	2	\N
3929	4764	3	\N
3930	4764	4	\N
3931	4764	5	\N
3932	4764	6	\N
3933	4764	7	\N
3934	4765	1	\N
3935	4765	2	\N
3936	4765	3	\N
3937	4765	4	\N
3938	4766	1	\N
3939	4766	2	\N
3940	4766	23	\N
3941	4767	1	\N
3942	4767	2	\N
3943	4767	3	\N
3944	4768	1	\N
3945	4769	1	\N
3946	4769	2	\N
3947	4769	3	\N
3948	4769	4	\N
3949	4769	5	\N
3950	4770	1	\N
3951	4770	2	\N
3952	4770	3	\N
3953	4770	24	\N
3954	4771	1	\N
3955	4772	1	\N
3956	4773	1	\N
3957	4773	2	\N
3958	4773	3	\N
3959	4773	4	\N
3960	4774	1	\N
3961	4775	1	\N
3962	4776	1	\N
3963	4777	1	\N
3964	4778	1	\N
3965	4779	1	\N
3966	4780	1	\N
3967	4781	1	\N
3968	4782	1	\N
3969	4783	1	\N
3970	4784	10	\N
3971	4784	5	\N
3972	4784	6	\N
3973	4784	7	\N
3974	4784	8	\N
3975	4784	9	\N
3976	4769	1	\N
3977	4785	2	\N
3978	4785	3	\N
3979	4785	4	\N
3980	4785	5	\N
3981	4785	6	\N
3982	4785	7	\N
3983	4786	1	\N
3984	4787	1	\N
3985	4788	1	\N
3986	4789	1	\N
3987	4790	1	\N
3988	4790	2	\N
3989	4791	1	\N
3990	4791	2	\N
3991	4792	1	\N
3992	4792	2	\N
3993	4792	3	\N
3994	4792	4	\N
3995	4793	1	\N
3996	4793	2	\N
3997	4793	3	\N
3998	4794	2	\N
3999	4795	3	\N
4000	4796	1	\N
4001	4797	1	\N
4002	4798	1	\N
4003	4799	1	\N
4004	4800	1	\N
4005	4801	1	\N
4006	4802	1	\N
4007	4803	1	\N
4008	4804	1	\N
4009	4805	5	\N
4010	4805	6	\N
4011	4102	1	\N
4012	4806	1	\N
4013	4807	1	\N
4014	4808	1	\N
4015	4809	1	\N
4016	4810	1	\N
4017	4811	1	\N
4018	4812	1	\N
4019	4134	2	\N
4020	4134	3	\N
4021	4134	4	\N
4022	4813	1	\N
4023	4814	6	\N
4024	4814	7	\N
4025	4814	8	\N
4026	4137	1	\N
4027	4137	2	\N
4028	4137	3	\N
4029	4137	4	\N
4030	4139	1	\N
4031	4139	2	\N
4032	4139	3	\N
4033	4815	4	\N
4034	4815	5	\N
4035	4815	6	\N
4036	4140	1	\N
4037	4140	2	\N
4038	4140	3	\N
4039	4816	6	\N
4040	4817	3	\N
4041	4817	4	\N
4042	4817	5	\N
4043	4818	3	\N
4044	4819	1	\N
4045	4820	1	\N
4046	4821	1	\N
4047	4821	2	\N
4048	4822	1	\N
4049	4823	1	\N
4050	4823	2	\N
4051	4824	1	\N
4052	4825	2	\N
4053	4825	3	\N
4054	4825	4	\N
4055	4826	1	\N
4056	4826	2	\N
4057	4827	1	\N
4058	4828	1	\N
4059	4828	2	\N
4060	4829	1	\N
4061	4830	1	\N
4062	4831	1	\N
4063	4831	2	\N
4064	4831	3	\N
4065	4832	1	\N
4066	4832	2	\N
4067	4833	1	\N
4068	4834	1	\N
4069	4835	1	\N
4070	4835	2	\N
4071	4835	3	\N
4072	4835	4	\N
4073	4836	1	\N
4074	4837	3	\N
4075	4838	1	\N
4076	4817	1	\N
4077	4817	2	\N
4078	4817	3	\N
4079	4839	1	\N
4080	4839	2	\N
4081	4840	1	\N
4082	4840	2	\N
4083	4841	1	\N
4084	4841	2	\N
4085	4841	23	\N
4086	4066	1	\N
4087	4066	2	\N
4088	4066	3	\N
4089	4842	1	\N
4090	4842	2	\N
4091	4842	3	\N
4092	4842	4	\N
4093	4843	1	\N
4094	4844	1	\N
4095	4844	2	\N
4096	4844	3	\N
4097	4844	4	\N
4098	4844	5	\N
4099	4845	1	\N
4100	4846	1	\N
4101	4847	1	\N
4102	4848	1	\N
4103	4848	2	\N
4104	4849	1	\N
4105	4849	19	\N
4106	4850	1	\N
4107	4851	1	\N
4108	4851	2	\N
4109	4098	1	\N
4110	4267	1	\N
4111	4267	2	\N
4112	4852	1	\N
4113	4853	1	\N
4114	4853	2	\N
4115	4854	1	\N
4116	4855	1	\N
4117	4855	19	\N
4118	4550	2	\N
4119	4550	3	\N
4120	4550	4	\N
4121	4550	5	\N
4122	4550	34	\N
4123	4856	2	\N
4124	4856	3	\N
4125	4856	4	\N
4126	4856	5	\N
4127	4856	6	\N
4128	4857	1	\N
4129	4858	1	\N
4130	4858	2	\N
4131	4859	1	\N
4132	4860	1	\N
4133	4860	2	\N
4134	4860	3	\N
4135	4861	1	\N
4136	4862	1	\N
4137	4863	1	\N
4138	4863	2	\N
4139	4863	3	\N
4140	4864	1	\N
4141	4865	1	\N
4142	4866	1	\N
4143	4867	2	\N
4144	4867	3	\N
4145	4474	1	\N
4146	4474	3	\N
4147	4474	4	\N
4148	4474	6	\N
4149	4474	7	\N
4150	4474	8	\N
4151	4868	1	\N
4152	4868	2	\N
4153	4868	3	\N
4154	4868	4	\N
4155	4869	1	\N
4156	4870	1	\N
4157	4870	2	\N
4158	4871	1	\N
4159	4872	2	\N
4160	4872	3	\N
4161	4873	7	\N
4162	4874	1	\N
4163	4874	2	\N
4164	4874	3	\N
4165	4875	1	\N
4166	4875	2	\N
4167	4875	3	\N
4168	4875	4	\N
4169	4875	5	\N
4170	4876	2	\N
4171	4877	1	\N
4172	4877	2	\N
4173	4877	3	\N
4174	4878	1	\N
4175	4878	2	\N
4176	4139	1	\N
4177	4140	1	\N
4178	4879	1	\N
4179	4880	1	\N
4180	4880	2	\N
4181	4881	1	\N
4182	4881	2	\N
4183	4881	3	\N
4184	4882	1	\N
4185	4882	2	\N
4186	4883	1	\N
4187	4884	1	\N
4188	4885	3	\N
4189	4885	4	\N
4190	4886	19	\N
4191	4887	3	\N
4192	4389	2	\N
4193	4389	23	\N
4194	4389	30	\N
4195	4888	4	\N
4196	4889	1	\N
4197	4889	2	\N
4198	4890	1	\N
4199	4890	2	\N
4200	4890	3	\N
4201	4890	4	\N
4202	4891	1	\N
4203	4892	1	\N
4204	4893	1	\N
4205	4894	6	\N
4206	4894	7	\N
4207	4894	8	\N
4208	4894	9	\N
4209	4895	1	\N
4210	4896	1	\N
4211	4897	3	\N
4212	4897	4	\N
4213	4897	5	\N
4214	4897	31	\N
4215	4898	3	\N
4216	4899	10	\N
4217	4899	8	\N
4218	4899	9	\N
4219	4900	2	\N
4220	4901	5	\N
4221	4901	6	\N
4222	4902	1	\N
4223	4902	2	\N
4224	4902	23	\N
4225	4902	3	\N
4226	4902	4	\N
4227	4903	1	\N
4228	4903	2	\N
4229	4903	3	\N
4230	4903	4	\N
4231	4904	1	\N
4232	4905	1	\N
4233	4905	2	\N
4234	4905	3	\N
4235	4906	1	\N
4236	4907	19	\N
4237	4907	2	\N
4238	4907	23	\N
4239	4908	1	\N
4240	4909	1	\N
4241	4910	1	\N
4242	4911	1	\N
4243	4912	1	\N
4244	4913	2	\N
4245	4914	1	\N
4246	4914	2	\N
4247	4915	1	\N
4248	4916	1	\N
4249	4917	1	\N
4250	4918	1	\N
4251	4918	2	\N
4252	4919	2	\N
4253	4920	1	\N
4254	4920	2	\N
4255	4920	3	\N
4256	4920	4	\N
4257	4921	1	\N
4258	4922	11	\N
4259	4922	12	\N
4260	4922	14	\N
4261	4923	3	\N
4262	4924	1	\N
4263	4925	2	\N
4264	4926	1	\N
4265	4927	1	\N
4266	4927	19	\N
4267	4927	2	\N
4268	4928	1	\N
4269	4929	1	\N
4270	4929	2	\N
4271	4930	1	\N
4272	4931	2	\N
4273	4931	3	\N
4274	4931	4	\N
4275	4931	5	\N
4276	4931	6	\N
4277	4931	7	\N
4278	4931	8	\N
4279	4932	1	\N
4280	4932	2	\N
4281	4932	3	\N
4282	4932	4	\N
4283	4932	5	\N
4284	4933	1	\N
4285	4933	2	\N
4286	4933	3	\N
4287	4934	1	\N
4288	4935	1	\N
4289	4936	1	\N
4290	4937	1	\N
4291	4937	2	\N
4292	4937	3	\N
4293	4938	1	\N
4294	4938	2	\N
4295	4939	1	\N
4296	4939	2	\N
4297	4939	3	\N
4298	4939	4	\N
4299	4940	4	\N
4300	4940	5	\N
4301	4940	6	\N
4302	4941	2	\N
4303	4942	1	\N
4304	4943	2	\N
4305	4944	1	\N
4306	4944	2	\N
4307	4944	23	\N
4308	4944	3	\N
4309	4945	1	\N
4310	4945	19	\N
4311	4945	2	\N
4312	4945	23	\N
4313	4946	1	\N
4314	4946	2	\N
4315	4946	3	\N
4316	4946	4	\N
4317	4947	1	\N
4318	4948	1	\N
4319	4948	2	\N
4320	4948	3	\N
4321	4948	4	\N
4322	4948	5	\N
4323	4948	6	\N
4324	4949	4	\N
4325	4950	5	\N
4326	4950	6	\N
4327	4950	7	\N
4328	4950	8	\N
4329	4951	1	\N
4330	4951	2	\N
4331	4951	3	\N
4332	4952	1	\N
4333	4952	2	\N
4334	4952	3	\N
4335	4953	1	\N
4336	4953	2	\N
4337	4954	1	\N
4338	4954	2	\N
4339	4954	3	\N
4340	4955	1	\N
4341	4956	1	\N
4342	4957	1	\N
4343	4958	1	\N
4344	4958	2	\N
4345	4958	3	\N
4346	4959	1	\N
4347	4959	2	\N
4348	4960	1	\N
4349	4961	1	\N
4350	4962	1	\N
4351	4962	2	\N
4352	4963	1	\N
4353	4963	2	\N
4354	4963	3	\N
4355	4964	3	\N
4356	4964	4	\N
4357	4964	5	\N
4358	4964	6	\N
4359	4965	10	\N
4360	4965	6	\N
4361	4965	7	\N
4362	4965	8	\N
4363	4965	9	\N
4364	4966	1	\N
4365	4967	10	\N
4366	4967	11	\N
4367	4967	12	\N
4368	4967	9	\N
4369	4968	2	\N
4370	4969	1	\N
4371	4969	2	\N
4372	4970	2	\N
4373	4970	3	\N
4374	4970	4	\N
4375	4971	1	\N
4376	4972	1	\N
4377	4972	2	\N
4378	4973	1	\N
4379	4974	1	\N
4380	4975	3	\N
4381	4976	1	\N
4382	4976	2	\N
4383	4976	3	\N
4384	4976	4	\N
4385	4976	5	\N
4386	4977	1	\N
4387	4978	2	\N
4388	4978	3	\N
4389	4978	4	\N
4390	4978	5	\N
4391	4979	2	\N
4392	4979	3	\N
4393	4979	4	\N
4394	4979	5	\N
4395	4979	6	\N
4396	4980	1	\N
4397	4981	2	\N
4398	4982	1	\N
4399	4098	1	\N
4400	4983	1	\N
4401	4983	19	\N
4402	4983	2	\N
4403	4984	5	\N
4404	4985	1	\N
4405	4986	1	\N
4406	4986	2	\N
4407	4987	1	\N
4408	4987	19	\N
4409	4873	2	\N
4410	4988	23	\N
4411	4988	3	\N
4412	4968	1	\N
4413	4968	2	\N
4414	4989	1	\N
4415	4990	1	\N
4416	4991	2	\N
4417	4992	1	\N
4418	4992	2	\N
4419	4992	3	\N
4420	4992	24	\N
4421	4993	1	\N
4422	4993	2	\N
4423	4993	3	\N
4424	4994	1	\N
4425	4994	2	\N
4426	4994	3	\N
4427	4994	24	\N
4428	4995	1	\N
4429	4996	1	\N
4430	4997	2	\N
4431	4998	1	\N
4432	4999	1	\N
4433	5000	1	\N
4434	5001	1	\N
4435	5002	1	\N
4436	5002	19	\N
4437	5003	1	\N
4438	4415	1	\N
4439	4415	2	\N
4440	5004	1	\N
4441	5004	2	\N
4442	5005	1	\N
4443	5005	19	\N
4444	5006	1	\N
4445	5007	1	\N
4446	5008	1	\N
4447	5009	1	\N
4448	5009	2	\N
4449	5010	1	\N
4450	5011	1	\N
4451	5012	1	\N
4452	5013	1	\N
4453	5014	1	\N
4454	5015	1	\N
4455	5016	1	\N
4456	5016	2	\N
4457	5017	1	\N
4458	5017	2	\N
4459	5018	1	\N
4460	5018	2	\N
4461	5019	1	\N
4462	5020	1	\N
4463	5021	1	\N
4464	5022	1	\N
4465	5023	1	\N
4466	5024	1	\N
4467	5024	2	\N
4468	5024	23	\N
4469	5025	1	\N
4470	5025	2	\N
4471	5025	3	\N
4472	5026	1	\N
4473	5027	1	\N
4474	5027	19	\N
4475	5027	2	\N
4476	5027	23	\N
4477	5027	3	\N
4478	5028	1	\N
4479	5029	1	\N
4480	5030	1	\N
4481	5031	1	\N
4482	5032	3	\N
4483	5033	1	\N
4484	5034	1	\N
4485	5035	1	\N
4486	5036	1	\N
4487	5037	1	\N
4488	5037	2	\N
4489	5037	4	\N
4490	5038	3	\N
4491	5039	1	\N
4492	5040	1	\N
4493	5041	3	\N
4494	5041	4	\N
4495	5042	1	\N
4496	5043	1	\N
4497	5044	1	\N
4498	5045	1	\N
4499	5046	1	\N
4500	5047	10	\N
4501	5047	5	\N
4502	5047	6	\N
4503	5047	7	\N
4504	5047	8	\N
4505	5047	9	\N
4506	5048	3	\N
4507	5048	4	\N
4508	5048	5	\N
4509	5049	1	\N
4510	5050	2	\N
4511	5050	3	\N
4512	5050	4	\N
4513	5051	1	\N
4514	4204	1	\N
4515	5052	1	\N
4516	5053	1	\N
4517	5054	2	\N
4518	5054	3	\N
4519	5054	4	\N
4520	5054	5	\N
4521	5054	6	\N
4522	5054	7	\N
4523	5055	1	\N
4524	5055	3	\N
4525	5055	4	\N
4526	5055	5	\N
4527	5056	1	\N
4528	4893	2	\N
4529	4893	5	\N
4530	5057	3	\N
4531	5057	4	\N
4532	5057	5	\N
4533	5057	6	\N
4534	5058	1	\N
4535	5058	2	\N
4536	5059	5	\N
4537	5060	1	\N
4538	5061	1	\N
4539	5062	1	\N
4540	5063	1	\N
4541	5064	1	\N
4542	5065	2	\N
4543	5065	3	\N
4544	5066	1	\N
4545	5066	2	\N
4546	5067	1	\N
4547	5068	1	\N
4548	5069	1	\N
4549	5069	2	\N
4550	5070	2	\N
4551	5071	1	\N
4552	5071	2	\N
4553	5072	1	\N
4554	5073	1	\N
4555	5074	1	\N
4556	5075	1	\N
4557	5076	1	\N
4558	5077	1	\N
4559	5078	1	\N
4560	5078	2	\N
4561	5078	3	\N
4562	5079	1	\N
4563	5079	2	\N
4564	5079	3	\N
4565	5080	2	\N
4566	5081	1	\N
4567	5082	1	\N
4568	5082	2	\N
4569	5083	1	\N
4570	5084	1	\N
4571	5085	1	\N
4572	5086	1	\N
4573	5087	1	\N
4574	4529	1	\N
4575	5088	1	\N
4576	5089	1	\N
4577	5090	1	\N
4578	5091	2	\N
4579	5091	3	\N
4580	5091	4	\N
4581	5091	5	\N
4582	5092	1	\N
4583	5092	19	\N
4584	5093	3	\N
4585	5093	4	\N
4586	5093	5	\N
4587	5094	1	\N
4588	5095	1	\N
4589	5096	1	\N
4590	5096	2	\N
4591	5097	1	\N
4592	5098	1	\N
4593	5098	2	\N
4594	5099	1	\N
4595	5099	2	\N
4596	5099	3	\N
4597	5100	1	\N
4598	4399	4	\N
4599	5101	1	\N
4600	5101	2	\N
4601	5101	23	\N
4602	5101	3	\N
4603	5101	4	\N
4604	5102	1	\N
4605	5102	2	\N
4606	5102	3	\N
4607	5102	4	\N
4608	5103	1	\N
4609	5104	1	\N
4610	5105	1	\N
4611	5106	1	\N
4612	5107	1	\N
4613	5107	2	\N
4614	5108	1	\N
4615	5108	19	\N
4616	5108	2	\N
4617	5108	3	\N
4618	5108	4	\N
4619	5109	19	\N
4620	5109	2	\N
4621	5109	3	\N
4622	5109	4	\N
4623	5110	1	\N
4624	5111	1	\N
4625	5111	2	\N
4626	5111	3	\N
4627	5112	1	\N
4628	5112	2	\N
4629	5112	3	\N
4630	5113	1	\N
4631	5114	1	\N
4632	5115	1	\N
4633	5116	1	\N
4634	5117	1	\N
4635	5118	1	\N
4636	5119	1	\N
4637	5120	1	\N
4638	5120	2	\N
4639	5121	1	\N
4640	5121	6	\N
4641	5122	1	\N
4642	5123	1	\N
4643	4300	3	\N
4644	5124	2	\N
4645	4371	1	\N
4646	5125	1	\N
4647	4094	1	\N
4648	5126	1	\N
4649	5127	1	\N
4650	5128	1	\N
4651	5128	2	\N
4652	5129	1	\N
4653	5129	2	\N
4654	5129	23	\N
4655	5130	1	\N
4656	5130	19	\N
4657	5130	2	\N
4658	5130	23	\N
4659	5131	1	\N
4660	5132	1	\N
4661	5026	1	\N
4662	5133	1	\N
4663	5134	1	\N
4664	5135	1	\N
4665	4774	1	\N
4666	4774	2	\N
4667	4774	3	\N
4668	5136	1	\N
4669	4550	1	\N
4670	4550	2	\N
4671	4550	3	\N
4672	5137	1	\N
4673	4856	1	\N
4674	5138	1	\N
4675	5139	1	\N
4676	4318	1	\N
4677	5140	1	\N
4678	5140	2	\N
4679	5141	1	\N
4680	5142	1	\N
4681	5143	1	\N
4682	5143	19	\N
4683	5144	1	\N
4684	4306	1	\N
4685	4306	2	\N
4686	5145	1	\N
4687	5146	1	\N
4688	5146	2	\N
4689	5146	3	\N
4690	5146	4	\N
4691	5147	1	\N
4692	5147	2	\N
4693	5147	3	\N
4694	5148	1	\N
4695	5149	1	\N
4696	5150	1	\N
4697	5150	2	\N
4698	5150	3	\N
4699	5150	4	\N
4700	5151	1	\N
4701	5152	1	\N
4702	5152	2	\N
4703	5152	3	\N
4704	5152	24	\N
4705	5153	1	\N
4706	5154	1	\N
4707	5155	1	\N
4708	5156	1	\N
4709	5157	1	\N
4710	5158	1	\N
4711	5158	2	\N
4712	5158	23	\N
4713	5158	3	\N
4714	5158	24	\N
4715	5159	1	\N
4716	5160	1	\N
4717	5161	1	\N
4718	5162	1	\N
4719	5162	2	\N
4720	5162	3	\N
4721	5163	1	\N
4722	5163	19	\N
4723	5164	1	\N
4724	5164	2	\N
4725	5165	1	\N
4726	5165	2	\N
4727	5165	3	\N
4728	5166	1	\N
4729	5167	1	\N
4730	5168	1	\N
4731	5168	19	\N
4732	5169	1	\N
4733	5169	2	\N
4734	5169	3	\N
4735	5169	24	\N
4736	5169	4	\N
4737	5170	1	\N
4738	5171	1	\N
4739	5172	1	\N
4740	5172	19	\N
4741	5172	2	\N
4742	5173	1	\N
4743	5174	1	\N
4744	5174	19	\N
4745	5175	1	\N
4746	5176	1	\N
4747	5177	1	\N
4748	5177	2	\N
4749	5177	3	\N
4750	5177	4	\N
4751	5177	5	\N
4752	5178	1	\N
4753	5178	2	\N
4754	5178	3	\N
4755	5178	4	\N
4756	5178	5	\N
4757	5179	2	\N
4758	5179	3	\N
4759	5180	1	\N
4760	5180	2	\N
4761	5180	3	\N
4762	5180	4	\N
4763	5180	5	\N
4764	5180	6	\N
4765	5181	1	\N
4766	5182	1	\N
4767	5182	2	\N
4768	5182	3	\N
4769	5182	4	\N
4770	5182	5	\N
4771	5183	1	\N
4772	5184	1	\N
4773	5184	19	\N
4774	5185	1	\N
4775	5185	2	\N
4776	5186	5	\N
4777	5186	7	\N
4778	5187	1	\N
4779	5187	2	\N
4780	5188	1	\N
4781	5189	1	\N
4782	5189	2	\N
4783	5189	3	\N
4784	5190	2	\N
4785	5190	3	\N
4786	5190	4	\N
4787	5191	1	\N
4788	5192	1	\N
4789	5193	1	\N
4790	5193	2	\N
4791	5194	1	\N
4792	5195	1	\N
4793	5195	2	\N
4794	5195	3	\N
4795	5195	4	\N
4796	5196	1	\N
4797	5196	2	\N
4798	5196	3	\N
4799	5196	4	\N
4800	5197	1	\N
4801	5198	1	\N
4802	5199	2	\N
4803	5200	1	\N
4804	4524	1	\N
4805	5201	1	\N
4806	5202	1	\N
4807	4690	1	\N
4808	5203	1	\N
4809	5204	1	\N
4810	5205	1	\N
4811	5206	1	\N
4812	5207	1	\N
4813	5207	2	\N
4814	5207	3	\N
4815	5207	4	\N
4816	5207	5	\N
4817	5207	31	\N
4818	5208	1	\N
4819	5209	1	\N
4820	5209	19	\N
4821	5210	1	\N
4822	5210	2	\N
4823	5211	1	\N
4824	5211	3	\N
4825	5211	4	\N
4826	5211	5	\N
4827	5212	1	\N
4828	5212	2	\N
4829	5212	3	\N
4830	5212	24	\N
4831	5213	1	\N
4832	5213	2	\N
4833	5214	1	\N
4834	5215	3	\N
4835	5215	4	\N
4836	5215	5	\N
4837	5215	6	\N
4838	5215	7	\N
4839	5215	8	\N
4840	5216	1	\N
4841	5216	5	\N
4842	5216	6	\N
4843	5216	7	\N
4844	5217	1	\N
4845	5217	2	\N
4846	5217	3	\N
4847	5217	4	\N
4848	5217	5	\N
4849	5217	6	\N
4850	5217	7	\N
4851	5218	4	\N
4852	5219	10	\N
4853	5219	11	\N
4854	5219	12	\N
4855	5219	4	\N
4856	5219	5	\N
4857	5219	6	\N
4858	5219	7	\N
4859	5219	8	\N
4860	5219	9	\N
4861	5220	2	\N
4862	5220	3	\N
4863	5220	4	\N
4864	5221	12	\N
4865	5221	13	\N
4866	5221	14	\N
4867	5221	6	\N
4868	5221	8	\N
4869	5222	1	\N
4870	5223	1	\N
4871	5224	1	\N
4872	5225	1	\N
4873	5226	1	\N
4874	5227	1	\N
4875	5228	2	\N
4876	5228	4	\N
4877	5228	5	\N
4878	5229	1	\N
4879	5229	2	\N
4880	5229	23	\N
4881	5229	3	\N
4882	5229	24	\N
4883	5230	2	\N
4884	5230	5	\N
4885	5230	7	\N
4886	5230	8	\N
4887	5231	1	\N
4888	5232	2	\N
4889	5233	4	\N
4890	5233	5	\N
4891	5233	6	\N
4892	5233	7	\N
4893	5233	35	\N
4894	5234	2	\N
4895	5234	3	\N
4896	5234	4	\N
4897	5234	25	\N
4898	5234	27	\N
4899	4616	1	\N
4900	4616	2	\N
4901	5235	1	\N
4902	5235	2	\N
4903	5235	3	\N
4904	5236	1	\N
4905	5236	2	\N
4906	4690	2	\N
4907	5237	1	\N
4908	5237	2	\N
4909	5238	1	\N
4910	5238	2	\N
4911	5238	3	\N
4912	5238	4	\N
4913	5239	1	\N
4914	5240	1	\N
4915	5241	1	\N
4916	5241	2	\N
4917	5241	3	\N
4918	5241	4	\N
4919	5241	27	\N
4920	5241	5	\N
4921	5242	1	\N
4922	5242	2	\N
4923	5242	23	\N
4924	5243	1	\N
4925	5243	2	\N
4926	5243	3	\N
4927	5244	1	\N
4928	5244	2	\N
4929	5245	3	\N
4930	5245	5	\N
4931	5246	2	\N
4932	5247	1	\N
4933	5247	2	\N
4934	5248	2	\N
4935	5249	1	\N
4936	5250	1	\N
4937	5250	19	\N
4938	5251	2	\N
4939	5252	1	\N
4940	5252	2	\N
4941	5252	3	\N
4942	5253	1	\N
4943	5254	1	\N
4944	5255	1	\N
4945	5256	4	\N
4946	5256	5	\N
4947	5257	1	\N
4948	5258	1	\N
4949	5259	1	\N
4950	4689	19	\N
4951	5260	1	\N
4952	5261	1	\N
4953	5262	1	\N
4954	5263	3	\N
4955	5264	1	\N
4956	5264	2	\N
4957	5264	23	\N
4958	5264	3	\N
4959	5265	1	\N
4960	5265	19	\N
4961	5266	2	\N
4962	5266	3	\N
4963	5266	24	\N
4964	5266	4	\N
4965	5267	1	\N
4966	5268	1	\N
4967	5268	2	\N
4968	5269	1	\N
4969	5270	1	\N
4970	5271	2	\N
4971	5272	1	\N
4972	5272	2	\N
4973	5272	3	\N
4974	5272	4	\N
4975	5272	5	\N
4976	5272	6	\N
4977	5272	7	\N
4978	5273	1	\N
4979	5274	1	\N
4980	5275	2	\N
4981	5276	1	\N
4982	5277	2	\N
4983	5277	3	\N
4984	5277	4	\N
4985	5277	5	\N
4986	5277	6	\N
4987	5277	7	\N
4988	5278	2	\N
4989	5279	1	\N
4990	5280	1	\N
4991	5280	2	\N
4992	5281	1	\N
4993	5282	1	\N
4994	5283	2	\N
4995	5283	3	\N
4996	5283	4	\N
4997	5283	5	\N
4998	5283	31	\N
4999	5283	6	\N
5000	5283	7	\N
5001	5283	8	\N
5002	5284	1	\N
5003	5284	19	\N
5004	5285	2	\N
5005	5285	3	\N
5006	5285	24	\N
5007	5285	4	\N
5008	5285	27	\N
5009	5285	5	\N
5010	5285	6	\N
5011	5286	1	\N
5012	5287	1	\N
5013	5287	2	\N
5014	5287	3	\N
5015	5287	4	\N
5016	5287	5	\N
5017	5287	31	\N
5018	5288	2	\N
5019	5288	3	\N
5020	5289	1	\N
5021	5289	19	\N
5022	5289	2	\N
5023	5290	1	\N
5024	5291	1	\N
5025	5292	1	\N
5026	5293	1	\N
5027	5294	1	\N
5028	5294	2	\N
5029	5295	1	\N
5030	5295	2	\N
5031	5295	3	\N
5032	5296	1	\N
5033	5296	19	\N
5034	5296	20	\N
5035	5296	2	\N
5036	5297	2	\N
5037	5297	3	\N
5038	5297	4	\N
5039	5297	5	\N
5040	5297	31	\N
5041	5297	6	\N
5042	5298	1	\N
5043	5299	1	\N
5044	5299	2	\N
5045	5300	1	\N
5046	5301	1	\N
5047	5302	1	\N
5048	5303	1	\N
5049	5304	1	\N
5050	5305	1	\N
5051	5306	1	\N
5052	5307	1	\N
5053	5128	1	\N
5054	5308	1	\N
5055	5309	1	\N
5056	5310	1	\N
5057	5311	1	\N
5058	5311	19	\N
5059	5312	1	\N
5060	5312	2	\N
5061	5312	23	\N
5062	5313	1	\N
5063	5313	3	\N
5064	5314	1	\N
5065	5314	2	\N
5066	5315	1	\N
5067	5315	2	\N
5068	5315	3	\N
5069	5316	1	\N
5070	5317	1	\N
5071	5317	2	\N
5072	5318	1	\N
5073	5319	1	\N
5074	5319	2	\N
5075	5319	23	\N
5076	5320	1	\N
5077	5321	1	\N
5078	5321	2	\N
5079	5322	1	\N
5080	5322	2	\N
5081	5322	3	\N
5082	5323	1	\N
5083	5324	1	\N
5084	5325	1	\N
5085	5325	2	\N
5086	5326	1	\N
5087	5326	2	\N
5088	5327	1	\N
5089	4166	1	\N
5090	4166	2	\N
5091	5328	1	\N
5092	5329	1	\N
5093	4267	1	\N
5094	5330	1	\N
5095	5330	2	\N
5096	5330	3	\N
5097	5331	1	\N
5098	5331	2	\N
5099	4318	2	\N
5100	5332	1	\N
5101	5333	1	\N
5102	5333	2	\N
5103	5334	1	\N
5104	5335	1	\N
5105	5336	1	\N
5106	5337	1	\N
5107	5337	2	\N
5108	5337	3	\N
5109	5338	1	\N
5110	5339	1	\N
5111	5340	2	\N
5112	5245	2	\N
5113	5245	4	\N
5114	5341	1	\N
5115	5246	1	\N
5116	5246	3	\N
5117	5342	2	\N
5118	5342	3	\N
5119	5342	4	\N
5120	5342	5	\N
2617	4058	1	AMC_AMX_1_gen
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
4058	amx	6
4059	ambassador	6
4060	eagle	6
4061	hornet	6
4062	javelin	6
4063	rambler ambassador	6
4064	rambler american	6
4065	rambler classic	6
4066	cl	1
4067	el	1
4068	ilx	1
4069	integra	1
4070	legend	1
4071	mdx	1
4072	nsx	1
4073	rdx	1
4074	rl	1
4075	slx	1
4076	tlx	1
4077	tl	1
4078	tsx	1
4079	vigor	1
4080	zdx	1
4081	a721	2
4082	city	2
4083	crossline	2
4084	crossover	2
4085	mega	2
4086	scouty	2
4087	146	3
4088	147	3
4089	156	3
4090	159	3
4091	164	3
4092	166	3
4093	4c	3
4094	75	3
4095	alfetta	3
4096	brera	3
4097	gtv	3
4098	gt	3
4099	giulia	3
4100	giulietta	3
4101	mito	3
4102	spider	3
4103	stelvio	3
4104	a110	4
4105	db11	7
4106	db9	7
4107	dbs	7
4108	rapide	7
4109	vanquish	7
4110	vantage	7
4111	100	8
4112	80	8
4113	90	8
4114	a1	8
4115	a2	8
4116	a3	8
4117	a4	8
4118	a5	8
4119	a6	8
4120	a7	8
4121	a8	8
4122	e tron	8
4123	q2	8
4124	q3	8
4125	q5	8
4126	q7	8
4127	q8	8
4128	quattro	8
4129	r8	8
4130	tt	8
4131	crane	9
4132	bianchina	10
4133	y10	10
4134	2	17
4135	1	17
4136	2 mpv	17
4137	3	17
4138	4	17
4139	5	17
4140	6	17
4141	7	17
4142	8	17
4143	i3	17
4144	i8	17
4145	x1	17
4146	x2	17
4147	x3	17
4148	x4	17
4149	x5	17
4150	x6	17
4151	x7	17
4152	z3	17
4153	z4	17
4154	510	11
4155	560	11
4156	630	11
4157	730	11
4158	arnage	12
4159	bentayga	12
4160	brooklands	12
4161	continental flying spur	12
4162	continental gt	12
4163	mulsanne	12
4164	turbo r	12
4165	b30	13
4166	\N	14
4167	cruiser	15
4168	scooter	15
4169	sport	15
4170	touring	15
4171	bearcat	16
4172	a 091	18
4173	a o92	18
4174	t90110	18
4175	bs4	20
4176	apollo	21
4177	centurion	21
4178	century	21
4179	electra	21
4180	enclave	21
4181	encore	21
4182	excelle	21
4183	gl8	21
4184	gran sport	21
4185	grand national	21
4186	invicta	21
4187	lacrosse	21
4188	le sabre	21
4189	lucerne	21
4190	park avenue	21
4191	rainier	21
4192	reatta	21
4193	regal	21
4194	rendezvous	21
4195	riviera	21
4196	roadmaster	21
4197	skylark	21
4198	terraza	21
4199	verano	21
4200	wildcat	21
4201	e5	22
4202	f0	22
4203	f3	22
4204	g5	22
4205	tang	22
4206	ats	23
4207	allante	23
4208	brougham	23
4209	ct6	23
4210	cts	23
4211	calais	23
4212	cimarron	23
4213	dts	23
4214	de ville	23
4215	eldorado	23
4216	elr	23
4217	escalade	23
4218	fleetwood	23
4219	fleetwood 75	23
4220	srx	23
4221	sts	23
4222	seville	23
4223	xlr	23
4224	xt5	23
4225	xts	23
4226	a13	24
4227	a15	24
4228	arrizo 3	24
4229	arrizo 7	24
4230	beat	24
4231	e3	24
4232	karry	24
4233	qq6	24
4234	qq	24
4235	tiggo	24
4236	tiggo 2	24
4237	tiggo 3	24
4238	tiggo 3xe	24
4239	tiggo 5	24
4240	tiggo 5x	24
4241	tiggo 7	24
4242	tiggo 8	24
4243	astro	25
4244	avalanche	25
4245	aveo	25
4246	beretta	25
4247	bolt	25
4248	c k	25
4249	camaro	25
4250	caprice	25
4251	captiva	25
4252	cavalier	25
4253	celebrity	25
4254	chevelle	25
4255	chevette	25
4256	cobalt	25
4257	colorado	25
4258	corsica	25
4259	corvette	25
4260	cruze	25
4261	el camino	25
4262	epica	25
4263	equinox	25
4264	evanda	25
4265	explorer	25
4266	express	25
4267	g	25
4268	hhr	25
4269	impala	25
4270	k5 blazer	25
4271	kodiak	25
4272	lacetti	25
4273	lumina	25
4274	lumina apv	25
4275	malibu	25
4276	metro	25
4277	montecarlo	25
4278	monza	25
4279	niva	25
4280	nova	25
4281	orlando	25
4282	prizm	25
4283	s10	25
4284	s10 blazer	25
4285	ssr	25
4286	sail	25
4287	silverado	25
4288	spark	25
4289	suburban	25
4290	tahoe	25
4291	tracker	25
4292	trailblazer	25
4293	traverse	25
4294	trax	25
4295	uplander	25
4296	vega	25
4297	venture	25
4298	volt	25
4299	yukon	25
4300	200	26
4301	300m	26
4302	300	26
4303	cirrus	26
4304	concorde	26
4305	conquest	26
4306	cordoba	26
4307	crossfire	26
4308	fifth avenue	26
4309	imperial	26
4310	intrepid	26
4311	lhs	26
4312	lebaron	26
4313	new yorker	26
4314	newport	26
4315	pt cruiser	26
4316	pacifica	26
4317	sebring	26
4318	tc	26
4319	town & country	26
4320	ax	27
4321	bx	27
4322	berlingo	27
4323	c1	27
4324	c2	27
4325	c3	27
4326	c3 aircross	27
4327	c3 picasso	27
4328	c3 pluriel	27
4329	c3 xr	27
4330	c4	27
4331	c4 aicross	27
4332	c4 cactus	27
4333	c4 picasso	27
4334	c5	27
4335	c5 aircross	27
4336	c6	27
4337	c8	27
4338	c crosser	27
4339	c elysee	27
4340	c quatre	27
4341	c triomphe	27
4342	ds3	27
4343	ds4	27
4344	ds5	27
4345	ds7	27
4346	evasion	27
4347	jumper	27
4348	jumpy	27
4349	mehari	27
4350	nemo	27
4351	saxo	27
4352	space tourer	27
4353	xantia	27
4354	xsara	27
4355	xsara picasso	27
4356	dokker	28
4357	lodgy	28
4358	logan	28
4359	shuttle	29
4360	smoothing	29
4361	espero	30
4362	gentra	30
4363	lanos	30
4364	lanos pickup	30
4365	leganza	30
4366	matiz	30
4367	nexia	30
4368	nubira	30
4369	tacuma	30
4370	tico	30
4371	45	31
4372	cf	31
4373	xf	31
4374	applause	32
4375	cuore	32
4376	feroza	32
4377	materia	32
4378	rocky	32
4379	sirion	32
4380	terios	32
4381	yrv	32
4382	b210	33
4383	z	33
4384	aspen	34
4385	avenger	34
4386	caliber	34
4387	challenger	34
4388	charger	34
4389	colt	34
4390	d100	34
4391	dakota	34
4392	dart	34
4393	dart pf	34
4394	daytona	34
4395	durango	34
4396	dynasty	34
4397	grand caravan	34
4398	journey	34
4399	magnum	34
4400	neon	34
4401	nitro	34
4402	ram	34
4403	ramcharger	34
4404	shadow	34
4405	spirit	34
4406	viper	34
4407	fengdu mx6	35
4408	fengshen ax7	35
4409	fengxing jingyi	35
4410	k02	35
4411	a079.52	36
4412	a08129	36
4413	v2	37
4414	v5	37
4415	208	38
4416	360	38
4417	456	38
4418	458	38
4419	488	38
4420	599	38
4421	812	38
4422	california	38
4423	dino	38
4424	f430	38
4425	gtc4lusso	38
4426	mondial	38
4427	portofino	38
4428	testarosa	38
4429	testarossa	38
4430	125	39
4431	126	39
4432	131	39
4433	132	39
4434	500l	39
4435	500x	39
4436	500	39
4437	albea	39
4438	brava	39
4439	bravo	39
4440	cinquecento	39
4441	coupe	39
4442	croma	39
4443	doblo	39
4444	ducato	39
4445	fiorino	39
4446	fullback	39
4447	idea	39
4448	linea	39
4449	marea	39
4450	multipla	39
4451	palio	39
4452	panda	39
4453	punto	39
4454	qubo	39
4455	scudo	39
4456	sedici	39
4457	seicento	39
4458	siena	39
4459	stilo	39
4460	talento	39
4461	tipo	39
4462	tipo new	39
4463	ulysse	39
4464	uno	39
4465	viaggio	39
4466	x1 9	39
4467	aerostar	40
4468	aspire	40
4469	b max	40
4470	bronco	40
4471	c max	40
4472	club wagon	40
4473	contour	40
4474	cougar	40
4475	courier	40
4476	crown victoria	40
4477	ecosport	40
4478	edge	40
4479	escape	40
4480	escort	40
4481	excursion	40
4482	expedition	40
4483	f series	40
4484	festiva	40
4485	fiesta	40
4486	flex	40
4487	focus	40
4488	fusion	40
4489	galaxy	40
4490	granada	40
4491	grand torino	40
4492	ka	40
4493	kuga	40
4494	ltd	40
4495	maverick	40
4496	mondeo	40
4497	mustang	40
4498	pinto	40
4499	probe	40
4500	puma	40
4501	ranchero	40
4502	ranger	40
4503	ranger int	40
4504	s max	40
4505	scorpio	40
4506	sierra	40
4507	super duty	40
4508	taurus	40
4509	taurus x	40
4510	tempo	40
4511	thunderbird	40
4512	tourneo connect	40
4513	tourneo custom	40
4514	transit	40
4515	transit connect	40
4516	transit custom	40
4517	windstar	40
4518	acadia	44
4519	c series	44
4520	caballero	44
4521	canyon	44
4522	envoy	44
4523	k series	44
4524	safari	44
4525	savana	44
4526	sonoma	44
4527	terrain	44
4528	topkick	44
4529	21	41
4530	24	41
4531	31105	41
4532	3110	41
4533	3309	41
4534	51	41
4535	53	41
4536	69	41
4537	chaika 13	41
4538	gazelle	41
4539	m20	41
4540	next	42
4541	ck	43
4542	emgrand	43
4543	emgrand ec8	43
4544	emgrand gs	43
4545	emgrand x7	43
4546	englon sc6	43
4547	fc	43
4548	fleagle	43
4549	mk	43
4550	sl	43
4551	yuanjing	43
4552	yuanjing suv	43
4553	yuanjing x6	43
4554	deer	45
4555	h8	45
4556	haval h1	45
4557	haval h2s	45
4558	haval h2	45
4559	haval h3	45
4560	haval h6	45
4561	haval h9	45
4562	haval m4	45
4563	safe	45
4564	voleex c30	45
4565	voleex c50	45
4566	wingle 5	45
4567	wingle 6	45
4568	commodore	46
4569	accord	47
4570	avancier	47
4571	cr v	47
4572	cr z	47
4573	civic	47
4574	concerto	47
4575	crider	47
4576	crosstour	47
4577	crx	47
4578	element	47
4579	elysion	47
4580	fr v	47
4581	hr v	47
4582	insight	47
4583	jazz	47
4584	logo	47
4585	odyssey	47
4586	passport	47
4587	pilot	47
4588	prelude	47
4589	ridgeline	47
4590	s2000	47
4591	stepwgn	47
4592	stream	47
4593	xrv	47
4594	h1	48
4595	h2	48
4596	h3	48
4597	accent	49
4598	atos	49
4599	creta	49
4600	elantra	49
4601	elantra 4	49
4602	entourage	49
4603	equus	49
4604	genesis	49
4605	getz	49
4606	grandeur	49
4607	h100	49
4608	hd120	49
4609	i10	49
4610	i20	49
4611	i30	49
4612	i40	49
4613	ioniq	49
4614	ix20	49
4615	kona	49
4616	matrix	49
4617	monica	49
4618	santa fe	49
4619	sonata	49
4620	sonata 5	49
4621	terracan	49
4622	trajet	49
4623	tucson	49
4624	universe	49
4625	veloster	49
4626	veracruz	49
4627	samand lx	50
4628	ex25	51
4629	fx	51
4630	i35	51
4631	j30	51
4632	m	51
4633	q30	51
4634	q45	51
4635	q50	51
4636	q60	51
4637	q70	51
4638	qx30	51
4639	qx4	51
4640	qx50	51
4641	qx60	51
4642	qx80	51
4643	ab230	52
4644	ascender	52
4645	ataman	52
4646	axiom	52
4647	d max	52
4648	hombre pickup	52
4649	mu	52
4650	rodeo	52
4651	trooper	52
4652	vehicross	52
4653	daily	53
4654	stralis	53
4655	trakker	53
4656	2125	54
4657	2126	54
4658	27175	54
4659	2717	54
4660	j2	55
4661	j4	55
4662	j5	55
4663	refine m5	55
4664	refine s2	55
4665	s3	55
4666	t8	55
4667	e pace	56
4668	f pace	56
4669	f type	56
4670	i pace	56
4671	s type	56
4672	xf type	56
4673	x type	56
4674	xe	56
4675	xj	56
4676	xjs	56
4677	xkr	56
4678	5cx	123
4679	cherokee	57
4680	cj7	57
4681	comanche	57
4682	commander	57
4683	compass	57
4684	dj5	57
4685	grand cherokee	57
4686	grand wagoneer	57
4687	j8	57
4688	liberty	57
4689	patriot	57
4690	pickup	57
4691	renegade	57
4692	scrambler	57
4693	wrangler	57
4694	4308	58
4695	5320	58
4696	5460	58
4697	55111	58
4698	cadenza	59
4699	carens	59
4700	carnival	59
4701	ceed	59
4702	cerato	59
4703	kx3	59
4704	koup	59
4705	mohave	59
4706	niro	59
4707	opirus	59
4708	optima	59
4709	picanto	59
4710	rio	59
4711	sedona	59
4712	sephia	59
4713	sorento	59
4714	soul	59
4715	sportage	59
4716	stinger	59
4717	stonic	59
4718	venga	59
4719	agera	60
4720	65055	61
4721	6510	61
4722	2101	62
4723	2102	62
4724	2103	62
4725	2104	62
4726	2105	62
4727	2106	62
4728	2107	62
4729	2108	62
4730	21099	62
4731	2109	62
4732	2110	62
4733	2111	62
4734	2112	62
4735	2113	62
4736	2114	62
4737	2115	62
4738	2171	62
4739	granta	62
4740	kalina	62
4741	largus	62
4742	oka	62
4743	priora	62
4744	vesta	62
4745	xray	62
4746	aventador	63
4747	gallardo	63
4748	huracan	63
4749	urus	63
4750	delta	64
4751	kappa	64
4752	lybra	64
4753	musa	64
4754	phedra	64
4755	thema	64
4756	thesis	64
4757	ypsilon	64
4758	defender	65
4759	discovery	65
4760	evoque	65
4761	freelander	65
4762	range rover	65
4763	ct	66
4764	es	66
4765	gs	66
4766	gx	66
4767	is	66
4768	lc	66
4769	ls	66
4770	lx	66
4771	nx	66
4772	rc	66
4773	rx	66
4774	sc	66
4775	ux	66
4776	breez	67
4777	solano	67
4778	x60	67
4779	xuanlang	67
4780	j50	68
4781	x too	68
4782	aviator	69
4783	blackwood	69
4784	continental	69
4785	mark	69
4786	mark lt	69
4787	mkc	69
4788	mks	69
4789	mkt	69
4790	mkx	69
4791	mkz	69
4792	navigator	69
4793	towncar	69
4794	elise	70
4795	esprit	70
4796	evora	70
4797	969	71
4798	m90	72
4799	tgx	72
4800	tgs	72
4801	ghibli	73
4802	gran turismo	73
4803	gransport	73
4804	levante	73
4805	quattroporte	73
4806	57	74
4807	62	74
4808	206069	75
4809	5336	75
4810	551633	75
4811	5549	75
4812	5551	75
4813	323f	76
4814	323	76
4815	626	76
4816	929	76
4817	b	76
4818	bongo	76
4819	cx 30	76
4820	cx 3	76
4821	cx 5	76
4822	cx 7	76
4823	cx 9	76
4824	lantis	76
4825	mx 5	76
4826	mpv	76
4827	mx3	76
4828	mx6	76
4829	navajo	76
4830	rx8	76
4831	rx7	76
4832	tribute	76
4833	xedos 6	76
4834	250	77
4835	a	77
4836	actros	77
4837	atego	77
4838	axor 3236	77
4839	cla	77
4840	clk	77
4841	cls	77
4842	c	77
4843	citan	77
4844	e	77
4845	gla	77
4846	glb	77
4847	glc	77
4848	gle	77
4849	glk	77
4850	gls	77
4851	gl	77
4852	mb100	77
4853	ml	77
4854	o309	77
4855	r	77
4856	s	77
4857	s coupe	77
4858	slk	77
4859	slr	77
4860	sprinter	77
4861	t1	77
4862	vaneo	77
4863	vito	77
4864	w123	77
4865	w201	77
4866	x	77
4867	capri	78
4868	grandmarquis	78
4869	marauder revival	78
4870	mariner	78
4871	milan	78
4872	montego	78
4873	monterey	78
4874	mountaineer	78
4875	sable	78
4876	topaz	78
4877	tracer	78
4878	villager	78
4879	zr	79
4880	clubman	80
4881	cooper	80
4882	countryman	80
4883	paceman	80
4884	3000gt	81
4885	asx	81
4886	carisma	81
4887	chariot	81
4888	delica	81
4889	diamante	81
4890	eclipse	81
4891	eclipse cross	81
4892	endeavor	81
4893	gto	81
4894	galant	81
4895	grandis	81
4896	i miev	81
4897	l200	81
4898	l300	81
4899	lancer	81
4900	mighty max	81
4901	mirage	81
4902	outlander	81
4903	pajero	81
4904	pajero pinin	81
4905	pajero sport	81
4906	raider	81
4907	space star	81
4908	starion	81
4909	412	82
4910	2141	83
4911	megaliner	84
4912	starliner	84
4913	240sx	85
4914	300zx	85
4915	350z	85
4916	370z	85
4917	720	85
4918	almera	85
4919	almera classic	85
4920	altima	85
4921	armada	85
4922	bluebird	85
4923	cube	85
4924	fairlady z	85
4925	frontier	85
4926	gt r	85
4927	juke	85
4928	latio	85
4929	leaf	85
4930	livina	85
4931	maxima	85
4932	micra	85
4933	murano	85
4934	np300	85
4935	nv200	85
4936	nv400	85
4937	navara	85
4938	note	85
4939	pathfinder	85
4940	patrol	85
4941	pino	85
4942	pixo	85
4943	presage	85
4944	primera	85
4945	qashqai	85
4946	quest	85
4947	rogue	85
4948	sentra	85
4949	stanza	85
4950	sunny	85
4951	sylphy	85
4952	teana	85
4953	terrano	85
4954	tiida	85
4955	tino	85
4956	titan	85
4957	vanette	85
4958	x trail	85
4959	xterra	85
4960	achieva	86
4961	alero	86
4962	aurora	86
4963	bravada	86
4964	cutlass	86
4965	eightyeight	86
4966	intrigue	86
4967	ninetyeight	86
4968	omega	86
4969	silhouette	86
4970	toronado	86
4971	adam	87
4972	agila	87
4973	ampera	87
4974	antara	87
4975	ascona	87
4976	astra	87
4977	calibra	87
4978	combo	87
4979	corsa	87
4980	crossland	87
4981	frontera	87
4982	grandland x	87
4983	insignia	87
4984	kadett	87
4985	karl	87
4986	meriva	87
4987	mokka	87
4988	movano	87
4989	signum	87
4990	sintra	87
4991	tigra	87
4992	vectra	87
4993	vivaro	87
4994	zafira	87
4995	3205	88
4996	1007	89
4997	106	89
4998	107	89
4999	108	89
5000	2008	89
5001	205	89
5002	206	89
5003	207	89
5004	3008	89
5005	301	89
5006	304	89
5007	306	89
5008	307	89
5009	308	89
5010	309	89
5011	4007	89
5012	4008	89
5013	405	89
5014	406	89
5015	407	89
5016	408	89
5017	5008	89
5018	508	89
5019	605	89
5020	607	89
5021	806	89
5022	807	89
5023	bipper	89
5024	boxer	89
5025	expert	89
5026	ion	89
5027	partner	89
5028	rcz	89
5029	rifter	89
5030	traveller	89
5031	acclaim	90
5032	barracuda	90
5033	breeze	90
5034	horizon	90
5035	prowler	90
5036	reliant	90
5037	roadrunner	90
5038	satellite	90
5039	sundance	90
5040	tailduster	90
5041	valiant	90
5042	volare	90
5043	slingshot	91
5044	1.5	92
5045	caro	92
5046	aztek	93
5047	bonneville	93
5048	catalina	93
5049	fiero	93
5050	firebird	93
5051	g39	93
5052	g6	93
5053	g8	93
5054	grand prix	93
5055	grandam	93
5056	grandville	93
5057	lemans	93
5058	montana	93
5059	parisienne	93
5060	pursuit	93
5061	solstice	93
5062	sunbird	93
5063	sunfire	93
5064	torrent	93
5065	transam	93
5066	vibe	93
5067	356	94
5068	718	94
5069	911	94
5070	912	94
5071	914	94
5072	944	94
5073	991	94
5074	992	94
5075	993	94
5076	996	94
5077	997	94
5078	boxster	94
5079	cayenne	94
5080	cayman	94
5081	macan	94
5082	panamera	94
5083	r2	96
5084	r4	96
5085	11	97
5086	18	97
5087	19	97
5088	25	97
5089	avantime	97
5090	captur	97
5091	clio	97
5092	duster	97
5093	espace	97
5094	fluence	97
5095	kadjar	97
5096	kangoo	97
5097	kerax	97
5098	koleos	97
5099	laguna	97
5100	latitude	97
5101	master	97
5102	megane	97
5103	midliner	97
5104	modus	97
5105	premium	97
5106	safrane	97
5107	sandero	97
5108	scenic	97
5109	symbol	97
5110	talisman	97
5111	trafic	97
5112	twingo	97
5113	twizy	97
5114	vel satis	97
5115	zoe	97
5116	350	98
5117	550	98
5118	750	98
5119	rx5	98
5120	corniche	99
5121	phantom	99
5122	silver shadow	99
5123	wraith	99
5124	400	100
5125	600	100
5126	800	100
5127	9000	101
5128	900	101
5129	9 3	101
5130	9 5	101
5131	9 7	101
5132	aura	102
5133	l series	102
5134	outlook	102
5135	relay	102
5136	sky	102
5137	r410	103
5138	frs	104
5139	iq	104
5140	alhambra	105
5141	altea	105
5142	arona	105
5143	arosa	105
5144	ateca	105
5145	exeo	105
5146	ibiza	105
5147	leon	105
5148	mii	105
5149	tarraco	105
5150	toledo	105
5151	citigo	106
5152	fabia	106
5153	favorit	106
5154	felicia	106
5155	kamiq	106
5156	karoq	106
5157	kodiaq	106
5158	octavia	106
5159	rapid	106
5160	roomster	106
5161	scala	106
5162	superb	106
5163	yeti	106
5164	forfour	107
5165	fortwo	107
5166	roadster	107
5167	urbinos	108
5168	actyon	109
5169	korando	109
5170	kyron	109
5171	musso	109
5172	rexton	109
5173	rodius	109
5174	tivoli	109
5175	baja	110
5176	brz	110
5177	forester	110
5178	impreza	110
5179	justy	110
5180	legacy	110
5181	levorg	110
5182	outback	110
5183	svx	110
5184	tribeca	110
5185	xv	110
5186	alto	111
5187	baleno	111
5188	celerio	111
5189	ignis	111
5190	jimny	111
5191	kizashi	111
5192	liana	111
5193	sx4	111
5194	splash	111
5195	swift	111
5196	vitara	111
5197	wagon r	111
5198	x90	111
5199	xl7	111
5200	indica	112
5201	1102	113
5202	1105	113
5203	slavuta	113
5204	model 3	114
5205	model s	114
5206	model x	114
5207	4runner	115
5208	aqua	115
5209	aurion	115
5210	auris	115
5211	avalon	115
5212	avensis	115
5213	aygo	115
5214	c hr	115
5215	camry	115
5216	carina	115
5217	celica	115
5218	chaser	115
5219	corolla	115
5220	cressida	115
5221	crown	115
5222	echo	115
5223	estima	115
5224	fj cruiser	115
5225	fj40	115
5226	fortuner	115
5227	gt86	115
5228	hiace	115
5229	highlander	115
5230	hilux	115
5231	innova	115
5232	ipsum	115
5233	land cruiser	115
5234	land cruiser prado	115
5235	mr2	115
5236	paseo	115
5237	previa	115
5238	prius	115
5239	prius c	115
5240	proace	115
5241	rav 4	115
5242	sequoia	115
5243	sienna	115
5244	solara	115
5245	supra	115
5246	tacoma	115
5247	tundra	115
5248	urban cruiser	115
5249	venza	115
5250	verso	115
5251	verso s	115
5252	yaris	115
5253	yaris verso	115
5254	belarus	124
5255	gt6	116
5256	spitfire	116
5257	452	117
5258	469	117
5259	hunter	117
5260	amarok	120
5261	arteon	120
5262	atlas	120
5263	beetle	120
5264	bora	120
5265	cc	120
5266	caddy	120
5267	corrado	120
5268	crafter	120
5269	eos	120
5270	fox	120
5271	gol	120
5272	golf	120
5273	golf plus	120
5274	golf sv	120
5275	gran lavida	120
5276	iltis	120
5277	jetta	120
5278	lt	120
5279	lamando	120
5280	lavida	120
5281	lupo	120
5282	new beetle	120
5283	passat	120
5284	phaeton	120
5285	polo	120
5286	routan	120
5287	santana	120
5288	scirocco	120
5289	sharan	120
5290	squareback	120
5291	t cross	120
5292	t roc	120
5293	the beetle	120
5294	tiguan	120
5295	touareg	120
5296	touran	120
5297	transporter	120
5298	up	120
5299	vento	120
5300	t9	118
5301	140	119
5302	260	119
5303	440	119
5304	460	119
5305	740	119
5306	760	119
5307	850	119
5308	940	119
5309	960	119
5310	b12	119
5311	c30	119
5312	c70	119
5313	fm	119
5314	s40	119
5315	s60	119
5316	s70	119
5317	s80	119
5318	s90	119
5319	v40	119
5320	v50	119
5321	v60	119
5322	v70	119
5323	v90	119
5324	xc40	119
5325	xc60	119
5326	xc90	119
5327	353	121
5328	forza	122
5329	i van	122
5330	sw2	102
5331	vue	102
5332	xa	104
5333	xb	104
5334	xd	104
5335	equator	111
5336	esteem	111
5337	samurai	111
5338	sidekick	111
5339	verona	111
5340	starlet	115
5341	t100	115
5342	tercel	115
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
\.


--
-- Data for Name: c_s_app_resultdeepstream; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.c_s_app_resultdeepstream (id, "timestamp", car_number, car_probability, car_photo, camera_id, request_id, car_video, color_probability, car_color_id, car_obj_id) FROM stdin;
277	2020-03-17 11:00:02+01	CB6108BT	86	images/4.png	7	51	videos/0_03.mp4	52	2	2630
278	2020-03-17 11:00:02+01	BA7779BE	87	images/4.png	7	51	videos/0_03.mp4	53	3	2650
280	2020-03-17 11:00:03+01	AA1834HX	89	images/4.png	7	51	videos/0_03.mp4	55	5	2690
281	2020-03-17 11:00:03+01	AA8369CH	90	images/4.png	7	51	videos/0_03.mp4	56	6	2710
282	2020-03-17 11:00:03+01	AI8628EB	91	images/4.png	7	51	videos/0_03.mp4	57	10	2730
283	2020-03-17 11:00:03+01	AI0578PC	92	images/4.png	7	51	videos/0_03.mp4	58	11	2750
284	2020-03-17 11:00:04+01	AA4864OO	93	images/4.png	7	51	videos/0_03.mp4	59	13	2770
285	2020-03-17 11:00:06+01	AA5762EM	94	images/4.png	7	51	videos/0_03.mp4	60	14	2790
286	2020-03-17 11:00:06+01	MGM 27752	95	images/4.png	7	51	videos/0_03.mp4	61	15	2810
287	2020-03-17 11:00:16+01	AI0732HM	96	images/4.png	7	51	videos/0_03.mp4	62	1	2830
288	2020-03-17 11:00:16+01	??0321KB	97	images/4.png	7	51	videos/0_03.mp4	63	2	2850
289	2020-03-17 11:00:17+01	AA7271OM	98	images/4.png	7	51	videos/0_03.mp4	64	3	2870
290	2020-03-17 11:00:17+01	AT7323ET	85	images/4.png	7	51	videos/0_03.mp4	65	4	2890
291	2020-03-17 11:00:18+01	DAV10	86	images/4.png	7	51	videos/0_03.mp4	66	5	2910
292	2020-03-17 11:00:18+01	CD 0886	87	images/4.png	7	51	videos/0_03.mp4	67	6	2930
293	2020-03-17 11:00:18+01	AI3747CO	88	images/4.png	7	51	videos/0_03.mp4	68	10	2950
294	2020-03-17 11:00:20+01	AA1234TX	89	images/4.png	7	51	videos/0_03.mp4	69	11	2970
295	2020-03-17 11:00:20+01	AA5498XB	90	images/4.png	7	51	videos/0_03.mp4	70	13	2990
296	2020-03-17 11:00:20+01	AI8650HE	91	images/4.png	7	51	videos/0_03.mp4	71	14	3010
297	2020-03-17 11:00:22+01	AA7434IT	92	images/4.png	7	51	videos/0_03.mp4	72	15	3030
298	2020-03-17 11:00:25+01	AE8250BM	93	images/4.png	7	51	videos/0_03.mp4	73	1	3050
299	2020-03-17 11:00:25+01	BA17?5AI	94	images/4.png	7	51	videos/0_03.mp4	74	2	3070
300	2020-03-17 11:00:25+01	BT5360AK	95	images/4.png	7	51	videos/0_03.mp4	75	3	3090
301	2020-03-17 11:00:27+01	AA4439PK	96	images/4.png	7	51	videos/0_03.mp4	76	4	3110
302	2020-03-17 11:00:28+01	BX8746CB	97	images/4.png	7	51	videos/0_03.mp4	77	5	3130
303	2020-03-17 11:00:30+01	BE2509AI	98	images/4.png	7	51	videos/0_03.mp4	78	6	3150
304	2020-03-17 11:00:32+01	AI2200BK	85	images/4.png	7	51	videos/0_03.mp4	79	10	3170
305	2020-03-17 11:00:32+01	AI3953HI	86	images/4.png	7	51	videos/0_03.mp4	80	11	3190
306	2020-03-17 11:00:35+01	AI0756HK	87	images/4.png	7	51	videos/0_03.mp4	81	13	3210
307	2020-03-17 11:00:35+01	AI2280A?	88	images/4.png	7	51	videos/0_03.mp4	82	14	3230
308	2020-03-17 11:00:43+01	A?????CB	89	images/4.png	7	51	videos/0_03.mp4	83	15	3250
309	2020-03-17 11:00:43+01	AA4958TM	90	images/4.png	7	51	videos/0_03.mp4	84	1	3270
311	2020-03-17 11:00:47+01	AA3307AA	92	images/4.png	7	51	videos/0_03.mp4	86	3	3310
312	2020-03-17 11:00:51+01	AI7497BO	93	images/4.png	7	51	videos/0_03.mp4	87	4	3330
313	2020-03-17 11:00:53+01	AA0507HE	94	images/4.png	7	51	videos/0_03.mp4	88	5	3350
314	2020-03-17 11:00:53+01	AA8910HC	95	images/4.png	7	51	videos/0_03.mp4	89	6	3370
315	2020-03-17 11:00:55+01	AI1763CI	96	images/4.png	7	51	videos/0_03.mp4	90	10	3390
316	2020-03-17 11:00:55+01	AA1027PO	97	images/4.png	7	51	videos/0_03.mp4	91	11	3410
317	2020-03-17 11:00:55+01	AI2404BI	98	images/4.png	7	51	videos/0_03.mp4	92	13	3450
318	2020-03-17 11:00:56+01	AH5?86EA	85	images/4.png	7	51	videos/0_03.mp4	93	14	3500
319	2020-03-17 11:00:58+01	BB9990AP	86	images/4.png	7	51	videos/0_03.mp4	94	15	3550
320	2020-03-17 11:00:59+01	????????	87	images/4.png	7	51	videos/0_03.mp4	95	1	3600
321	2020-03-17 11:01:00+01	BI1623EB	88	images/4.png	7	51	videos/0_03.mp4	96	2	3650
322	2020-03-17 11:01:00+01	AA4619OI	89	images/4.png	7	51	videos/0_03.mp4	97	3	3700
323	2020-03-17 11:01:03+01	AA9369EO	90	images/4.png	7	51	videos/0_03.mp4	62	4	3750
324	2020-03-17 11:01:06+01	AI5745EB	91	images/4.png	7	51	videos/0_03.mp4	63	5	3800
325	2020-03-17 11:01:07+01	AI8561EC	92	images/4.png	7	51	videos/0_03.mp4	64	6	3850
326	2020-03-17 11:01:07+01	AI??41EB	93	images/4.png	7	51	videos/0_03.mp4	65	10	3900
327	2020-03-17 11:01:11+01	AA??82MH	94	images/4.png	7	51	videos/0_03.mp4	66	11	3950
328	2020-03-17 11:01:11+01	BA2977CA	95	images/4.png	7	51	videos/0_03.mp4	67	13	4000
329	2020-03-17 11:01:11+01	EH0861EE	96	images/4.png	7	51	videos/0_03.mp4	68	14	4050
330	2020-03-17 11:01:11+01	AX0022EP	97	images/4.png	7	51	videos/0_03.mp4	69	15	4100
331	2020-03-17 11:01:13+01	AI9066IK	98	images/4.png	7	51	videos/0_03.mp4	70	1	4150
332	2020-03-17 11:01:15+01	AI5448BH	85	images/4.png	7	51	videos/0_03.mp4	71	2	4200
333	2020-03-17 11:01:15+01	LAT 972	86	images/4.png	7	51	videos/0_03.mp4	72	3	4250
334	2020-03-17 11:01:17+01	BB?5??CM	87	images/4.png	7	51	videos/0_03.mp4	73	4	4300
335	2020-03-17 11:01:19+01	CB5540CA	88	images/4.png	7	51	videos/0_03.mp4	74	5	4350
336	2020-03-17 11:01:20+01	AI9753HC	89	images/4.png	7	51	videos/0_03.mp4	75	6	4400
337	2020-03-17 11:01:20+01	AE7735KT	90	images/4.png	7	51	videos/0_03.mp4	76	10	4450
338	2020-03-17 11:01:21+01	BK1756CA	91	images/4.png	7	51	videos/0_03.mp4	77	11	4500
339	2020-03-17 11:01:24+01	AA7413TO	92	images/4.png	7	51	videos/0_03.mp4	78	13	4550
340	2020-03-17 11:01:24+01	AI4747CH	93	images/4.png	7	51	videos/0_03.mp4	79	14	4600
405	2020-03-17 11:03:14+01	AA9600PO	88	images/4.png	7	51	videos/0_03.mp4	88	13	3655
406	2020-03-17 11:03:14+01	AA1141IX	89	images/4.png	7	51	videos/0_03.mp4	89	14	3755
407	2020-03-17 11:03:14+01	AH8778BO	90	images/4.png	7	51	videos/0_03.mp4	79	15	3855
344	2020-03-17 11:01:33+01	AA5740PT	97	images/4.png	7	51	videos/0_03.mp4	83	3	4800
345	2020-03-17 11:01:35+01	AA0770PA	98	images/4.png	7	51	videos/0_03.mp4	84	4	4850
346	2020-03-17 11:01:38+01	AI3482??	85	images/4.png	7	51	videos/0_03.mp4	85	5	4900
347	2020-03-17 11:01:43+01	GER 04037	86	images/4.png	7	51	videos/0_03.mp4	86	6	4950
348	2020-03-17 11:01:43+01	AI7221CE	87	images/4.png	7	51	videos/0_03.mp4	87	10	5000
349	2020-03-17 11:01:45+01	AI6641IB	88	images/4.png	7	51	videos/0_03.mp4	88	11	5050
350	2020-03-17 11:01:47+01	AA5999EH	89	images/4.png	7	51	videos/0_03.mp4	89	13	5100
351	2020-03-17 11:01:49+01	AI8334HT	90	images/4.png	7	51	videos/0_03.mp4	62	14	3111
352	2020-03-17 11:01:51+01	AA1547CI	91	images/4.png	7	51	videos/0_03.mp4	63	15	4111
353	2020-03-17 11:01:51+01	BA8278BA	92	images/4.png	7	51	videos/0_03.mp4	64	1	5111
354	2020-03-17 11:01:51+01	AA0359CH	93	images/4.png	7	51	videos/0_03.mp4	65	2	2711
355	2020-03-17 11:01:54+01	AA1234IX	94	images/4.png	7	51	videos/0_03.mp4	66	3	2811
356	2020-03-17 11:01:54+01	AI5??6IH	95	images/4.png	7	51	videos/0_03.mp4	67	4	2911
357	2020-03-17 11:01:55+01	CA4184BE	96	images/4.png	7	51	videos/0_03.mp4	68	5	3011
358	2020-03-17 11:01:55+01	AA3304MP	97	images/4.png	7	51	videos/0_03.mp4	69	6	3211
359	2020-03-17 11:01:58+01	AA7482MT	98	images/4.png	7	51	videos/0_03.mp4	70	10	3311
360	2020-03-17 11:02:00+01	AE6505EX	85	images/4.png	7	51	videos/0_03.mp4	71	11	3411
361	2020-03-17 11:02:01+01	AI??4?ET	86	images/4.png	7	51	videos/0_03.mp4	72	13	3511
362	2020-03-17 11:02:04+01	AA8526TA	87	images/4.png	7	51	videos/0_03.mp4	73	14	3611
363	2020-03-17 11:02:06+01	AI0010CK	88	images/4.png	7	51	videos/0_03.mp4	74	15	3711
364	2020-03-17 11:02:08+01	AA4331XX	89	images/4.png	7	51	videos/0_03.mp4	75	1	3811
365	2020-03-17 11:02:08+01	AX7000KI	90	images/4.png	7	51	videos/0_03.mp4	76	2	3911
367	2020-03-17 11:02:10+01	AI2?1??	92	images/4.png	7	51	videos/0_03.mp4	78	4	4211
368	2020-03-17 11:02:13+01	AA3915XH	93	images/4.png	7	51	videos/0_03.mp4	79	5	4311
369	2020-03-17 11:02:13+01	312-37KC	94	images/4.png	7	51	videos/0_03.mp4	80	6	4411
370	2020-03-17 11:02:21+01	AA1413KI	95	images/4.png	7	51	videos/0_03.mp4	81	10	4511
371	2020-03-17 11:02:28+01	AA7083XH	96	images/4.png	7	51	videos/0_03.mp4	82	11	4611
372	2020-03-17 11:02:28+01	AE2737AB	97	images/4.png	7	51	videos/0_03.mp4	83	13	4711
373	2020-03-17 11:02:31+01	AA7017IK	98	images/4.png	7	51	videos/0_03.mp4	84	14	4811
374	2020-03-17 11:02:31+01	AI3997ET	85	images/4.png	7	51	videos/0_03.mp4	85	15	4911
375	2020-03-17 11:02:31+01	AI5573IT	86	images/4.png	7	51	videos/0_03.mp4	86	1	5011
376	2020-03-17 11:02:34+01	AA3524XA	87	images/4.png	7	51	videos/0_03.mp4	87	2	5115
377	2020-03-17 11:02:34+01	AA4257BT	88	images/4.png	7	51	videos/0_03.mp4	88	3	3333
378	2020-03-17 11:02:34+01	AA3885XB	89	images/4.png	7	51	videos/0_03.mp4	89	4	4444
379	2020-03-17 11:02:34+01	AA9??0TA	90	images/4.png	7	51	videos/0_03.mp4	62	5	2717
380	2020-03-17 11:02:42+01	AH1557IX	91	images/4.png	7	51	videos/0_03.mp4	63	6	2817
381	2020-03-17 11:02:42+01	AI9979BB	92	images/4.png	7	51	videos/0_03.mp4	64	10	2917
382	2020-03-17 11:02:44+01	AI8880BO	93	images/4.png	7	51	videos/0_03.mp4	65	11	3017
383	2020-03-17 11:02:45+01	AA9756XX	94	images/4.png	7	51	videos/0_03.mp4	66	13	3117
384	2020-03-17 11:02:46+01	AA7224BI	95	images/4.png	7	51	videos/0_03.mp4	67	14	3217
385	2020-03-17 11:02:48+01	BB3004EA	96	images/4.png	7	51	videos/0_03.mp4	68	15	3317
386	2020-03-17 11:02:50+01	AA????OI	97	images/4.png	7	51	videos/0_03.mp4	69	1	3417
387	2020-03-17 11:02:50+01	AA6823KK	98	images/4.png	7	51	videos/0_03.mp4	70	2	3517
388	2020-03-17 11:02:53+01	AE2448KX	85	images/4.png	7	51	videos/0_03.mp4	71	3	3617
389	2020-03-17 11:02:53+01	AA1547XM	86	images/4.png	7	51	videos/0_03.mp4	72	4	3717
390	2020-03-17 11:02:55+01	AI0888IC	87	images/4.png	7	51	videos/0_03.mp4	73	5	3817
391	2020-03-17 11:02:56+01	AH2214AE	88	images/4.png	7	51	videos/0_03.mp4	74	6	3917
392	2020-03-17 11:02:56+01	AA7009TX	89	images/4.png	7	51	videos/0_03.mp4	75	10	4017
393	2020-03-17 11:02:59+01	AI????CO	90	images/4.png	7	51	videos/0_03.mp4	76	11	4117
394	2020-03-17 11:02:59+01	EGZ 795	91	images/4.png	7	51	videos/0_03.mp4	77	13	4217
395	2020-03-17 11:02:59+01	AI7557CO	92	images/4.png	7	51	videos/0_03.mp4	78	14	4317
396	2020-03-17 11:02:59+01	AT9198HO	93	images/4.png	7	51	videos/0_03.mp4	79	15	4417
398	2020-03-17 11:03:00+01	CB8448BH	95	images/4.png	7	51	videos/0_03.mp4	81	2	4617
399	2020-03-17 11:03:00+01	BH7475IT	96	images/4.png	7	51	videos/0_03.mp4	82	3	4717
400	2020-03-17 11:03:04+01	AI9135CB	97	images/4.png	7	51	videos/0_03.mp4	83	4	4817
401	2020-03-17 11:03:08+01	AA9595TP	98	images/4.png	7	51	videos/0_03.mp4	84	5	4917
402	2020-03-17 11:03:08+01	AA2735XH	85	images/4.png	7	51	videos/0_03.mp4	85	6	5017
403	2020-03-17 11:03:10+01	AX4271HM	86	images/4.png	7	51	videos/0_03.mp4	86	10	5117
404	2020-03-17 11:03:10+01	AI3722EM	87	images/4.png	7	51	videos/0_03.mp4	87	11	3555
341	2020-03-17 11:01:25+01	AP6952CI	94	images/4.png	7	51	videos/0_03.mp4	80	15	4650
342	2020-03-17 11:01:31+01	AI7770CB	95	images/4.png	7	51	videos/0_03.mp4	81	1	4700
343	2020-03-17 11:01:33+01	AA5032EI	96	images/4.png	7	51	videos/0_03.mp4	82	2	4750
366	2020-03-17 11:02:08+01	AA9306MB	91	images/4.png	7	51	videos/0_03.mp4	77	3	4011
408	2020-03-17 11:03:16+01	AI3971EA	91	images/4.png	7	51	videos/0_03.mp4	80	1	3955
397	2020-03-17 11:03:00+01	AI????BH	94	images/4.png	7	51	videos/0_03.mp4	80	1	4517
409	2020-03-17 11:03:16+01	AA9279XE	92	images/4.png	7	51	videos/0_03.mp4	81	2	4055
410	2020-03-17 11:03:17+01	AA0027RF	93	images/4.png	7	51	videos/0_03.mp4	82	3	4155
480	2020-03-30 18:00:03+02	\N	\N	images/41.PNG\n	10	74	videos/0_10.MOV\n	\N	2	3125
481	2020-03-30 18:00:03+02	\N	\N	images/67.PNG\n	10	74	videos/0_10.MOV\n	\N	14	4433
482	2020-03-30 18:00:05+02	\N	\N	images/62.PNG\n	10	74	videos/0_10.MOV\n	\N	3	4629
492	2020-03-30 18:00:41+02	\N	\N	images/269.PNG\n	10	74	videos/30_40.MOV\n	\N	14	2990
496	2020-03-30 18:00:45+02	\N	\N	images/335.PNG\n	10	74	videos/30_40.MOV\n	\N	1	4572
497	2020-03-30 18:00:46+02	\N	\N	images/339.PNG\n	10	74	videos/30_40.MOV\n	\N	14	4084
500	2020-03-30 18:00:50+02	\N	\N	images/416.PNG\n	10	74	videos/40_50.MOV\n	\N	2	4009
503	2020-03-30 18:01:02+02	\N	\N	images/478.PNG\n	10	74	videos/01.00_01.10.MOV\n	\N	14	4386
515	2020-03-30 18:01:26+02	\N	\N	images/581.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	14	\N
488	2020-03-30 18:00:16+02	\N	\N	images/139.PNG\n	10	74	videos/10_20.MOV\n	\N	5	\N
489	2020-03-30 18:00:16+02	\N	\N	images/131.PNG\n	10	74	videos/10_20.MOV\n	\N	5	\N
490	2020-03-30 18:00:21+02	\N	\N	images/159.PNG\n	10	74	videos/10_20.MOV\n	\N	1	\N
491	2020-03-30 18:00:21+02	\N	\N	images/146.PNG\n	10	74	videos/20_30.MOV\n	\N	5	\N
506	2020-03-30 18:01:12+02	\N	\N	images/513.PNG\n	10	74	videos/01.10_01.20.MOV\n	\N	14	\N
507	2020-03-30 18:01:15+02	\N	\N	images/521.PNG\n	10	74	videos/01.10_01.20.MOV\n	\N	14	\N
508	2020-03-30 18:01:20+02	\N	\N	images/535.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	4	\N
509	2020-03-30 18:01:20+02	\N	\N	images/528.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	5	\N
479	2020-03-30 18:00:02+02	\N	\N	images/40.PNG\n	10	74	videos/0_10.MOV\n	\N	1	\N
510	2020-03-30 18:01:21+02	\N	\N	images/555.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	14	\N
511	2020-03-30 18:01:23+02	\N	\N	images/548.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	5	\N
276	2020-03-17 11:00:00+01	AA1071IE	85	images/4.png	7	51	videos/0_03.mp4	51	1	2617
516	2020-03-30 18:01:28+02	\N	\N	images/584.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	5	\N
279	2020-03-17 11:00:02+01	AB3?11CT	88	images/4.png	7	51	videos/0_03.mp4	54	4	2670
517	2020-03-30 18:01:30+02	\N	\N	images/601.PNG\n	10	74	videos/01.30_01.40.MOV\n	\N	14	\N
493	2020-03-30 18:00:42+02	\N	\N	images/284.PNG\n	10	74	videos/30_40.MOV\n	\N	1	\N
411	2020-03-17 11:03:18+01	AA9267??	94	images/4.png	7	51	videos/0_03.mp4	83	4	5120
494	2020-03-30 18:00:42+02	\N	\N	images/208.PNG\n	10	74	videos/30_40.MOV\n	\N	14	\N
310	2020-03-17 11:00:43+01	KOL PC?4	91	images/4.png	7	51	videos/0_03.mp4	85	2	3290
498	2020-03-30 18:00:46+02	\N	\N	images/361.PNG\n	10	74	videos/30_40.MOV\n	\N	6	\N
483	2020-03-30 18:00:05+02	\N	\N	images/92.PNG\n	10	74	videos/0_10.MOV\n	\N	14	\N
499	2020-03-30 18:00:46+02	\N	\N	images/349.PNG\n	10	74	videos/30_40.MOV\n	\N	5	\N
484	2020-03-30 18:00:11+02	\N	\N	images/114.PNG\n\n	10	74	videos/10_20.MOV\n	\N	14	\N
485	2020-03-30 18:00:11+02	\N	\N	images/88.PNG\n	10	74	videos/10_20.MOV\n	\N	1	\N
512	2020-03-30 18:01:24+02	\N	\N	images/558.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	5	\N
486	2020-03-30 18:00:12+02	\N	\N	images/121.PNG\n	10	74	videos/10_20.MOV\n	\N	14	\N
501	2020-03-30 18:00:50+02	\N	\N	images/414.PNG\n	10	74	videos/40_50.MOV\n	\N	14	\N
502	2020-03-30 18:00:54+02	\N	\N	images/437.PNG\n	10	74	videos/40_50.MOV\n	\N	5	\N
504	2020-03-30 18:01:09+02	\N	\N	images/501.PNG\n	10	74	videos/01.00_01.10.MOV\n	\N	14	\N
505	2020-03-30 18:01:09+02	\N	\N	images/507.PNG\n	10	74	videos/01.00_01.10.MOV\n	\N	5	\N
513	2020-03-30 18:01:25+02	\N	\N	images/566.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	5	\N
514	2020-03-30 18:01:26+02	\N	\N	images/574.PNG\n	10	74	videos/01.20_01.30.MOV\n	\N	14	\N
518	2020-03-30 18:01:30+02	\N	\N	images/602.PNG\n	10	74	videos/01.30_01.40.MOV\n	\N	14	\N
519	2020-03-30 18:01:35+02	\N	\N	images/605.PNG\n	10	74	videos/01.30_01.40.MOV\n	\N	14	\N
520	2020-03-30 18:01:35+02	\N	\N	images/624.PNG\n	10	74	videos/01.30_01.40.MOV\n	\N	3	\N
521	2020-03-30 18:01:35+02	\N	\N	images/638.PNG\n	10	74	videos/01.30_01.40.MOV\n	\N	5	\N
487	2020-03-30 18:00:15+02	\N	\N	images/124.PNG\n	10	74	videos/10_20.MOV\n	\N	4	\N
522	2020-03-30 18:01:43+02	\N	\N	images/651.PNG\n	10	74	videos/01.30_01.40.MOV\n	\N	14	\N
495	2020-03-30 18:00:44+02	\N	\N	images/297.PNG\n	10	74	videos/30_40.MOV\n	\N	14	\N
478	2020-03-30 18:00:02+02	\N	\N	images/1.PNG	10	74	videos/0_10.MOV\n	\N	14	\N
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

SELECT pg_catalog.setval('public.c_s_app_generation_id_seq1', 5120, true);


--
-- Name: c_s_app_mark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.c_s_app_mark_id_seq', 125, true);


--
-- Name: c_s_app_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.c_s_app_model_id_seq', 5342, true);


--
-- Name: c_s_app_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.c_s_app_request_id_seq', 85, true);


--
-- Name: c_s_app_requestcameraurl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.c_s_app_requestcameraurl_id_seq', 181, true);


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

